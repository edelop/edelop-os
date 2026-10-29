# Edelop OS - zasady pracy (Claude Code)

Wspólne zasady tego folderu są w [`AGENTS.md`](AGENTS.md). Przeczytaj ten plik i stosuj
go w całości - poniżej jest tylko to, co dotyczy wyłącznie Claude Code.

## Specyficzne dla Claude Code

- Skill `onboarding` w `.claude/skills/onboarding/` to wygodna nakładka na procedury
  z `procedury/onboarding/`. Robi dokładnie to samo co magiczne frazy - nie ma
  własnej wiedzy i nie jest jedyną drogą. Gdy treść skilla i procedur się rozjedzie,
  źródłem prawdy jest `procedury/`.
- Migawki gita (zasada 5 w `AGENTS.md`) włączasz i robisz zwykłym `git` przez Bash.
- Świeża rozmowa (zasada 7 w `AGENTS.md`) to w Claude Code komenda `/clear`; w aplikacji
  Claude działa też **+ New session** (Cmd+N na Macu) w tym samym folderze.
- Powrót do pracy: w aplikacji Claude (zakładka Code) osoba klika poprzednią sesję na pasku
  po lewej albo zaczyna nową sesję w tym folderze. W terminalu odpowiednikiem jest `claude`
  uruchomiony w tym folderze.

## Uwaga

Stage 5 replaces the shared onboarding rules in `AGENTS.md` with the personalized
system schema. This adapter shall continue to direct Claude Code to `AGENTS.md`.
If shared rules change, then this adapter shall keep the reference instead of
duplicating the schema or workflow tables.
