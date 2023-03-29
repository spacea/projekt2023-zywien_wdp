#v 0.2.28
#info: content w lewych slash oznacza, co narazie jest do zmiany

#cele: dodanie możliwości analizy większej ilości konkursow

#biblioteki 
library(rvest)
library(xlsx)
library(ggplot2)
library(sqldf)
library(dplyr)
library(readxl)

#link do danych
url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=50&rodzaj=M"

#odczytanie danych ze strony
page = read_html(url)

data = page %>% 
  html_elements("table#ctl00_MainContent_GridView1") 

table_content = html_table(data)

#zapis danych, które zostaną odczytane
temp_data = write.xlsx(
  table_content, 
  "temp_wisla.xlsx",
  sheetName = "Sheet1",
  col.names = TRUE,
  row.names = TRUE,
  append = FALSE,
  showNA = TRUE,
  password = NULL
)

#odczyt danych i usunięcie niepotrzebnych kolumn


read_temp = read_excel("temp_wisla.xlsx")
read_temp
read_temp = read_temp[ ,-c(1,8,9,11)]
read_temp

#przykładowa selekcja przez zapytania w SQL + eksport wyniku jednego zapytania

query_1 = sqldf("select * from read_temp where Miejsce is not NULL")
query_2 = sqldf("select * from read_temp where Narodowość = 'POL' and Miejsce is not NULL")
query_1
query_2
zoomers = sqldf("select count([Rok.Urodzenia]) as 'Liczba zawodników urodzona w/po 2000'
from read_temp where [Rok.Urodzenia] >= 2000 and [Suma.punktow] != 'Tq'")

zoomers

zoomers_export = write.xlsx(
  zoomers,
  "zoomers_result.xlsx",
  sheetName = "Shit1",
  col.names = TRUE,
  row.names = TRUE,
  append = FALSE,
  showNA = TRUE,
  password = NULL
)

#usunięcie tymczasowego pliku

unlink("temp_wisla.xlsx")

#dodatkowe info: nie można odczytać poszczególnych danych bezpośrednio ze strony
#powód: brak klas/id żeby móc to zrobić
#rozwiązanie tymczasowe: pobieranie całego pliku tymczasowo do selekcji,
#zapis wyselekcjonowanych danych, następnie usunięcie go


