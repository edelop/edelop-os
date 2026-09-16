<!--
PERSONALIZACJA (instrukcja dla asystenta w Etapie 5 - wykonaj ją i USUŃ ten komentarz):
1. Wstaw imię osoby w miejsce <IMIE>.
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
6. Usuń wszystkie komentarze HTML i zapisz plik jako `INSTRUKCJA.md` w korzeniu folderu.
-->

# Twoja instrukcja obsługi

Ta ściąga jest dla Ciebie, <IMIE>. Niczego nie musisz z niej pamiętać - gdy zapomnisz,
jak coś się robiło, po prostu ją otwórz. Albo zapytaj asystenta, on też zna Twój system.

## Twój system w 60 sekund

1. Otwórz aplikację swojego asystenta (Claude - zakładka Code, albo Codex).
2. W Claude: kliknij poprzednią sesję na pasku po lewej albo zacznij nową (**+ New session**,
   Cmd+N na Macu) i wskaż folder swojego systemu - ten sam, który otwierałaś/eś przy
   instalacji. W Codex: otwórz ten folder tak jak przy instalacji.
3. Powiedz normalnym zdaniem, czego potrzebujesz - np. "co mam dziś do zrobienia?"
   albo "dopisz do projektu X, że...". Resztę (pliki, indeks, dziennik) ogarnia asystent.

Jeśli wolisz terminal - otwórz go w folderze systemu i uruchom `claude` albo `codex`.
Efekt jest ten sam; aplikacja jest drogą domyślną.

## Ściąga magicznych fraz

To skróty myślowe, nie komendy. Nie musisz ich wpisywać słowo w słowo - "dorzuć zadanie
do X" zadziała tak samo jak "Dodaj taska do X", bo asystent rozumie intencję.

| Mówisz | Co się dzieje |
|---|---|
| "Nowy projekt: X" | powstaje karta projektu, od razu wpisana do indeksu i dziennika |
| "Dopisz do projektu X: ..." | karta projektu się aktualizuje, a dziennik zapamiętuje zmianę |
| "Wchłoń materiały z 00-Zrodla/X" | Asystent czyta surowe materiały i zamienia je w strony wiki |
| "Dodaj taska do X: ..." | nowe zadanie ląduje na liście kroków projektu X (albo tasków obszaru X) |
| "Co mam dziś do zrobienia?" | dostajesz listę wszystkich niezrobionych zadań ze wszystkich kart |
| "Jaki jest status X?" / "Co się dzieje?" | dostajesz streszczenie z odnośnikami do konkretnych stron |
| "Zapisz decyzję: ..." | powstaje strona decyzji: kontekst, opcje, wybór - do sprawdzenia po czasie |
| "Dodaj kontakt: ..." | powstaje karta osoby: kim jest i notatki z rozmów |
| "Dodaj cel: ..." | powstaje strona celu z miarą i terminem |
| "Odśwież dashboard" | `HOME.md` - Twoja strona startowa - przebudowuje się ze świeżych danych całego systemu |
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

- **Jedna sprawa = jedna sesja.** Kończysz temat, zaczynasz następny? W Claude Code
  wpisz `/clear` (w aplikacji możesz też kliknąć + New session i wskazać ten sam folder),
  w Codex zacznij po prostu nową rozmowę - rozmowa startuje od zera,
  a asystent i tak zna Twój system, bo na starcie każdej sesji czyta jego schemat.
  Niczego nie tracisz.
- **Przerywasz w środku pracy?** Powiedz najpierw: "Zapisz gdzie skończyliśmy". W nowej
  sesji wystarczy: "kontynuujmy [temat]".
- **Asystent po długiej rozmowie "zgłupiał"?** To nie awaria, tylko zawalony blat: "Zapisz
  gdzie skończyliśmy", potem czysta kartka, potem "kontynuujmy". Trzy ruchy, zero strat.
- **Rozmowa urwała się w środku pracy?** W aplikacji Claude kliknij tę sesję na pasku po
  lewej i pisz dalej, albo zacznij nową w tym samym folderze i napisz "kontynuujmy" -
  asystent czyta na starcie plik zasad i dziennik, więc wie, gdzie skończyliście.
  (W terminalu Claude Code do ostatniej rozmowy wraca `claude --continue`.)

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
- **Nauka nowego tematu.** Wrzuć artykuły i notatki do `00-Zrodla/` i powiedz
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
- **Tryb pracy asystenta.** W aplikacji Claude przełącznik obok przycisku wysyłania ma
  dwa tryby, które Cię dotyczą: **Auto** (domyślny - asystent zapisuje pliki sam, a Ty
  oglądasz zmiany w panelu zmian) i **Manual** (przed każdą zmianą widzisz porównanie
  "było / będzie" i przyciski Accept / Reject). Aplikacja pamięta wybrany tryb dla tego
  folderu. Niezależnie od trybu, przed skasowaniem albo nadpisaniem czegoś dużego
  asystent pyta wprost w rozmowie.

## Jak dać to znajomemu

Twój system wyrósł z publicznego pakietu startowego. Znajomy wchodzi tutaj:
https://github.com/edelop/edelop-os - klika zielony przycisk "Code", a potem "Download ZIP".
Konto na GitHubie nie jest do tego potrzebne. Po rozpakowaniu otwiera folder
w swoim asystencie (Claude albo Codex) i mówi: "zaczynajmy onboarding". Asystent poprowadzi
go przez ten sam onboarding, po którym powstał Twój system - tylko że o jego życiu, nie Twoim.
