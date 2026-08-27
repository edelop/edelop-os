---
name: onboarding
description: Prowadzi wieloetapowy onboarding do osobistego systemu (LLM Wiki) w tym folderze. Użyj gdy osoba chce zacząć lub kontynuować wdrożenie ("zaczynajmy onboarding", "kontynuujmy", "następny etap", "co dalej w nauce"), gdy .onboarding/postep.md ma etapy nieukończone, albo gdy osoba pyta o swój postęp we wdrożeniu.
---

Ten skill jest nakładką. Cała treść onboardingu mieszka w `procedury/onboarding/`
i działa tak samo bez tego skilla - wystarczy powiedzieć asystentowi magiczną frazę.

Zacznij od przeczytania `procedury/onboarding/README.md` - to jest router etapów
i zasady prowadzenia lekcji. Potem prowadź użytkownika przez etapy po kolei,
czytając je z plików:

1. `procedury/onboarding/etapy/etap-0-start.md`
2. `procedury/onboarding/etapy/etap-1-baza-wiedzy.md`
3. `procedury/onboarding/etapy/etap-2-codzienny-workflow.md`
4. `procedury/onboarding/etapy/etap-3-obszary-zycia.md`
5. `procedury/onboarding/etapy/etap-4-moduly-specjalne.md`
6. `procedury/onboarding/etapy/etap-5-dashboard-final.md`
7. `procedury/onboarding/etapy/etap-6-kokpit.md` (bonus)

Wczytuj TYLKO bieżący etap, nigdy kilka naraz.

Postęp zapisuj w `.onboarding/postep.md`, profil w `.onboarding/profil.md` - tak jak
opisują to pliki etapów. Nie duplikuj tutaj treści etapów: gdy się rozjadą, źródłem
prawdy jest `procedury/`.
