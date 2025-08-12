import re, os, sys, pathlib
ROOT = pathlib.Path(__file__).parent
DOCS = ROOT / 'docs'
LINK_PATTERN = re.compile(r'\[[^\]]+\]\(([^):#?]+\.md)\)')
missing = []
scanned = 0
for md_path in DOCS.rglob('*.md'):
    rel_dir = md_path.parent
    text = md_path.read_text(encoding='utf-8', errors='ignore')
    for m in LINK_PATTERN.finditer(text):
        target = m.group(1).strip()
        # Normalize ./ and relative
        norm = (rel_dir / target).resolve()
        if not norm.exists():
            missing.append((str(md_path.relative_to(ROOT)), target))
    scanned += 1

if missing:
    print('Broken links found:')
    for src, tgt in missing:
        print(f'  {src} -> {tgt}')
    sys.exit(1)
else:
    print(f'All internal .md links OK across {scanned} markdown files.')
