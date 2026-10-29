import shutil
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path


SOURCE = Path(__file__).resolve().parents[2]
CHECKER = SOURCE / '.github/scripts/check-guidance.py'


class GuidanceChecks(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)
        for name in ('AGENTS.md', 'CLAUDE.md'):
            shutil.copyfile(SOURCE / name, self.root / name)
        for name in ('procedury', '.agents/skills', '.claude/skills', '.onboarding'):
            shutil.copytree(SOURCE / name, self.root / name)

    def check(self, code, message=''):
        result = subprocess.run(
            [sys.executable, str(CHECKER), str(self.root)],
            capture_output=True, text=True, encoding='utf-8',
        )
        self.assertEqual(result.returncode, code, result.stdout + result.stderr)
        self.assertIn(message, result.stdout)
        if code:
            self.assertIn('FAIL:', result.stdout)

    def test_valid_starter(self):
        self.check(0, 'OK:')

    def test_missing_agents(self):
        (self.root / 'AGENTS.md').unlink()
        self.check(1, 'AGENTS.md')

    def test_empty_agents(self):
        (self.root / 'AGENTS.md').write_text('', encoding='utf-8')
        self.check(1, 'AGENTS.md')

    def test_missing_adapter(self):
        (self.root / 'CLAUDE.md').unlink()
        self.check(1, 'CLAUDE.md')

    def test_copied_rules_are_not_an_adapter(self):
        shutil.copyfile(self.root / 'AGENTS.md', self.root / 'CLAUDE.md')
        self.check(1, 'adapter')

    def test_broken_adapter_link(self):
        (self.root / 'CLAUDE.md').write_text('[Rules](missing.md)', encoding='utf-8')
        self.check(1, 'adapter')

    def test_missing_router(self):
        (self.root / 'procedury/onboarding/README.md').unlink()
        self.check(1, 'procedury/onboarding/README.md')

    def test_missing_stage(self):
        (self.root / 'procedury/onboarding/etapy/etap-2-codzienny-workflow.md').unlink()
        self.check(1, 'etap-2-codzienny-workflow.md')

    def test_missing_template(self):
        (self.root / 'procedury/onboarding/szablony/karta-projektu.md').unlink()
        self.check(1, 'karta-projektu.md')

    def test_missing_skill(self):
        (self.root / '.agents/skills/onboarding/SKILL.md').unlink()
        self.check(1, '.agents/skills/onboarding/SKILL.md')

    def test_skill_without_router(self):
        (self.root / '.agents/skills/onboarding/SKILL.md').write_text(
            '---\nname: onboarding\ndescription: Start onboarding.\n---\nNo router.',
            encoding='utf-8',
        )
        self.check(1, 'router')

    def test_skill_without_metadata(self):
        (self.root / '.agents/skills/onboarding/SKILL.md').write_text(
            'Read `procedury/onboarding/README.md`.', encoding='utf-8',
        )
        self.check(1, 'metadata')

    def test_unreadable_encoding(self):
        (self.root / 'AGENTS.md').write_bytes(b'\xff')
        self.check(1, 'cannot read guidance')

    def test_reference_outside_repository(self):
        with (self.root / 'AGENTS.md').open('a', encoding='utf-8') as stream:
            stream.write('\n`procedury/onboarding/../../../outside.md`\n')
        self.check(1, 'outside repository')

    def test_crlf(self):
        for path in self.root.rglob('*.md'):
            text = path.read_text(encoding='utf-8')
            path.write_bytes(text.replace('\n', '\r\n').encode('utf-8'))
        self.check(0, 'OK:')

    def test_missing_root(self):
        self.root = self.root / 'absent'
        self.check(1, 'repository directory')


if __name__ == '__main__':
    unittest.main()
