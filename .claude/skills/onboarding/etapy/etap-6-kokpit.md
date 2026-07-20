# Etap 6 - Bonus: kokpit w przeglądarce

## Cel etapu

Po tym etapie osoba ma `kokpit.html` - swoje centrum dowodzenia w wersji wizualnej:
kolorową stronę otwieraną dwuklikiem, wygenerowaną z jej realnych danych. Umie ją
odświeżać frazą "Odśwież kokpit", rozumie, że to widok (nie źródło prawdy), a sekcje-duchy
pokazują jej, o co system może jeszcze urosnąć. `CLAUDE.md` i `INSTRUKCJA.md` znają kokpit.

## Zanim zaczniesz

Ten etap jest BONUSEM i uruchamiasz go wyłącznie, gdy osoba o niego poprosiła
("pokaż mi kokpit", "chcę ten dashboard w przeglądarce") albo wyraźnie zgodziła się na
Twoją jednozdaniową propozycję. Wymaga ukończonego Etapu 5 (istnieje `dashboard.md`
i produkcyjny `CLAUDE.md`). Jeśli Etap 5 nie jest zamknięty - wróć najpierw do niego.
Nigdy nie namawiaj na ten etap dwa razy: "nie" = status `pominiety` i koniec tematu.

## Powtórka

Dwa pytania, po jednym na raz, lekko:

1. **"Czym jest dashboard.md - i czego NIE wolno z nim robić?"**
   Odpowiedź: to widok wygenerowany z kart, niczego sam nie przechowuje; nie edytuje się
   go ręcznie, tylko odświeża frazą. Prawda mieszka w kartach.
2. **"Co robi `/clear` i czemu niczego wtedy nie tracisz?"**
   Odpowiedź: czyści rozmowę (blat biurka), a pamięć systemu mieszka w plikach (szafka),
   które Claude czyta na starcie każdej sesji.

Obie odpowiedzi za chwilę zagrają: kokpit to drugi widok tej samej prawdy z kart.

## Materiał

**Krok A - dwa widoki, jedna prawda.** Wyjaśnij mniej więcej: "Masz już dashboard.md -
tekstowy widok systemu. Teraz zrobimy jego wizualnego bliźniaka: kokpit.html. Ta sama
prawda z tych samych kart, ale w formie, którą miło mieć otwartą na drugim monitorze:
kolory, liczby, sekcje. To nadal tylko widok - niczego nie przechowuje, przebudowuje się
na żądanie. I nadal zero chmury: jeden plik HTML na Twoim dysku, otwierany w przeglądarce,
bez internetu i bez instalowania czegokolwiek."

**Krok B - sekcje-duchy, czyli wystawa możliwości.** Uprzedź: "W kokpicie zobaczysz też
przyciemnione sekcje z napisem MODUŁ ŚPI - na przykład Cele albo Finanse, jeśli ich nie
prowadzisz. To nie błąd, to zajawka: każda z nich pokazuje, jak wyglądałaby na żywo,
i podpowiada jedno zdanie, którym ją budzisz. System rośnie, kiedy Ty chcesz - kokpit
tylko pokazuje, dokąd może urosnąć."

## Działanie

### 1. Generacja kokpitu

- Weź szablon `.claude/skills/onboarding/szablony/kokpit.html` i utwórz z niego
  `kokpit.html` w korzeniu folderu. Pełna instrukcja slotów jest w komentarzu na górze
  szablonu - trzymaj się jej. W skrócie:
  - podmieniasz WYŁĄCZNIE zawartość slotów (`SLOT:LOGO` z imieniem osoby,
    `SLOT:DATA-NAGLOWEK`, `SLOT:DZIS-META`, `SLOT:STATY`, `SLOT:TASKI` wraz z
    `SLOT:TASKI-META`, `SLOT:PROJEKTY`, `SLOT:OBSZARY`, `SLOT:DZIENNIK`,
    `SLOT:SIDEBAR-KARTA`, `SLOT:STOPKA-DATA`) - CSS i struktura zostają nietknięte,
  - dane bierzesz z tych samych miejsc co przy "Odśwież dashboard": nieodhaczone
    checkboxy z kart, statusy i priorytety z frontmattera, 5 ostatnich wpisów z `log.md`,
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
- Nazwij rzecz: "To jest Twoje centrum zarządzania życiem w wersji wizualnej. Wszystko,
  co tu widzisz, przyszło z Twoich zwykłych plików tekstowych - i to Ty je zbudowałaś/eś
  przez ostatni tydzień."

### 3. Pętla odświeżania

Wyjaśnij: "Kokpit działa jak dashboard: mówisz **Odśwież kokpit**, ja przebudowuję plik
z kart, Ty odświeżasz stronę w przeglądarce (Mac: Cmd+R, Windows: F5 - albo po prostu
zamykasz i otwierasz plik ponownie) i widzisz świeży
stan. Dobry rytm: odświeżaj przy przeglądzie tygodnia albo po większych zmianach -
razem z dashboardem."

### 4. Naucz system kokpitu (CLAUDE.md + INSTRUKCJA.md)

Za zgodą osoby zaktualizuj oba pliki:

- W `CLAUDE.md`: usuń sekcję "Bonus do odebrania" (jeśli jest) i dopisz na jej miejscu:

  ```markdown
  ## Kokpit w przeglądarce

  `kokpit.html` w korzeniu to wizualny widok systemu - bliźniak `dashboard.md`,
  ta sama prawda z kart. Na frazę "Odśwież kokpit":

  1. Przebuduj plik na bazie szablonu `.claude/skills/onboarding/szablony/kokpit.html`
     (instrukcja slotów w komentarzu na górze szablonu); dane jak przy "Odśwież
     dashboard" + data wygenerowania.
  2. Sekcje prowadzonych modułów wypełnij danymi; nieprowadzone zostaw jako
     sekcje-duchy (class "ghost") - to celowa wystawa możliwości.
  3. Gdy dojdzie nowy moduł - przy najbliższym odświeżeniu ożyw jego sekcję
     (usuń class "ghost", blok .ghost-hint i "nav-ghost" w nawigacji).
  4. Nie zmieniaj CSS ani struktury szablonu - tylko zawartość slotów.
  ```

  Do tabeli magicznych fraz w `CLAUDE.md` dopisz wiersz:
  `| "Odśwież kokpit" | przebudowuje kokpit.html z aktualnych danych (sekcja "Kokpit w przeglądarce") |`

- W `INSTRUKCJA.md` dopisz do ściągi fraz wiersz:
  `| "Odśwież kokpit" | Twoje centrum dowodzenia w przeglądarce przebudowuje się ze świeżych danych |`

### 5. Zamknięcie i furtka dla ambitnych

- Zaktualizuj `.onboarding/postep.md`: Etap 6 na `ukonczony` z dzisiejszą datą.
- Dopisz do `log.md`: `## [YYYY-MM-DD] kokpit | uruchomiony` z jednym zdaniem.
- Jeśli migawki gita są włączone - zaproponuj commit, np.
  `git add -A && git commit -m "Etap 6 - kokpit w przeglądarce"`.
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
- [ ] `CLAUDE.md`: sekcja "Kokpit w przeglądarce" + fraza w tabeli (sekcja "Bonus do
      odebrania" usunięta)
- [ ] `INSTRUKCJA.md`: fraza "Odśwież kokpit" w ściądze
- [ ] `.onboarding/postep.md`: Etap 6 `ukonczony`; wpis w `log.md`

## Praca domowa

Brak nowej - trwa (albo trwał) tydzień próbny z Etapu 5. Jedno zdanie na do widzenia:
"Miej kokpit otwarty w przeglądarce podczas jutrzejszego porannego 'Co mam dziś do
zrobienia?' - zobaczysz, jak plan i widok zaczynają grać razem."

## Zapis postępu

- W `.onboarding/postep.md`: Etap 6 → `ukonczony`, dzisiejsza data, notatka
  (np. "kokpit wygenerowany, frazy dopisane do CLAUDE.md i INSTRUKCJA.md").
  Przy przerwaniu w połowie: `w-trakcie` + dokładny krok w "Gdzie skończyliśmy".
- Sekcja "Gdzie skończyliśmy": "Onboarding ukończony w całości, łącznie z bonusem.
  System działa samodzielnie."
- Sekcja "Praca domowa": bez zmian (tydzień próbny wg Etapu 5).
