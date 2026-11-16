"""Make local contact sheets and check that both CAD views are visible and inset.

This complements human review; colour/edge checks do not establish mechanical fit.
Outputs live under ignored build/presentation/qa, never in navigation.
"""
import argparse
import hashlib
import json
from pathlib import Path

import numpy as np
from PIL import Image, ImageDraw, ImageFont

ROOT = Path(__file__).resolve().parents[2]
OUTPUT = ROOT / 'build/presentation/qa'


def main(partial=False):
    renders = json.loads((ROOT/'presentation/catalogue.json').read_text())['renders']
    expected = {p.parent.name for p in (ROOT/'parts_source').glob('*/working.yaml')}
    if not partial and {r['id'] for r in renders} != expected:
        raise ValueError('Complete the catalogue before final visual review')
    OUTPUT.mkdir(parents=True, exist_ok=True)
    report_path = OUTPUT/'image-review.json'
    old = json.loads(report_path.read_text()) if report_path.exists() else {}
    checked = {r['id']:r for r in old.get('images', [])}
    results = []
    for number,record in enumerate(renders,1):
        if number%250==0:
            print(f'Checking image {number}/{len(renders)}',flush=True)
        prior = checked.get(record['id'])
        if prior and prior['image_sha256'] == record['image_sha256']:
            results.append(prior)
            continue
        with Image.open(ROOT/record['image']) as image:
            image.load()
            if image.size != (1600,1000):
                raise ValueError(f"Wrong sheet size: {record['image']}")
            panels = []
            for x in (40,840):
                with image.crop((x,105,x+720,825)) as panel:
                    pixels = np.array(panel,dtype=np.int16)
                teal = (pixels[:,:,1]-pixels[:,:,0]>15) & (pixels[:,:,2]-pixels[:,:,0]>15)
                ys=np.flatnonzero(teal.any(axis=1))
                xs=np.flatnonzero(teal.any(axis=0))
                count=int(np.count_nonzero(teal))
                bounds = [int(xs.min()),int(ys.min()),int(xs.max()),int(ys.max())] if len(xs) else None
                panels.append(dict(teal_pixels=count,bounds_px=bounds,
                                   visible_and_inset=bool(bounds and count>200 and min(bounds[:2])>2 and max(bounds[2:])<717)))
                del pixels,teal,xs,ys
        results.append(dict(id=record['id'],image_sha256=record['image_sha256'],panels=panels))
    font_path = Path('C:/Windows/Fonts/segoeui.ttf')
    font = ImageFont.truetype(str(font_path),15) if font_path.exists() else ImageFont.load_default(size=15)
    sheets = []
    for offset in range(0,len(renders),144):
        chunk = renders[offset:offset+144]
        destination = OUTPUT/f'contact-{offset//144+1:02}.jpg'
        signature = hashlib.sha256(json.dumps([(r['id'],r['image_sha256']) for r in chunk]).encode()).hexdigest()
        stamp = destination.with_suffix('.sha256')
        if not (destination.exists() and stamp.exists() and stamp.read_text()==signature):
            rows = (len(chunk)+11)//12
            canvas = Image.new('RGB',(2880,rows*174),'#e5e4df')
            draw = ImageDraw.Draw(canvas)
            for index,record in enumerate(chunk):
                x=(index%12)*240;y=(index//12)*174
                with Image.open(ROOT/record['image']) as source:
                    canvas.paste(source.convert('RGB').resize((240,150),Image.Resampling.LANCZOS),(x,y))
                draw.text((x+5,y+151),str(offset+index+1),font=font,fill='#243a3b')
            canvas.save(destination,quality=90,subsampling=0)
            stamp.write_text(signature)
        sheets.append(dict(image=destination.name,first=offset+1,last=offset+len(chunk),ids=[r['id'] for r in chunk]))
    failures = [r['id'] for r in results if not all(p['visible_and_inset'] for p in r['panels'])]
    report = dict(images=results,contact_sheets=sheets,checked=len(results),expected=len(expected),
                  automated_failures=failures,scope='Visibility and framing only; review contact sheets and full-size extremes separately.')
    report_path.write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
    print(json.dumps(dict(checked=len(results),contact_sheets=len(sheets),failures=failures)),flush=True)
    if failures:
        raise SystemExit(1)


if __name__ == '__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--partial',action='store_true',help='Review completed checkpoints during a render run')
    main(parser.parse_args().partial)
