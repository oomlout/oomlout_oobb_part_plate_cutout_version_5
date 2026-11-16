"""Regression checks for catalogue safety, filtering and presentation contracts."""
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import yaml
import catalogue
import working_scad
import working_oomp_populate
import scad_help

class CatalogueTests(unittest.TestCase):
    def setUp(self):
        self.temporary=tempfile.TemporaryDirectory()
        self.root=Path(self.temporary.name)
        self.cfg=dict(title='Test catalogue',summary='Summary',parts='Parts',assembly='Assembly')
        (self.root/'catalogue.json').write_text(json.dumps(self.cfg))
        (self.root/'CATALOGUE_BUILD.md').write_text('Build guide')
        for name,width in [('sample_2',2),('sample_10',10)]:
            part=self.root/'parts'/name;part.mkdir(parents=True)
            (part/'working.yaml').write_text(yaml.safe_dump(dict(id=name,taxonomy_1='oobb',taxonomy_2='part',taxonomy_3=f'{width}_width',oobb_details=dict(width=width))))
    def tearDown(self):self.temporary.cleanup()
    def test_navigation_is_text_and_links_to_folders(self):
        catalogue.navigation(self.root)
        nav=self.root/'navigation_oobb'
        self.assertEqual(len(list(nav.rglob('oomp_id.txt'))),2)
        self.assertEqual({p.name for p in nav.rglob('*') if p.is_file()},{'README.md','oomp_id.txt'})
        discovery=(nav/'oobb/part/README.md').read_text()
        self.assertLess(discovery.index('2_width'),discovery.index('10_width'))
        self.assertIn('parts/sample_2/',discovery)
        self.assertNotIn('sample_2/README.md',discovery)
        self.assertIn('navigation_oobb/oobb/part/',(self.root/'README.md').read_text())
        for p in nav.rglob('oomp_id.txt'):
            self.assertIn(p.read_text().strip(),p.with_name('README.md').read_text())
    def test_manual_notes_survive_repeated_generation(self):
        path=self.root/'parts/sample_2/README.md';path.write_text('Manual fit note\n')
        catalogue.navigation(self.root);first=path.read_text();catalogue.navigation(self.root)
        self.assertEqual(first,path.read_text());self.assertIn('Manual fit note',first)
    def test_default_part_can_share_a_taxonomy_prefix_with_angle_variants(self):
        path=self.root/'parts/sample_10/working.yaml'
        part=yaml.safe_load(path.read_text());part.update(taxonomy_3='2_width',taxonomy_4='45_angle')
        path.write_text(yaml.safe_dump(part))
        catalogue.navigation(self.root)
        self.assertTrue((self.root/'navigation_oobb/oobb/part/2_width/_part/oomp_id.txt').exists())
        self.assertEqual(len(list((self.root/'navigation_oobb').rglob('oomp_id.txt'))),2)
    def test_legacy_assets_are_not_silently_deleted(self):
        nav=self.root/'navigation_oobb';nav.mkdir();asset=nav/'unique.stl';asset.write_bytes(b'keep')
        with self.assertRaises(ValueError):catalogue.navigation(self.root)
        self.assertEqual(asset.read_bytes(),b'keep')
    def test_invalid_markers_do_not_overwrite_manual_content(self):
        path=self.root/'parts/sample_2/README.md';original=catalogue.START+'\nunfinished';path.write_text(original)
        with self.assertRaises(ValueError):catalogue.navigation(self.root)
        self.assertEqual(path.read_text(),original)
    def test_filtered_metadata_merge_keeps_other_parts(self):
        for name in ('sample_2','sample_10'):
            p=self.root/'parts_source'/name;p.mkdir(parents=True)
            (p/'working.yaml').write_text(yaml.safe_dump(dict(id=name,oobb_details=dict(width=99))))
        catalogue.sync_sources(self.root,'sample_2')
        rows={p['id']:p for _,p in catalogue.records(self.root)}
        self.assertEqual(rows['sample_2']['oobb_details']['width'],99)
        self.assertEqual(rows['sample_10']['oobb_details']['width'],10)
    def test_missing_printable_geometry_is_an_error(self):
        with self.assertRaisesRegex(ValueError,'Missing production mesh'):catalogue.sources(self.root)
    def test_purchased_hardware_needs_no_invented_mesh(self):
        for source,part in catalogue.records(self.root):
            part.pop('oobb_details');(source/'working.yaml').write_text(yaml.safe_dump(part))
        self.assertEqual(catalogue.sources(self.root),[])
        catalogue.navigation(self.root)
        self.assertIn('Purchased hardware',(self.root/'parts/sample_2/README.md').read_text())
    def test_ascii_and_binary_mesh_measurements_match(self):
        import trimesh
        from render_parts import dimensions
        mesh=trimesh.creation.box(extents=[3,5,7])
        a=self.root/'ascii.stl';b=self.root/'binary.stl'
        a.write_text(trimesh.exchange.stl.export_stl_ascii(mesh));b.write_bytes(trimesh.exchange.stl.export_stl(mesh))
        self.assertEqual(dimensions(a),[3,5,7]);self.assertEqual(dimensions(a),dimensions(b))

    def test_explicit_scad_options_reach_the_generator(self):
        with patch.object(working_scad, 'get_parts', return_value=[]) as get_parts, patch.object(scad_help, 'make_parts') as make, patch.object(scad_help, 'generate_navigation') as nav:
            working_scad.make_scad(typ='all', filter='one_id', save_type='none', navigation=False, overwrite=False, modes=['true'], oomp_run=False)
        args=get_parts.call_args.args[0]
        self.assertEqual(args['filter'],'one_id')
        self.assertEqual(args['save_type'],'none')
        self.assertEqual(args['modes'],['true'])
        self.assertFalse(args['overwrite']);self.assertFalse(args['oomp_run'])
        self.assertEqual(make.call_args.kwargs['filter'],'one_id');nav.assert_not_called()

    def test_scad_dispatch_filters_on_full_identity(self):
        rows=[{'id':name,'oobb_name':'plate_cutout','kwargs':{'extra':'shared'}} for name in ['sample_2','sample_10']]
        with patch.object(scad_help,'make_scad_generic') as make:
            scad_help.make_parts(parts=rows,filter='sample_2')
        make.assert_called_once_with(rows[0])

    def test_ascii_stl_hash_is_stable_across_git_line_endings(self):
        import trimesh
        from render_parts import sha
        data=trimesh.exchange.stl.export_stl_ascii(trimesh.creation.box()).encode()
        first=self.root/'lf.stl';second=self.root/'crlf.stl'
        first.write_bytes(data);second.write_bytes(data.replace(b'\n',b'\r\n'))
        self.assertEqual(sha(first),sha(second))

    def test_saved_options_cannot_override_current_scad_filter(self):
        target=self.root/'parts/sample_2/working.yaml'
        data=yaml.safe_load(target.read_text());data['kwargs']={'save_type':'all','modes':['laser'],'filter':''}
        target.write_text(yaml.safe_dump(data))
        with patch.object(working_scad,'__file__',str(self.root/'working_scad.py')):
            selected=working_scad.get_parts({'filter':'sample_2','save_type':'none','modes':['true']},'project')
        self.assertEqual(len(selected),1)
        self.assertEqual(selected[0]['kwargs']['save_type'],'none')
        self.assertEqual(selected[0]['kwargs']['modes'],['true'])

    def test_population_filters_before_writing_any_sources(self):
        with patch.object(working_oomp_populate,'write_extras') as write:
            rows=working_oomp_populate.main(filter='30_diameter_cutout_1_multiple_buffer_middle_5_width_5_height_3_depth')
        self.assertEqual(len(rows),1);self.assertEqual(len(write.call_args.args[0]),1)
        with patch.object(working_oomp_populate,'write_extras') as write:
            with self.assertRaisesRegex(ValueError,'No catalogue definitions'):
                working_oomp_populate.main(filter='does_not_exist')
            write.assert_not_called()

    def test_saved_options_cannot_override_current_svg_filter(self):
        import working_svg
        target=self.root/'parts/sample_2/working.yaml'
        data=yaml.safe_load(target.read_text())
        data['svg_details']={'svg_name':'plate_cutout','width':2}
        data['kwargs']={'save_type':'all','navigation':True,'filter':''}
        target.write_text(yaml.safe_dump(data))
        with patch.object(working_svg,'__file__',str(self.root/'working_svg.py')):
            selected=working_svg.get_parts({'filter':'sample_2','save_type':'none','navigation':False},'project')
        self.assertEqual(len(selected),1)
        self.assertEqual(selected[0]['kwargs']['filter'],'sample_2')
        self.assertEqual(selected[0]['kwargs']['save_type'],'none')
        self.assertFalse(selected[0]['kwargs']['navigation'])

    def test_filtered_build_uses_checked_export_and_mocked_renderer(self):
        import render_parts
        source=self.root/'parts_source/sample_2';source.mkdir(parents=True)
        (source/'working.yaml').write_text((self.root/'parts/sample_2/working.yaml').read_text())
        (self.root/'parts/sample_2/3dpr.scad').write_text('cube([3,5,7]);')
        import os,types
        old=os.getcwd()
        def export(args,**kwargs):
            Path(args[args.index('-o')+1]).write_bytes(b'X'*100)
            return types.SimpleNamespace(returncode=0)
        try:
            with patch.object(catalogue,'ROOT',self.root),patch.object(working_scad,'main') as cad,patch.object(catalogue,'openscad',return_value='openscad'),patch.object(catalogue.subprocess,'run',side_effect=export) as run,patch.object(render_parts,'dimensions',return_value=[3,5,7]),patch.object(render_parts,'main') as render,patch.object(catalogue,'navigation') as nav,patch.object(catalogue,'verify',return_value={}) as verify:
                catalogue.build(part_filter='sample_2',workers=1)
            self.assertEqual(cad.call_args.kwargs['filter'],'sample_2')
            self.assertEqual(cad.call_args.kwargs['save_type'],'none')
            self.assertIn('--hardwarnings',run.call_args.args[0])
            self.assertEqual(render.call_args.kwargs['part_filter'],'sample_2')
            self.assertEqual((self.root/'parts/sample_2/3dpr.stl').stat().st_size,100)
            self.assertFalse((self.root/'parts/sample_10/3dpr.stl').exists())
            nav.assert_called_once();verify.assert_called_once()
        finally:os.chdir(old)

    def test_stale_manual_navigation_is_rejected_before_any_write(self):
        nav=self.root/'navigation_oobb/retired';nav.mkdir(parents=True)
        (nav/'README.md').write_text('Keep this manual note')
        with self.assertRaisesRegex(ValueError,'Preserve manual notes'):
            catalogue.navigation(self.root)
        self.assertFalse((self.root/'README.md').exists())
        self.assertFalse((self.root/'parts/sample_2/README.md').exists())

    def test_failed_export_preserves_existing_mesh_and_stops_publication(self):
        import os, types, render_parts
        source=self.root/'parts_source/sample_2';source.mkdir(parents=True)
        (source/'working.yaml').write_text((self.root/'parts/sample_2/working.yaml').read_text())
        (self.root/'parts/sample_2/3dpr.scad').write_text('cube([3,5,7]);')
        mesh=self.root/'parts/sample_2/3dpr.stl';mesh.write_bytes(b'original production mesh')
        def fail(args,**kwargs):
            self.assertFalse(Path(args[args.index('-o')+1]).exists())
            Path(args[args.index('-o')+1]).write_bytes(b'incomplete')
            return types.SimpleNamespace(returncode=1)
        (mesh.parent/'3dpr.building.stl').write_bytes(b'stale temporary export')
        old=os.getcwd()
        try:
            with patch.object(catalogue,'ROOT',self.root),patch.object(working_scad,'main'),patch.object(catalogue,'openscad',return_value='openscad'),patch.object(catalogue.subprocess,'run',side_effect=fail),patch.object(render_parts,'main') as render,patch.object(catalogue,'navigation') as nav:
                with self.assertRaisesRegex(RuntimeError,'OpenSCAD export failed'):
                    catalogue.build(part_filter='sample_2',workers=1)
            self.assertEqual(mesh.read_bytes(),b'original production mesh')
            render.assert_not_called();nav.assert_not_called()
        finally:os.chdir(old)

if __name__=='__main__':unittest.main()
