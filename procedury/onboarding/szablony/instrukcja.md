<!--
PERSONALIZACJA (instrukcja dla asystenta w Etapie 5 - wykonaj ją i USUŃ ten komentarz):
1. Wstaw imię osoby w miejsce <IMIE>, a w "Twój system w 60 sekund" pełną ścieżkę
   jej folderu w miejsce <SCIEZKA-DO-FOLDERU>.
2. W ściądze fraz zostaw tylko wiersze dotyczące tego, co osoba ma (bez celów, jeśli
   ich nie prowadzi; bez kontaktów, jeśli je pominęła itd.). Jeśli w Etapie 4 wdrożono
   moduły, dopisz ich frazy na końcu tabeli (np. "Dopisz do P&L: ...",
   "Kogo dawno nie zagadałem?").
3. Ulubioną frazę osoby (z powtórki Etapu 5) przenieś na górę tabeli i dopisz przy niej
   "(Twoja ulubiona)".
4. Dopasuj sekcję "Rytm" do realiów osoby: porę dzienną i dzień przeglądu tygodnia weź
   z `.onboarding/profil.md` (Notatki o preferencjach). <PORA-PRZEGLADU> podmień na
   umówioną porę; jeśli jej nie ma, usuń nawias.
5. W "Co jeszcze możesz" możesz podmienić przykłady na branżę i życie osoby - ma czuć,
   że to ściąga o niej, nie ulotka.
6. W "Twój system w 60 sekund" ścieżkę folderu ZAWSZE ujmij w cudzysłów
   (np. cd "C:\Users\Jan Kowalski\Documents\moj-system") - ścieżki ze spacjami bez
   cudzysłowów nie działają.
7. Usuń wszystkie komentarze HTML i zapisz plik jako `INSTRUKCJA.md` w korzeniu folderu.
-->

# Twoja instrukcja obsługi

Ta ściąga jest dla Ciebie, <IMIE>. Niczego nie musisz z niej pamiętać - gdy zapomnisz,
jak coś się robiło, po prostu ją otwórz. Albo zapytaj asystenta, on też zna Twój system.

## Twój system w 60 sekund

1. Otwórz terminal (Mac: aplikacja Terminal, Windows: PowerShell).
2. Przejdź do folderu systemu: wpisz `cd "<SCIEZKA-DO-FOLDERU>"` i wciśnij Enter
   (cudzysłów jest ważny, gdy ścieżka ma spacje). Albo prościej - otwórz terminal
   od razu w folderze, tak jak przy instalacji: przeciągnięciem folderu na Terminal (Mac)
   lub wpisując `cmd` w pasku adresu Eksploratora (Windows).
3. Uruchom swojego asystenta: `claude` (Claude Code) albo `codex` (Codex), Enter.
4. Powiedz normalnym zdaniem, czego potrzebujesz - np. "co mam dziś do zrobienia?"
   albo "dopisz do projektu X, że...". Resztę (pliki, indeks, dziennik) ogarnia asystent.

## Ściąga magicznych fraz

To skróty myślowe, nie komendy. Nie musisz ich wpisywać słowo w słowo - "dorzuć zadanie
do X" zadziała tak samo jak "Dodaj taska do X", bo asystent rozumie intencję.

| Mówisz | Co się dzieje |
|---|---|
| "Nowy projekt: X" | powstaje karta projektu, od razu wpisana do indeksu i dziennika |
| "Dopisz do projektu X: ..." | karta projektu się aktualizuje, a dziennik zapamiętuje zmianę |
| "Wchłoń materiały z zrodla/X" | Asystent czyta surowe materiały i zamienia je w strony wiki |
| "Dodaj taska do X: ..." | nowe zadanie ląduje na liście kroków projektu X (albo tasków obszaru X) |
| "Co mam dziś do zrobienia?" | dostajesz listę wszystkich niezrobionych zadań ze wszystkich kart |
| "Jaki jest status X?" / "Co się dzieje?" | dostajesz streszczenie z odnośnikami do konkretnych stron |
| "Zapisz decyzję: ..." | powstaje strona decyzji: kontekst, opcje, wybór - do sprawdzenia po czasie |
| "Dodaj kontakt: ..." | powstaje karta osoby: kim jest i notatki z rozmów |
| "Dodaj cel: ..." | powstaje strona celu z miarą i terminem |
| "Odśwież dashboard" | dashboard przebudowuje się ze świeżych danych całego systemu |
| "Przegląd tygodnia" | cotygodniowy rytuał: co zrobione, co się wydarzyło, plan na nowy tydzień |
| "Sprawdź spójność" | Asystent robi porządki: szuka sprzeczności, starych danych i zgubionych linków |
| "Podsumuj dzień" | wieczorne domknięcie: odhaczone taski, nowe sprawy, czysty plan na jutro |
| "Zapisz gdzie skończyliśmy" | stan pracy ląduje na kartach i w dzienniku - możesz bezpiecznie przerwać albo zacząć świeżą sesję |

## Rytm

Cztery nawyki utrzymują system przy życiu:

- **Rano, 2 minuty.** Zaczynając pracę zapytaj: "Co mam dziś do zrobienia?".
  W ciągu dnia dorzucaj rzeczy na bieżąco - jedno zdanie do asystenta zamiast notatki
  w telefonie.
- **Wieczorem, 2 minuty.** Powiedz: "Podsumuj dzień" i opowiedz w paru zdaniach, co
  zrobione, co zostało, co doszło w trakcie dnia. Asystent odhaczy, dopisze i domknie
  dzień wpisem w dzienniku - a rano zastaniesz system aktualny.
- **Raz w tygodniu, 10-15 minut.** Powiedz: "Przegląd tygodnia" (u Ciebie: <PORA-PRZEGLADU>).
  To najważniejszy nawyk z całego wdrożenia - dzięki niemu system żyje latami,
  a nie umiera po miesiącu.
- **Raz na miesiąc, 5 minut.** Powiedz: "Sprawdź spójność". Asystent posprząta to,
  co się rozjechało: stare daty, zgubione linki, sprzeczności.

## Sesje - kiedy zacząć od czystej kartki

Rozmowa z asystentem to blat biurka, Twoje pliki to szafka. Blat się zapełnia, szafka nigdy -
wszystko ważne i tak ląduje w plikach.

- **Jedna sprawa = jedna sesja.** Kończysz temat, zaczynasz następny? Wpisz `/clear` -
  rozmowa startuje od zera, a asystent i tak zna Twój system, bo na starcie każdej sesji
  czyta jego schemat. Niczego nie tracisz.
- **Przerywasz w środku pracy?** Powiedz najpierw: "Zapisz gdzie skończyliśmy". W nowej
  sesji wystarczy: "kontynuujmy [temat]".
- **Asystent po długiej rozmowie "zgłupiał"?** To nie awaria, tylko zawalony blat: "Zapisz
  gdzie skończyliśmy", potem `/clear`, potem "kontynuujmy". Trzy ruchy, zero strat.
- **Terminal zamknął się w środku rozmowy?** Wpisz `claude --continue` - wróci ostatnia
  rozmowa w tym folderze, dokładnie tam, gdzie się urwała.

## Co jeszcze możesz

System to nie tylko taski. Kilka pomysłów - każdy zaczynasz zwykłym zdaniem:

- **Research zanim coś kupisz lub zdecydujesz.** "Poszukaj w internecie X i porównaj
  opcje" - asystent przeszuka sieć i streści wnioski, a wynik możecie utrwalić frazą
  "Zapisz decyzję: ...".
- **Przygotowanie do rozmowy lub spotkania.** "Przygotuj mnie do rozmowy z [imię]" -
  asystent zbierze z karty kontaktu i projektów wszystko, co warto mieć w głowie:
  ostatnie ustalenia, obietnice, otwarte tematy.
- **Planowanie wyjazdu.** "Nowy projekt: wyjazd do X" - rezerwacje, lista rzeczy
  do ogarnięcia i notatki w jednym miejscu zamiast w pięciu aplikacjach.
- **Nauka nowego tematu.** Wrzuć artykuły i notatki do `zrodla/` i powiedz
  "Wchłoń materiały..." - powstanie Twoja strona wiedzy o temacie, która rośnie
  z każdym kolejnym materiałem.
- **Automatyzacje i integracje.** Twój asystent umie dużo więcej, niż widać w codziennym
  użyciu: potrafi łączyć się z innymi narzędziami (mechanizm MCP), a społeczność tworzy
  gotowe rozszerzenia. Zapytaj go: "jak podpiąć X do mojego systemu".
- **Burza mózgów nad decyzją.** "Pomóż mi przemyśleć, czy..." - asystent zada pytania,
  rozpisze opcje z plusami i minusami, a końcowy wybór trafi na stronę decyzji.

## Gdy coś nie działa

- **Zapytaj asystenta wprost.** "Jak zrobić X?" albo "Coś poszło nie tak:
  [opisz, co się stało]". Asystent zna sam siebie i Twój system - to najszybsza droga.
- **Limity.** Jeśli asystent wspomina o limicie planu, sprawdź zużycie: w Claude Code
  komendą `/usage`, w Codex w panelu swojego konta.
- **Sesja dziwnie się zachowuje?** Zamknij ją i uruchom asystenta jeszcze raz. Nowa sesja sama wczyta schemat Twojego systemu - niczego nie
  tracisz. A jeśli po prostu długo rozmawialiście, to nie awaria - zajrzyj do sekcji
  "Sesje" wyżej.
- **Okienko zgody.** Zanim asystent zmieni cokolwiek w plikach albo uruchomi komendę, pyta
  Cię o zgodę - w okienku widzisz, co dokładnie i gdzie. Czytasz, zatwierdzasz Enterem
  albo odmawiasz. Opcje "always allow" / "nie pytaj ponownie" zaznaczaj tylko wtedy,
  gdy rozumiesz, na co się zgadzasz.

## Jak dać to znajomemu

Twój system wyrósł z publicznego pakietu startowego. Znajomy wchodzi tutaj:
https://github.com/edelop/edelop-os - tam jest kod źródłowy do obejrzenia. Gotową paczkę
do pobrania (ZIP) wydaje Akademia Edelop na elevy.co. Po rozpakowaniu otwiera folder
w swoim asystencie (Claude albo Codex) i mówi: "zaczynajmy onboarding". Asystent poprowadzi
go przez ten sam onboarding, po którym powstał Twój system - tylko że o jego życiu, nie Twoim.
