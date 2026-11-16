"""Record logical catalogue bytes separately from caches, Git and recovery."""
from collections import defaultdict
import json
import os
from pathlib import Path
import subprocess

ROOT=Path(__file__).resolve().parents[2]
RECOVERY=ROOT.parent/'_repository_recovery/cutout_refresh_2026-11-16'
BASELINE='fe08f530b69f2112492572ea5336eb065876bcb2'


def group(path):
    return path.split('/')[0] if path.startswith(('parts/','navigation_oobb/')) else 'other'


def folder_bytes(folder):
    count=total=0
    for directory,_,files in os.walk(folder):
        for name in files:
            path=Path(directory)/name
            count+=1;total+=path.stat().st_size
    return dict(files=count,bytes=total)


def main():
    original={}
    for line in subprocess.check_output(['git','ls-tree','-rl',BASELINE],cwd=ROOT,text=True).splitlines():
        detail,path=line.split('\t',1)
        original[path]=int(detail.split()[3])
    dirty=set(subprocess.check_output(['git','diff','--name-only','-z',BASELINE],cwd=ROOT).decode().split('\0'))
    paths=set(subprocess.check_output(['git','ls-files','-z','--cached','--others','--exclude-standard'],cwd=ROOT).decode().split('\0'))-{''}
    before=defaultdict(lambda:dict(files=0,bytes=0))
    after=defaultdict(lambda:dict(files=0,bytes=0,checkout_bytes=0))
    families=defaultdict(lambda:dict(files=0,bytes=0))
    for path,size in original.items():
        before[group(path)]['files']+=1;before[group(path)]['bytes']+=size
    for path in sorted(paths):
        file=ROOT/path
        if not file.is_file():continue
        if path in original and path not in dirty:
            size=original[path]
        else:
            data=file.read_bytes()
            if file.suffix in ('.md','.py','.json','.yaml','.yml','.txt') or file.name in ('.gitattributes','.gitignore'):
                # New files are text except the explicitly byte-preserved sheet code/manifest.
                if path not in ('render_parts.py','presentation/catalogue.json','presentation/scripts/render_catalogue.py'):
                    data=data.replace(b'\r\n',b'\n')
            size=len(data)
        bucket=after[group(path)]
        bucket['files']+=1;bucket['bytes']+=size;bucket['checkout_bytes']+=file.stat().st_size
        if path.startswith('parts/'):
            families[file.name]['files']+=1;families[file.name]['bytes']+=size
    for data in families.values():data['share_of_parts_percent']=round(100*data['bytes']/after['parts']['bytes'],4)
    before_total=sum(r['bytes'] for r in before.values());after_total=sum(r['bytes'] for r in after.values())
    report=dict(baseline_commit=BASELINE,units='Logical bytes; decimal MB/GB. Published projections use existing Git blob sizes for unchanged files and Git-compatible line endings for changed/new text.',
                before=dict(before),after=dict(after),canonical_families=dict(sorted(families.items())),
                published_savings_bytes=before_total-after_total,
                published_savings_percent=round(100*(before_total-after_total)/before_total,4),
                git=folder_bytes(ROOT/'.git'),local_build_cache=folder_bytes(ROOT/'build'),
                external_recovery=folder_bytes(RECOVERY),
                scope='Local working tree projection; no commit, history reset, push or fresh-clone measurement was performed.')
    (ROOT/'presentation/storage.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({k:v for k,v in report.items() if k not in ('canonical_families','units')}),flush=True)


if __name__=='__main__':main()
