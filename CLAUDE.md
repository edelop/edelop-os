# Edelop OS - zasady pracy (Claude Code)

Wspólne zasady tego folderu są w [`AGENTS.md`](AGENTS.md). Przeczytaj ten plik i stosuj
go w całości - poniżej jest tylko to, co dotyczy wyłącznie Claude Code.

## Specyficzne dla Claude Code

- Skill `onboarding` w `.claude/skills/onboarding/` to wygodna nakładka na procedury
  z `procedury/onboarding/`. Robi dokładnie to samo co magiczne frazy - nie ma
  własnej wiedzy i nie jest jedyną drogą. Gdy treść skilla i procedur się rozjedzie,
  źródłem prawdy jest `procedury/`.
- Migawki gita (zasada 5 w `AGENTS.md`) włączasz i robisz zwykłym `git` przez Bash.
- Test świeżej rozmowy w Etapie 2 wykonuje się komendą `/clear`. W innych asystentach
  to po prostu nowa rozmowa - efekt ma być ten sam: sprawdzić, czy system pamięta
  za osobę.
- Powrót do pracy: otwórz terminal w TYM folderze i wpisz `claude`.

## Uwaga

Ten plik zostanie w Etapie 5 przepisany na docelowy schemat systemu (typy stron,
workflowy, magiczne frazy). To normalne i zamierzone. Razem z nim powstanie
`AGENTS.md` o tej samej treści - jeden plik dla Claude, drugi dla Codex.
