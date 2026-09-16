# Start tutaj - instalacja krok po kroku

Ta strona przeprowadzi Cię od zera do momentu, w którym asystent przejmuje prowadzenie. Czytasz ją PRZED pobraniem folderu. Nie spiesz się, rób po kolei - każdy krok to dosłownie kilka minut.

**Bez terminala.** Instalujesz zwykłą aplikację, tak jak każdą inną: pobierasz, klikasz, logujesz się. Terminal jest opisany na dole jako droga alternatywna, dla osób, które go lubią - ale nie jest potrzebny.

## Krok 1: Wybierz asystenta

Edelop OS działa tak samo z dwoma asystentami. Wybierz jednego - możesz zmienić zdanie później, folder zostaje ten sam.

| | **Claude** | **Codex** |
|---|---|---|
| Aplikacja | Claude (zakładka **Code**) | Codex / ChatGPT |
| Czego potrzebujesz | konto na [claude.ai](https://claude.ai) z planem **Pro**, **Max**, **Team** albo **Enterprise** | konto ChatGPT z planem **Plus**, **Pro**, **Business**, **Enterprise** albo **Edu** |
| Magiczna fraza na start | "przeczytaj CLAUDE.md i zacznij onboarding" | "przeczytaj AGENTS.md i zacznij onboarding" |

Darmowe konta nie obejmują żadnego z tych narzędzi - potrzebny jest płatny plan. Jeśli nie masz jeszcze żadnego, Claude Pro i ChatGPT Plus są tańszymi progami wejścia.

Dalej instrukcja rozdziela się tylko na czas instalacji. Od Kroku 3 jest identyczna.

## Krok 2A: Instalacja - Claude

1. Pobierz aplikację:
   - **Mac:** [pobierz wersję na macOS](https://claude.ai/api/desktop/darwin/universal/dmg/latest/redirect) (jedna wersja działa na Intelu i Apple Silicon).
   - **Windows:** [pobierz wersję na Windows](https://claude.ai/api/desktop/win32/x64/setup/latest/redirect). Jeśli masz nowszego laptopa z procesorem ARM, weź [wersję ARM64](https://claude.ai/api/desktop/win32/arm64/setup/latest/redirect).
2. Zainstaluj: na Macu otwórz pobrany plik DMG i przeciągnij Claude do folderu **Aplikacje**; na Windowsie uruchom pobrany instalator i przeklikaj kreator.
3. Uruchom aplikację i zaloguj się na swoje konto claude.ai (to z planem Pro, Max, Team albo Enterprise).
4. Kliknij zakładkę **Code** (zakładki **Chat**, **Cowork** i **Code** siedzą u góry okna, pośrodku). To w niej pracujesz z plikami. Jeśli po kliknięciu widzisz prośbę o wykupienie planu, Twoje konto jest na planie darmowym - patrz "Problemy?" na dole.
5. **Tylko Windows, tylko za pierwszym razem:** przy pierwszym otwarciu zakładki Code aplikacja poprosi o [Git for Windows](https://git-scm.com/downloads/win). Zainstaluj go (kreator next-next-finish, niczego nie zmieniaj) i **uruchom Claude ponownie**.

## Krok 2B: Instalacja - Codex

1. Pobierz aplikację:
   - **Mac:** pobierz aplikację ChatGPT ze strony [chatgpt.com/download](https://chatgpt.com/download), otwórz plik DMG i przeciągnij ChatGPT do folderu **Aplikacje**.
   - **Windows:** [pobierz ze sklepu Microsoft](https://get.microsoft.com/installer/download/9PLM9XGG6VKS?cid=website_cta_psi) i przeklikaj instalację.
2. Uruchom aplikację i zaloguj się na swoje konto ChatGPT (to z planem Plus, Pro, Business, Enterprise albo Edu).
3. Wejdź w **Codex** w aplikacji.

## Krok 3: Pobierz folder Edelop OS

1. Wejdź na [github.com/edelop/edelop-os](https://github.com/edelop/edelop-os). Nie potrzebujesz tam konta ani logowania - strona jest publiczna.
2. Kliknij zielony przycisk **Code** (u góry po prawej, nad listą plików), a potem **Download ZIP** z rozwiniętej listy. Plik zapisze się w Twoich Pobranych.
3. Rozpakuj pobrany plik ZIP. Na Macu: Safari zwykle rozpakowuje go sam w Pobranych, a jeśli widzisz plik `edelop-os-main.zip`, kliknij go dwa razy. Na Windowsie: prawy przycisk na pliku ZIP i **Wyodrębnij wszystko**. Powstanie folder **edelop-os-main** z plikami tego startera. Przenieś go tam, gdzie trzymasz dokumenty - na przykład do folderu **Dokumenty**. To będzie dom Twojego systemu, więc wybierz miejsce, które łatwo znajdziesz.

Sprawdź, czy trafiłaś/eś we właściwy folder: powinny być w nim widoczne pliki **README.md** i **START-TUTAJ.md**. Jeśli widzisz w środku tylko jeden folder (tak bywa po rozpakowaniu ZIP-a, zwłaszcza na Windowsie) - to ten w środku jest właściwy.

## Krok 4: Otwórz ten folder w aplikacji

**W Claude:** w zakładce **Code** zobaczysz pole do wpisania wiadomości (jeśli nie, kliknij **+ New session** na pasku po lewej albo naciśnij Cmd+N na Macu, Ctrl+N na Windowsie). W polu wiadomości ustawiasz dwie rzeczy: środowisko - zostaw **Local**; folder - kliknij **Select folder** i wskaż folder rozpakowany w Kroku 3. Obok przycisku wysyłania są jeszcze lista modeli (zostaw ten, który jest ustawiony) i przełącznik trybu pracy (na razie go nie ruszaj - wyjaśnienie w Kroku 5).

**W Codex:** poszukaj opcji otwarcia folderu albo dodania projektu - **Open folder** / **Otwórz folder** / **Add new project** (na Windowsie działa też skrót `Ctrl+O`). Wskaż folder rozpakowany w Kroku 3.

Jeśli aplikacja zapyta, czy ufasz temu folderowi - zatwierdź. Jeśli nie zapyta, to też w porządku.

## Krok 5: Start

Napisz w oknie rozmowy:

- w Claude: **przeczytaj CLAUDE.md i zacznij onboarding**
- w Codex: **przeczytaj AGENTS.md i zacznij onboarding**

(Samo **zaczynajmy** zwykle też zadziała - asystent czyta plik zasad na starcie.)

Od tej chwili prowadzi Cię asystent - przywita się, zada kilka pytań i krok po kroku zbuduje z Tobą Twój system.

Jeszcze jedno, ważne. W Claude na planach Pro, Max i Team aplikacja startuje w trybie **Auto**: asystent sam zapisuje pliki, a każdą zmianę widzisz potem w panelu zmian (licznik w stylu `+12 -1` nad rozmową). Przed skasowaniem albo nadpisaniem czegoś dużego i tak pyta wprost. Jeśli wolisz zatwierdzać każdą zmianę osobiście, przełącz tryb na **Manual** przełącznikiem obok przycisku wysyłania - asystent wytłumaczy oba tryby w Etapie 0. Twój system to zwykłe pliki tekstowe, które zawsze da się poprawić. W Codex działa podobnie: aplikacja pokazuje zmiany, a ile zatwierdzasz ręcznie, ustawiasz w jej opcjach.

## Dla lubiących terminal (opcjonalnie)

Nie musisz tego robić. Aplikacja z Kroku 2 wystarcza w zupełności. Ale jeśli wolisz pracować w terminalu:

**Claude Code**

```
curl -fsSL https://claude.ai/install.sh | bash      # Mac
irm https://claude.ai/install.ps1 | iex            # Windows (PowerShell)
```

**Codex CLI**

```
curl -fsSL https://chatgpt.com/codex/install.sh | sh    # Mac
```

Potem otwierasz terminal w folderze z Kroku 3 i uruchamiasz `claude` albo `codex`. Logowanie odbywa się w przeglądarce, tak samo jak w aplikacji.

## Problemy?

- **Zakładka Code w Claude prosi o zalogowanie w przeglądarce** - dokończ logowanie w przeglądarce i uruchom aplikację ponownie.
- **Asystent nie pyta mnie o zgodę i sam zmienia pliki** - to tryb Auto, domyślny w Claude (patrz Krok 5). Jeśli chcesz zatwierdzać każdą zmianę, przełącz tryb na Manual przełącznikiem obok przycisku wysyłania.
- **Windows: zakładka Code prosi o Git** - to normalne przy pierwszym uruchomieniu. Zainstaluj [Git for Windows](https://git-scm.com/downloads/win) i uruchom aplikację ponownie.
- **Napisałaś/eś "zaczynajmy", a asystent nie zaczyna onboardingu** - najpewniej otwarty jest folder o jeden poziom za wysoko (patrz uwaga w Kroku 3). Zamknij go i otwórz ten, w którym widać README.md i START-TUTAJ.md.
- **Aplikacja mówi, że potrzebujesz planu** (w Claude: zakładka Code prosi o wykupienie planu) - Twoje konto jest na planie darmowym. W Claude: [claude.ai/upgrade](https://claude.ai/upgrade), wybierz Pro, Max albo Team. W ChatGPT: wybierz Plus albo wyżej. Potem zaloguj się jeszcze raz.
- **Coś innego nie gra** - po prostu opisz problem asystentowi po polsku. Zwykle sam podpowie, co poprawić.
