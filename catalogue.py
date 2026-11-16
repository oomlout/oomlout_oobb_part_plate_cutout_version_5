"""Deterministic catalogue build, Markdown navigation and validation.

Project geometry remains in working_scad.py. Current parts_source records are the
authoritative catalogue; archives and legacy desktop automation are never scanned.
"""
import argparse
from concurrent.futures import ThreadPoolExecutor
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import time
from urllib.parse import quote, unquote

import yaml

ROOT = Path(__file__).resolve().parent
START = '<!-- oobb-presentation:start -->'
END = '<!-- oobb-presentation:end -->'
NOTICE = 'AI-generated images and instructions. Errors possible.'
ORIGIN = ('This is an entirely AI-generated coding project. The generated outputs are included and usually work, '
          'but the main purpose of publishing it is to give others a starting point for modifying the project with their own AI tools.')

def config(root=ROOT):
    return json.loads((root / 'catalogue.json').read_text(encoding='utf-8'))

def sha(path):
    if path.suffix.lower()=='.stl':
        from render_parts import sha as mesh_sha
        return mesh_sha(path)
    return hashlib.sha256(path.read_bytes()).hexdigest()

def read_yaml(path):
    return yaml.load(path.read_text(encoding='utf-8'), Loader=getattr(yaml, 'CSafeLoader', yaml.SafeLoader))

def part_title(part):
    d = part.get('oobb_details') or {}
    return (f"Cutout plate · {d.get('diameter_cutout')} mm opening × {d.get('multiple')} · "
            f"{d.get('buffer')} buffer · {d.get('depth')} mm thick")

def records(root=ROOT):
    result = []
    for path in sorted((root / 'parts').glob('*/working.yaml')):
        if path.is_symlink() or path.parent.is_symlink():
            raise ValueError(f'Linked part is not supported: {path}')
        data = read_yaml(path)
        if not isinstance(data, dict) or data.get('id', path.parent.name) != path.parent.name:
            raise ValueError(f'Invalid canonical part metadata: {path}')
        data['id'] = path.parent.name
        result.append((path.parent, data))
    if not result:
        raise ValueError('No active part metadata')
    return result

def relative(target, page):
    return quote(os.path.relpath(target, page.parent).replace('\\', '/'), safe='/.-_')

def safe_text(value):
    return str(value).replace('|', '\\|').replace('\n', ' ')

def segment(value):
    value = str(value).replace('.', 'd')
    if value in ('', '.', '..') or re.search(r'[<>:"/\\|?*\x00-\x1f]', value) or value.endswith(' '):
        raise ValueError(f'Unsafe taxonomy: {value!r}')
    if value.endswith('.') or value.split('.')[0].upper() in {'CON', 'PRN', 'AUX', 'NUL', *[f'COM{i}' for i in range(1,10)], *[f'LPT{i}' for i in range(1,10)]}:
        raise ValueError(f'Reserved taxonomy: {value!r}')
    return value

def natural(path):
    return [int(x) if x.isdigit() else x for x in re.split(r'(\d+)', path.name)]

def generated(path, body):
    block = START + '\n' + body.rstrip() + '\n' + END + '\n'
    old = path.read_text(encoding='utf-8') if path.exists() else ''
    if START in old or END in old:
        if old.count(START) != 1 or old.count(END) != 1 or old.index(START) > old.index(END):
            raise ValueError(f'Malformed generation markers: {path}')
        return old[:old.index(START)] + block.rstrip('\n') + old[old.index(END)+len(END):]
    return block + ('\n' + old if old else '')

def page(part, source, destination, cfg):
    root = source.parent.parent
    detail = part.get('oobb_details') or {}
    purchased = not detail
    title = part_title(part)
    opening_word='opening' if detail.get('multiple')==1 else 'openings'
    description=(f"A single-piece OOBB mounting plate with {detail.get('multiple')} circular {opening_word}, "
                 f"each with a nominal diameter of {detail.get('diameter_cutout')} mm. The {detail.get('buffer')} buffer style "
                 f"sets the space around the openings; the plate is {detail.get('depth')} mm thick.")
    if detail.get('buffer')=='default':
        description+=' The retained mounting-hole pattern can enlarge or join the nominal cutouts in this default layout.'
    lines = [f'# {safe_text(title)}', '', NOTICE, '', '## Summary', '',
             ('Purchased hardware referenced by this project.' if purchased else description), '', ORIGIN, '']
    preview = source / '3dpr_presentation.png'
    if preview.exists():
        lines += [f'![AI-generated CAD illustration: {safe_text(title)}]({relative(preview, destination)})', '']
    lines += ['## Details', '', f"**Full OOMP ID:** `{part['id']}`", '',
              f'[Part folder]({relative(source, destination)}/) · [OOBB navigation]({relative(root / "navigation_oobb", destination)}/)', '',
              'Width and height are OOBB grid units (15 mm pitch). Depth, diameter, radius and spacing are in millimetres. Use 3dpr.stl for printing.', '',
              '| Field | Value |', '| --- | --- |']
    fields=[('Nominal cutout diameter (mm)',detail.get('diameter_cutout')),
            ('Number of openings',detail.get('multiple')),('Buffer style',detail.get('buffer')),
            ('Width (OOBB units)',detail.get('width')),('Height (OOBB units)',detail.get('height')),
            ('Thickness (mm)',detail.get('depth')),('Gap between openings (mm)',detail.get('spacing_multiples'))]
    if isinstance(detail.get('width'),(int,float)) and isinstance(detail.get('height'),(int,float)):
        fields.append(('Nominal outer footprint (mm)',f"{detail['width']*15-1:g} × {detail['height']*15-1:g}"))
    for key,value in fields:
        if value is not None:
            lines.append(f'| {key} | {safe_text(value)} |')
    metadata = yaml.dump(part, Dumper=getattr(yaml, 'CSafeDumper', yaml.SafeDumper), sort_keys=False, allow_unicode=True).rstrip()
    fence = '`' * max(3, max((len(m[0])+1 for m in re.finditer(r'`+', metadata)), default=3))
    lines += ['', '<details>', '<summary>Full part details: all working.yaml fields</summary>', '', fence+'yaml', metadata, fence, '', '</details>', '',
              '## Parts', '', ('Purchased hardware; no printable mesh is generated for this record.' if purchased else cfg['parts']), '',
              '## Assembly', '', ('Use the hardware specification above when sourcing this item.' if purchased else cfg['assembly']), '']
    if (root/'PROJECT_GUIDE.md').exists():
        lines += [f'[Project guide and existing assembly notes]({relative(root / "PROJECT_GUIDE.md", destination)})', '']
    return '\n'.join(lines)

def navigation(root=ROOT):
    root = Path(root).resolve(); cfg = config(root); nav = root/'navigation_oobb'
    if nav.is_symlink() or (hasattr(nav,'is_junction') and nav.is_junction()):
        raise ValueError('Navigation must be an ordinary directory')
    if nav.exists():
        for p in nav.rglob('*'):
            if p.is_symlink() or (hasattr(p,'is_junction') and p.is_junction()):raise ValueError(f'Linked navigation: {p}')
            if p.is_file() and p.name not in ('README.md','oomp_id.txt'):
                raise ValueError('Archive legacy navigation before adopting the text-only generator: '+str(p))
    leaves={}; dirs={Path('.')}; pages={}
    active=records(root)
    taxonomy_paths={part['id']:Path(*[segment(part[f'taxonomy_{i}']) for i in range(1,16) if part.get(f'taxonomy_{i}') not in (None,'','default')]) for _,part in active}
    prefixes={parent for path in taxonomy_paths.values() for parent in path.parents}
    prefix_ids={identity for identity,path in taxonomy_paths.items() if path in prefixes}
    for source, part in active:
        pieces = [segment(part[f'taxonomy_{i}']) for i in range(1,16) if part.get(f'taxonomy_{i}') not in (None,'','default')]
        # Full IDs live in the two leaf files; repeating them in deep directory
        # names exceeded Windows path limits in bearing/electronics catalogues.
        leaf=Path(*pieces) if pieces else Path(part['id'])
        if part['id'] in prefix_ids:leaf=leaf/'_part'
        if leaf in leaves:raise ValueError('Duplicate navigation identity')
        leaves[leaf]=(source,part); dirs.add(leaf); dirs.update(leaf.parents)
        target=nav/leaf/'README.md'
        pages[target]=generated(target,page(part,source,target,cfg))
        pages[nav/leaf/'oomp_id.txt']=part['id']+'\n'
        canonical=source/'README.md';pages[canonical]=generated(canonical,page(part,source,canonical,cfg))
    if any(parent in leaves for leaf in leaves for parent in leaf.parents):
        raise ValueError('A part taxonomy cannot also be a category')
    children_by_parent={}
    for child in dirs:
        if child != Path('.'):
            children_by_parent.setdefault(child.parent, []).append(child)
    def collapse(child):
        while child not in leaves:
            children=children_by_parent.get(child, [])
            if len(children)!=1:break
            child=children[0]
        return leaves[child][0] if child in leaves else nav/child
    for d in sorted(dirs,key=str):
        if d in leaves:continue
        dest=nav/d/'README.md'
        lines=['# '+('OOBB navigation' if d==Path('.') else d.name.replace('_',' ')), '',f'[Canonical parts]({relative(root/"parts",dest)}/)', '']
        if d!=Path('.'):lines+=['[Parent category](../)', '']
        for child in sorted(children_by_parent.get(d, []),key=natural):
            lines.append(f'- [{safe_text(child.name)}]({relative(collapse(child),dest)}/)')
        pages[dest]=generated(dest,'\n'.join(lines))
    dest=root/'README.md';discovery=collapse(Path('.'))
    hero=[]
    for source, part in sorted(leaves.values(),key=lambda item:item[1]['id'] != cfg.get('example_id')):
        if (source/'3dpr_presentation.png').exists():
            hero=[f'![AI-generated CAD illustration of a cutout plate]({relative(source/"3dpr_presentation.png",dest)})', '',f'Representative example: [{part_title(part)}]({relative(source,dest)}/).', ''];break
    lines=['# '+cfg['title'],'',NOTICE,'','## Summary','',cfg['summary'],'',ORIGIN,'',*hero,'## Details','',
           f'This catalogue contains **{len(leaves)} records**. [Browse OOBB navigation]({relative(discovery,dest)}/).','',
           'Each part has one canonical folder, its full OOMP ID and complete metadata. Navigation links open folders; use GitHub’s file pane to browse the available files.','',
           cfg.get('dimensions',''),'',cfg.get('variants',''),'',
           'Run `python catalogue.py render` to refresh studio images and navigation, or `python catalogue.py build --filter <part-ID>` to rebuild one selection. Omit the filter for the full catalogue.','',
           '[Build and maintenance guide](CATALOGUE_BUILD.md)','',
           '## Parts','',cfg['parts'],'','## Assembly','',cfg['assembly'],'']
    if (root/'PROJECT_GUIDE.md').exists():lines+=['[Project guide and existing assembly notes](PROJECT_GUIDE.md)','']
    pages[dest]=generated(dest,'\n'.join(lines))
    # Reject stale manual pages before writing any generated content.
    for p in nav.rglob('README.md') if nav.exists() else []:
        if p not in pages:
            old=p.read_text(encoding='utf-8')
            if START not in old or END not in old or old.split(START)[0].strip() or old.split(END)[-1].strip():
                raise ValueError(f'Preserve manual notes before retiring navigation: {p}')
    # Compute and validate every page before replacing anything.
    for p,content in pages.items():
        if p.exists() and p.read_bytes()==content.encode('utf-8'):
            continue
        p.parent.mkdir(parents=True,exist_ok=True)
        tmp=p.with_suffix(p.suffix+'.tmp');tmp.write_text(content,encoding='utf-8',newline='\n')
        for attempt in range(20):
            try:
                os.replace(tmp,p)
                break
            except PermissionError:
                if attempt==19:raise
                time.sleep(0.1)
    if nav.exists():
        for p in nav.rglob('*'):
            if p.is_file() and p not in pages:
                old=p.read_text(encoding='utf-8')
                if p.name=='README.md' and (START not in old or old.split(START)[0].strip() or old.split(END)[-1].strip()):
                    raise ValueError(f'Preserve manual notes before retiring navigation: {p}')
                p.unlink()
        for p in sorted((x for x in nav.rglob('*') if x.is_dir()),key=lambda x:len(x.parts),reverse=True):
            if not any(p.iterdir()):p.rmdir()
    return {'records':len(leaves),'navigation_files':sum(p.is_file() for p in nav.rglob('*'))}

def sources(root=ROOT, part_filter=''):
    result=[]
    for source,part in records(root):
        if part_filter not in part['id'] or not part.get('oobb_details'):continue
        preferred=config(root).get('native_primary',False)
        main=source/('3dpr_solidcraft.stl' if preferred else '3dpr.stl')
        if not main.exists():raise ValueError(f'Missing production mesh: {main}')
        result.append((source,part,'3dpr',main))
        nominal=source/('true_solidcraft.stl' if preferred else 'true.stl')
        if nominal.exists():result.append((source,part,'true',nominal))
    return result

def sync_sources(root=ROOT, part_filter=''):
    # Merge deterministic metadata directly, without launching queued GUI jobs.
    paths=sorted((root/'parts_source').glob('*/working.yaml'))
    if not paths:raise ValueError('Missing parts_source catalogue')
    for p in paths:
        if part_filter not in p.parent.name:continue
        data=read_yaml(p)
        if not isinstance(data,dict):raise ValueError(f'Invalid source: {p}')
        if data.get('id',p.parent.name)!=p.parent.name:raise ValueError(f'Source ID mismatch: {p}')
        target=root/'parts'/p.parent.name/'working.yaml';target.parent.mkdir(parents=True,exist_ok=True)
        existing=read_yaml(target) if target.exists() else {}
        existing.update(data);existing['id']=p.parent.name
        existing.setdefault('name_proper',p.parent.name.replace('_',' ').title())
        target.write_text(yaml.safe_dump(existing,sort_keys=False,allow_unicode=True),encoding='utf-8')

def openscad():
    exe=os.environ.get('OPENSCAD_EXE') or shutil.which('openscad.com') or shutil.which('openscad')
    if not exe:raise FileNotFoundError('Set OPENSCAD_EXE or add OpenSCAD to PATH')
    return exe

def build(part_filter='', workers=2, native=False, legacy_actions=False, populate=False):
    root=ROOT
    os.chdir(root)
    if populate:
        import working_oomp_populate
        working_oomp_populate.main(filter=part_filter)
    if not any(part_filter in p.parent.name for p in (root/'parts_source').glob('*/working.yaml')):
        raise ValueError(f'No source records match {part_filter!r}')
    sync_sources(root,part_filter)
    import working_scad
    modes=config(root).get('modes',['3dpr'])
    working_scad.main(filter=part_filter,typ='fast',save_type='none',navigation=False,overwrite=True,modes=modes,oomp_run=False,generate_stl=False)
    if native or config(root).get('native_primary'):
        import working_solidcraft
        context={'part_filter':part_filter,'modes':['3dpr','true'],'export_stl':True,'export_extras':True,'verify_solidcraft':False}
        if config(root).get('native_recipe'):context['recipe_source']=config(root)['native_recipe']
        working_solidcraft.main(solidcraft_context=context)
    exe=openscad();jobs=[]
    for source,part in records(root):
        if part_filter not in part['id'] or not part.get('oobb_details'):continue
        if config(root).get('native_primary'):continue
        for mode in config(root).get('mesh_modes', ['3dpr']):
            scad=source/(mode+'.scad')
            if not scad.exists():raise ValueError(f'CAD generation failed to produce {scad}')
            jobs.append(scad)
    logs=root/'build/catalogue';logs.mkdir(parents=True,exist_ok=True)
    def export(scad):
        output=scad.with_suffix('.stl');temporary=scad.with_name(scad.stem+'.building.stl')
        temporary.unlink(missing_ok=True)
        log=logs/(scad.parent.name+'_'+scad.stem+'.log')
        with log.open('w',encoding='utf-8') as stream:
            result=subprocess.run([exe,'--hardwarnings','--export-format','binstl','-o',str(temporary),str(scad)],stdout=stream,stderr=subprocess.STDOUT)
        diagnostics=log.read_text(encoding='utf-8',errors='replace')
        if result.returncode or 'ERROR:' in diagnostics or 'WARNING:' in diagnostics or not temporary.exists() or temporary.stat().st_size<84:
            raise RuntimeError(f'OpenSCAD export failed: {scad}; see {log}')
        from render_parts import dimensions
        dimensions(temporary)
        os.replace(temporary,output)
        print('Exported '+str(output.relative_to(root)),flush=True)
    with ThreadPoolExecutor(max_workers=max(1,min(workers,4))) as pool:list(pool.map(export,jobs))
    if legacy_actions:
        import working_action
        working_action.main(filter=part_filter)
    import render_parts
    render_parts.main(part_filter=part_filter,workers=min(workers,2))
    navigation(root)
    return verify(root)

def verify(root=ROOT):
    root=Path(root).resolve();parts=records(root);expected={p['id'] for _,p in parts}
    defined={p.parent.name for p in (root/'parts_source').glob('*/working.yaml')}
    if defined != expected:
        raise ValueError(f'Source/canonical ID mismatch: missing {defined-expected}, extra {expected-defined}')
    txt=list((root/'navigation_oobb').rglob('oomp_id.txt'))
    if len(txt)!=len(expected) or {p.read_text().strip() for p in txt}!=expected:raise ValueError('Navigation coverage mismatch')
    for p in txt:
        if {f.name for f in p.parent.iterdir()} != {'README.md', 'oomp_id.txt'}:
            raise ValueError(f'Navigation leaf is not exactly two files: {p.parent}')
    for p in (root/'navigation_oobb').rglob('*'):
        if p.is_file() and p.name not in ('README.md','oomp_id.txt'):raise ValueError('Navigation contains assets')
    manifest=json.loads((root/'presentation/catalogue.json').read_text())
    rendered={r['id'] for r in manifest['renders'] if r['variant']=='3dpr'}
    printable={p['id'] for _,p in parts if p.get('oobb_details')}
    if rendered!=printable:raise ValueError(f'Render coverage mismatch: {printable-rendered}, {rendered-printable}')
    pairs={(r['id'],r['variant']) for r in manifest['renders']}
    if len(pairs)!=len(manifest['renders']) or pairs!={(identity,'3dpr') for identity in printable}:
        raise ValueError('Duplicate or unexpected render variants')
    worker_hash=sha(root/'presentation/scripts/render_catalogue.py')
    import render_parts
    valid_png=render_parts.valid_png
    sheet_code_hash=sha(Path(render_parts.__file__))
    metadata={part['id']:part for _,part in parts}
    for r in manifest['renders']:
        if r['renderer_sha256'] != worker_hash or not r.get('blender'):
            raise ValueError('Missing or stale renderer identity')
        label=part_title(metadata[r['id']])+' — Print-adjusted'
        expected_key=hashlib.sha256((r['source_sha256']+worker_hash+r['blender']+label+str(render_parts.SHEET_VERSION)+sheet_code_hash).encode()).hexdigest()[:24]
        if r['key']!=expected_key or r['label']!=label or r['sheet_version']!=render_parts.SHEET_VERSION:
            raise ValueError('Stale sheet layout or metadata: '+r['id'])
        for pathkey,hashkey in [('source','source_sha256'),('image','image_sha256')]:
            if sha(root/r[pathkey])!=r[hashkey]:raise ValueError('Stale artifact: '+r[pathkey])
        if not valid_png(root/r['image'],(1600,1000)):raise ValueError('Invalid PNG')
    pages=[root/'README.md',*(s/'README.md' for s,_ in parts),*(root/'navigation_oobb').rglob('README.md')]
    links=0
    for p in pages:
        content=p.read_text(encoding='utf-8')
        block=content.split(START,1)[-1].split(END,1)[0]
        if p==root/'README.md' or p.parent.parent==root/'parts' or (p.parent/'oomp_id.txt').exists():
            if re.findall(r'^## (.+)$',block,re.M)!=['Summary','Details','Parts','Assembly'] or NOTICE not in block or ORIGIN not in block:
                raise ValueError(f'Invalid README structure/notices: {p}')
        if p.parent.parent==root/'parts' or (p.parent/'oomp_id.txt').exists():
            identity=p.parent.name if p.parent.parent==root/'parts' else (p.parent/'oomp_id.txt').read_text().strip()
            details=re.search(r'<details>\s*<summary>Full part details: all working.yaml fields</summary>\s*(`{3,})yaml\n(.*?)\n\1\s*</details>',block,re.S)
            if not details or yaml.load(details[2],Loader=getattr(yaml,'CSafeLoader',yaml.SafeLoader))!=metadata[identity]:
                raise ValueError(f'Missing or changed full metadata: {p}')
            image=root/'parts'/identity/'3dpr_presentation.png'
            if identity in printable and f']({relative(image,p)})' not in block:
                raise ValueError(f'Missing canonical image reference: {p}')
        # YAML metadata can contain arbitrary Markdown-like strings; it is not navigation.
        block=re.sub(r'<details>.*?</details>','',block,flags=re.S)
        for match in re.finditer(r'!?\[[^\]]*\]\(([^)]+)\)',block):
            url=unquote(match[1]).split('#',1)[0]
            if not url or '://' in url:continue
            target=(p.parent/url).resolve()
            if not target.is_relative_to(root) or not target.exists():raise ValueError(f'Broken link: {p}: {url}')
            links+=1
    result={'records':len(parts),'printable_parts':len(printable),'render_sheets':len(manifest['renders']),'navigation_files':sum(p.is_file() for p in (root/'navigation_oobb').rglob('*')),'checked_links':links}
    (root/'presentation/validation.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result),flush=True)
    return result

def cli():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('command',choices=['build','docs','render','verify'],nargs='?',default='build')
    parser.add_argument('--filter',default='')
    parser.add_argument('--workers',type=int,default=2,choices=[1,2,3,4])
    parser.add_argument('--native',action='store_true')
    parser.add_argument('--legacy-actions',action='store_true')
    parser.add_argument('--populate',action='store_true',help='Explicitly rerun the catalogue definition before building')
    a=parser.parse_args()
    if a.command=='build':build(a.filter,a.workers,a.native,a.legacy_actions,a.populate)
    elif a.command=='docs':navigation()
    elif a.command=='verify':verify()
    else:
        import render_parts
        render_parts.main(part_filter=a.filter,workers=min(a.workers,2));navigation();verify()

if __name__=='__main__':cli()
