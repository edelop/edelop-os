# Codex compatibility implementation plan

Goal: Apply the compatibility recommendations approved in this conversation.
Architecture: Keep shared guidance in AGENTS.md and retain CLAUDE.md as an adapter.
Stack: Markdown, Bash, Python standard library, GitHub Actions.
Spec: https://github.com/edelop/edelop-os/issues/10

- [x] Correct shared-guidance descriptions, production templates, and review checklist.
- [x] Protect existing remotes and configured commit identity during snapshot setup.
- [x] Add a narrowly triggered onboarding skill for Codex and Windows CLI guidance.
- [x] Remove commits from validator fixtures; add reference and adapter validation with negative tests.
- [ ] Run the complete local CI command set, review the diff, and record evidence.
- [ ] Commit on this branch, remove this temporary plan in the final commit, and open a PR.

Constraints: Preserve starter state, source files, and the append-only log. New text is English.
Review focus: Broken references, stale duplicate-guidance instructions, unrelated skill activation,
linked worktrees, CRLF checkouts, and preservation of existing Git settings.

Decision: Use the existing Bash checks and a portable Python reference checker rather than adding dependencies.
