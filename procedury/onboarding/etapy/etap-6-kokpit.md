# Etap 6 - Bonus: kokpit w przeglądarce

## Cel etapu

Po tym etapie osoba ma `kokpit.html` - swoje centrum dowodzenia w wersji wizualnej:
kolorową stronę otwieraną dwuklikiem, wygenerowaną z jej realnych danych. Umie ją
odświeżać frazą "Odśwież kokpit", rozumie, że to widok (nie źródło prawdy), a sekcje-duchy
pokazują jej, o co system może jeszcze urosnąć.
The shared rules in `AGENTS.md` and the user guide in `INSTRUKCJA.md` describe the
cockpit. `CLAUDE.md` retains its reference to the shared rules.

## Zanim zaczniesz

The assistant shall start this optional stage only at the learner's request or after
explicit consent to a one-sentence invitation. Stage 5 must be complete: `HOME.md`
and production rules in `AGENTS.md` exist, and `CLAUDE.md` still references them.
If stage 5 is incomplete, then the assistant shall return to that stage first.
Nigdy nie namawiaj na ten etap dwa razy: "nie" = status `pominiety` i koniec tematu.

## Powtórka

Dwa pytania, po jednym na raz, lekko:

1. **"Czym jest HOME.md - i czego NIE wolno z nim robić?"**
   Odpowiedź: to widok wygenerowany z kart, niczego sam nie przechowuje; nie edytuje się
   go ręcznie, tylko odświeża frazą. Prawda mieszka w kartach.
2. **"Co czyści rozmowę i czemu niczego wtedy nie tracisz?"**
   Odpowiedź: w Claude Code robi to komenda `/clear`, w Codex - po prostu nowa rozmowa;
   rozmowa znika (blat biurka), a pamięć systemu mieszka w plikach (szafka), które
   asystent czyta na starcie każdej sesji.

Obie odpowiedzi za chwilę zagrają: kokpit to drugi widok tej samej prawdy z kart.

## Materiał

**Krok A - dwa widoki, jedna prawda.** Wyjaśnij mniej więcej: "Masz już HOME.md -
tekstowy widok systemu. Teraz zrobimy jego wizualnego bliźniaka: kokpit.html. Ta sama
prawda z tych samych kart, ale w formie, którą miło mieć otwartą na drugim monitorze:
kolory, liczby, sekcje. To nadal tylko widok - niczego nie przechowuje, przebudowuje się
na żądanie. I nadal zero chmury: jeden plik HTML na Twoim dysku, otwierany w przeglądarce,
bez internetu i bez instalowania czegokolwiek."

Uwaga dla Ciebie: kokpit pokazuje taski (z terminami z zapisu `[termin::]`), projekty,
obszary i dziennik. Sekcji "Decyzje do sprawdzenia" z HOME.md w kokpicie nie ma - jeśli
osoba o nią zapyta, powiedz wprost, że ten widok ma tylko HOME.md, i zaproponuj dobudowanie
sekcji później ("chcę, żeby kokpit umiał X").

**Krok B - sekcje-duchy, czyli wystawa możliwości.** Uprzedź: "W kokpicie zobaczysz też
przyciemnione sekcje z napisem MODUŁ ŚPI - na przykład Cele albo Finanse, jeśli ich nie
prowadzisz. To nie błąd, to zajawka: każda z nich pokazuje, jak wyglądałaby na żywo,
i podpowiada jedno zdanie, którym ją budzisz. System rośnie, kiedy Ty chcesz - kokpit
tylko pokazuje, dokąd może urosnąć."

## Działanie

### 1. Generacja kokpitu

- Weź szablon `procedury/onboarding/szablony/kokpit.html` i utwórz z niego
  `kokpit.html` w korzeniu folderu. Pełna instrukcja slotów jest w komentarzu na górze
  szablonu - trzymaj się jej. W skrócie:
  - podmieniasz WYŁĄCZNIE zawartość slotów (`SLOT:LOGO` z imieniem osoby,
    `SLOT:DATA-NAGLOWEK`, `SLOT:DZIS-META`, `SLOT:STATY`, `SLOT:TASKI` wraz z
    `SLOT:TASKI-META`, `SLOT:PROJEKTY`, `SLOT:OBSZARY`, `SLOT:DZIENNIK`,
    `SLOT:SIDEBAR-KARTA`, `SLOT:STOPKA-DATA`) - CSS i struktura zostają nietknięte,
  - dane bierzesz z tych samych miejsc co przy "Odśwież dashboard": nieodhaczone
    checkboxy z kart, statusy i priorytety z frontmattera, 5 ostatnich wpisów z `90-System/log.md`,
  - moduły, które osoba PROWADZI (np. cele z Etapu 3, P&L z Etapu 4): ożyw ich sekcje -
    usuń `class="ghost"`, blok `.ghost-hint` i `class="nav-ghost"` w nawigacji, wypełnij
    realnymi danymi,
  - moduły, których osoba NIE prowadzi: zostaw jako duchy. NIE usuwaj ich - to celowe.
  - sidebar-karta: jeśli trwa tydzień próbny z Etapu 5, pokaż "Dzień N z 7".
- Zero danych na niby: wszystko, co widać w żywych sekcjach, ma istnieć na kartach.

### 2. Otwarcie - moment WOW

- Poproś osobę: "Otwórz folder systemu w Finderze (Mac) albo Eksploratorze (Windows)
  i kliknij dwa razy w `kokpit.html`." (Alternatywnie zaproponuj, że otworzysz go za nią
  komendą `open kokpit.html` na Macu / `start kokpit.html` na Windowsie - za jej zgodą.)
- Daj chwilę na oglądanie, bez gadania. Potem krótko oprowadź: liczby u góry to jej
  system policzony na dziś, taski można "odhaczać na niby" (przy odświeżeniu wróci stan
  z kart - prawdziwe odhaczanie jest w rozmowie), przyciemnione sekcje to śpiące moduły.
- Nazwij rzecz: "To jest Twój Edelop OS w wersji wizualnej. Wszystko,
  co tu widzisz, przyszło z Twoich zwykłych plików tekstowych - i to Ty je zbudowałaś/eś
  przez ostatni tydzień."

### 3. Pętla odświeżania

Wyjaśnij: "Kokpit działa jak dashboard: mówisz **Odśwież kokpit**, ja przebudowuję plik
z kart, Ty odświeżasz stronę w przeglądarce (Mac: Cmd+R, Windows: F5 - albo po prostu
zamykasz i otwierasz plik ponownie) i widzisz świeży
stan. Dobry rytm: odświeżaj przy przeglądzie tygodnia albo po większych zmianach -
razem z dashboardem."

### 4. Add cockpit guidance to AGENTS.md and INSTRUKCJA.md

Za zgodą osoby zaktualizuj plik zasad i INSTRUKCJA.md:

- The assistant shall replace the "Bonus do odebrania" section in `AGENTS.md`
  with the cockpit guidance below after consent. The assistant shall preserve the
  `CLAUDE.md` adapter and its tool-specific guidance.
  If the adapter is broken, then the assistant shall obtain consent to repair its
  reference instead of copying shared cockpit rules into it.

  ```markdown
  ## Kokpit w przeglądarce

  `kokpit.html` w korzeniu to wizualny widok systemu - bliźniak `HOME.md`,
  ta sama prawda z kart. Na frazę "Odśwież kokpit":

  1. Przebuduj plik na bazie szablonu `procedury/onboarding/szablony/kokpit.html`
     (instrukcja slotów w komentarzu na górze szablonu); dane jak przy "Odśwież
     dashboard" + data wygenerowania.
  2. Sekcje prowadzonych modułów wypełnij danymi; nieprowadzone zostaw jako
     sekcje-duchy (class "ghost") - to celowa wystawa możliwości.
  3. Gdy dojdzie nowy moduł - przy najbliższym odświeżeniu ożyw jego sekcję
     (usuń class "ghost", blok .ghost-hint i "nav-ghost" w nawigacji).
  4. Nie zmieniaj CSS ani struktury szablonu - tylko zawartość slotów.
  ```

  Add the following row to the magic phrase table in `AGENTS.md` only:
  `| "Odśwież kokpit" | przebudowuje kokpit.html z aktualnych danych (sekcja "Kokpit w przeglądarce") |`

- W `INSTRUKCJA.md` dopisz do ściągi fraz wiersz:
  `| "Odśwież kokpit" | Twoje centrum dowodzenia w przeglądarce przebudowuje się ze świeżych danych |`

### 5. Zamknięcie i furtka dla ambitnych

- Zaktualizuj `.onboarding/postep.md`: Etap 6 na `ukonczony` z dzisiejszą datą.
- Dopisz do `90-System/log.md`: `## [YYYY-MM-DD] kokpit | uruchomiony` z jednym zdaniem.
- When snapshots are enabled, the assistant shall propose a commit, review
  `git status --short`, stage only intended files with `git add -- <path>...`, and
  inspect `git diff --cached --stat` before committing. If a hook rejects the commit,
  then the assistant shall stop without overriding identity or bypassing the hook.
- Na koniec zostaw furtkę, bez wciskania: "Kokpit, którego właśnie używasz, jest
  statyczny - odświeża go rozmowa. Da się pójść dalej: wersja na żywo, w której
  odhaczasz taski kliknięciem prosto do plików. To już mała aplikacja - większa
  przygoda na osobny wieczór. Jak kiedyś zechcesz, powiedz po prostu: **zbuduj mi
  kokpit na żywo** - rozbudowa systemu to normalna rozmowa, nie osobny kurs."

## Ćwiczenie

Pełna pętla: zapis → odświeżenie → widok. Osoba wykonuje SAMA:

1. Poproś, żeby dodała jeden prawdziwy task swoją frazą ("Dodaj taska do X: ...").
   Wykonaj.
2. Potem osoba mówi: **"Odśwież kokpit"**. Przebuduj `kokpit.html`.
3. Osoba odświeża stronę w przeglądarce (Cmd+R na Macu, F5 na Windowsie) i SAMA
   wskazuje nowy task na kokpicie.

Weryfikacja: nowy task widoczny, data wygenerowania w stopce dzisiejsza. Jeśli tak -
powiedz: "I to jest cała obsługa: mówisz do systemu, kokpit nadąża."

## Kryterium ukończenia

- [ ] `kokpit.html` istnieje w korzeniu i pokazuje REALNE dane osoby (zero danych demo
      w żywych sekcjach)
- [ ] Sekcje-duchy zostały tylko dla modułów, których osoba nie prowadzi; prowadzone
      moduły są żywe
- [ ] Osoba samodzielnie przeszła pętlę: task frazą → "Odśwież kokpit" → odświeżenie
      strony → widzi task
- [ ] `AGENTS.md` shall contain the cockpit section and phrase in place of "Bonus do odebrania".
- [ ] `CLAUDE.md` shall reference `AGENTS.md` without duplicating shared cockpit rules.
- [ ] `INSTRUKCJA.md`: fraza "Odśwież kokpit" w ściądze
- [ ] `.onboarding/postep.md`: Etap 6 `ukonczony`; wpis w `90-System/log.md`

## Praca domowa

Brak nowej - trwa (albo trwał) tydzień próbny z Etapu 5. Jedno zdanie na do widzenia:
"Miej kokpit otwarty w przeglądarce podczas jutrzejszego porannego 'Co mam dziś do
zrobienia?' - zobaczysz, jak plan i widok zaczynają grać razem."

## Zapis postępu

- W `.onboarding/postep.md`: Etap 6 → `ukonczony`, dzisiejsza data, notatka
  (e.g. "cockpit generated; phrases added to AGENTS.md and INSTRUKCJA.md; CLAUDE.md adapter preserved").
  Przy przerwaniu w połowie: `w-trakcie` + dokładny krok w "Gdzie skończyliśmy".
- Sekcja "Gdzie skończyliśmy": "Onboarding ukończony w całości, łącznie z bonusem.
  System działa samodzielnie."
- Sekcja "Praca domowa": bez zmian (tydzień próbny wg Etapu 5).
