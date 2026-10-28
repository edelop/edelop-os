# Repository checks

Run from the repository root with Python 3.12 or later and Bash. On Windows,
use Git Bash for the shell commands; the learner's app workflow does not require it.

```sh
python .github/scripts/check-guidance.test.py
python .github/scripts/check-guidance.py
bash .github/scripts/kit-clean.test.sh
bash .github/scripts/kit-clean.sh
```

The workflow runs the same commands on Linux and Windows. The Linux check retains
the `kit-clean` name; the additional Windows check is named `kit-clean-windows`.
Test fixtures use disposable copies and do not require commits or an author identity.
Shell scripts use LF line endings on both platforms through `.gitattributes`.

The guidance checker shall reject missing or empty entry points, a Claude adapter
without its link to `AGENTS.md`, invalid onboarding skill metadata, and missing
literal references to onboarding procedures, templates, or state files.
If a checked file cannot be read as UTF-8, then the guidance checker shall exit nonzero.
Generated page names, placeholders, and wildcard examples are outside this check.

Shared rules belong in `AGENTS.md`; `CLAUDE.md` contains its reference and tool-specific
guidance. Both onboarding skills route to `procedury/onboarding/README.md`.
The skill descriptions apply to onboarding requests rather than every unfinished setup.

An interactive check shall open a fresh Codex conversation at the branch root and
confirm that the repository onboarding skill is discovered, the current stage can be
identified, and unrelated requests do not start a lesson. This check shall be read-only
and shall preserve `.onboarding/`, `90-System/`, and `00-Zrodla/`.
If the session cannot run, then the PR shall record the reason and link the open
tracking issue instead of claiming that onboarding behavior was verified.
