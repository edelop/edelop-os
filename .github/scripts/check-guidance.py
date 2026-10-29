"""Check shared-guidance entry points and literal onboarding references."""

import re
import sys
from pathlib import Path


ROUTER = 'procedury/onboarding/README.md'
SKILLS = ('.agents/skills/onboarding/SKILL.md', '.claude/skills/onboarding/SKILL.md')
REQUIRED = ('AGENTS.md', 'CLAUDE.md', ROUTER, *SKILLS)


def check(root):
    errors = []
    if not root.is_dir():
        return ['repository directory is missing']

    for name in REQUIRED:
        path = root / name
        if not path.is_file() or not path.read_text(encoding='utf-8').strip():
            errors.append(f'{name}: required file is missing or empty')

    adapter = root / 'CLAUDE.md'
    if adapter.is_file():
        links = re.findall(r'\[[^\]]+\]\(([^)]+)\)', adapter.read_text(encoding='utf-8'))
        if 'AGENTS.md' not in links and './AGENTS.md' not in links:
            errors.append('CLAUDE.md: adapter must link to AGENTS.md')

    for name in SKILLS:
        path = root / name
        if path.is_file():
            text = path.read_text(encoding='utf-8')
            if f'`{ROUTER}`' not in text:
                errors.append(f'{name}: skill must reference the shared router')
            if not re.search(r'\A---\nname: onboarding\ndescription: .+\n---\n', text):
                errors.append(f'{name}: missing onboarding skill metadata')

    sources = [root / name for name in REQUIRED if (root / name).is_file()]
    sources.extend((root / 'procedury/onboarding').rglob('*.md'))
    for source in sorted(set(sources)):
        for token in re.findall(r'`([^`\n]+)`', source.read_text(encoding='utf-8')):
            if not token.startswith(('procedury/onboarding/', '.onboarding/')):
                continue
            if any(char in token for char in '<>*') or '...' in token or re.search(r'\s', token):
                continue
            target = (root / token).resolve()
            label = source.relative_to(root).as_posix()
            if not target.is_relative_to(root):
                errors.append(f'{label}: reference outside repository: {token}')
            elif not target.exists():
                errors.append(f'{label}: missing reference: {token}')
    return errors


def main():
    root = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else Path(__file__).resolve().parents[2]
    try:
        errors = check(root)
    except (OSError, UnicodeError) as error:
        print(f'FAIL: cannot read guidance: {type(error).__name__}')
        return 1
    for error in errors:
        print(f'FAIL: {error}')
    if errors:
        return 1
    print('OK: shared guidance, skill routers, and onboarding references are valid')
    return 0


if __name__ == '__main__':
    sys.exit(main())
