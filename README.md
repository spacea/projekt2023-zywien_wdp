[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-8d59dc4de5201274e310e4c54b9627a8934c3b88527886e3b421487c677d23eb.svg)](https://classroom.github.com/a/tauthlex)

# Ski Harvester
> Szukasz prostego sposobu na przeglądanie danych dotyczących skoków narciarskich? Ten program może okazać się dla Ciebie rozwiązaniem.

## Spis
* [Wstęp](#wstęp)
* [Autorzy](#autorzy)
* [Zastosowania](#zastosowania)
* [Wymagania](#wymagania)
* [Uruchamianie](#uruchamianie)
* [Wykorzystane dane](#wykorzystane-dane)
* [Dodatkowe informacje](#dodatkowe-informacje)

## Autorzy
- Aleksander Żywień
- Marcel Tomczak

## Wstęp
- Ski Harvester pobiera i wyświetla dane dotyczące skoków narciarskich w łatwy i przystępny dla użytkownika sposób.
- Program ma na celu ułatwić i przyspieszyć proces wyszukiwania informacji dla tego konkretnego sportu.


## Zastosowania
- Filtrowanie danych zawodów Pucharu Świata pod względem wybranych sezonu i daty zawodów dla zawodników.
- Filtrowanie danych zawodników.


## Wymagania/Instalacja

```r
install.packages(c("rvest", "sqldf", "dplyr", "shiny", "ggplot2"))
```

- Pakiety wymagane do poprawnego działania programu znajdują się także w pliku required_packages.R
- Wymagana wersja R - 4.2.3

## Uruchamianie

### Bez repozytorium

```r
library(shiny)
runGitHub("projekt2023-zywien_wdp", "spacea")
```
### Z pobieraniem repozytorium

- Program uruchamiamy poprzez wczytanie pliku app.R, wskutek czego otwiera nam się okno Shiny. Można także program uruchomić przez przeglądarke
- Następnie w oknie Shiny wybieramy zakładkę "Konkurs", lub "Zawodnicy".
### Obsługa modułu "Konkurs"
- W przypadku wybrania konkursu wyświetla nam się pole wyboru "Wybierz sezon". Po wybraniu ukazuje się pole: "Wybierz dzień:". Po naciśnięciu przycisku "Klknij aby wprowadzić" wyświetli nam się wykres oraz tabela wyników zawierające informację o polskich zawodnikach, którzy brali w nich udział tego dnia.
### Obsługa modułu "Zawodnicy"
- W przypadku wybrania zawodników wyświetli nam się pole "Wpisz imię zawodnika:" oraz "Wpisz nazwisko zawodnika:", gdzie możemy wpisać dane interesującej nas osoby i otrzymujemy wykres oraz tabelę z danymi o zawodach PS z sezonu 2022/2023, w których dany zawodnik brał udział.
### Możliwość zmiany treści pytania (uwaga: trzeba pobrać repozytorium do tej operacji!)
- SkiHarvester oferuje też możliwość edytowania kwerendy. Przed uruchomieniem aplikacji można uruchomić plik "query.R" i zmienić przykładowe zapytanie poprzez odhashowanie chcianej kwerendy, lub też zaprojektować własną w języku SQL. Następnie należy również odhashować/stworzyć zawartość dla danych wykresowych, znajdujących się poniżej zapytania (należy ciągle pamiętać o zahashowaniu niepotrzebnych danych, w przeciwnym razie aplikacja przestanie działać!)
- Dodatkowa informacja dla modułu zawodnicy: Jeżeli dane w osi X przestaną być widoczne lub chcesz obrócić oś Y należy w pliku app.R zahashować linie, zgodnie z opisem.


## Wykorzystane dane
- Wykorzystywana baza danych w programie - http://www.wyniki-skoki.hostingasp.pl/

## opis plików/folderów
### foldery
- z latami: zawierają dane dla konkursów z sezonów 2019-2023
- www: ikonka dla karty w przeglądarce (favicon) oraz plik z kaskadowym arkuszem styli dla aplikacji
### pliki
- README.md: instrukcja i informacje o aplikacji
- app.R: aplikacja
- functions.R: funkcje niezbędne do działania aplikacji
- query.R: zapytania dla aplikacji
- required_packages: potrzebne biblioteki do działania aplikacji
