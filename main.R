#pierwsza wersja publiczna
# lewy slash oznacza, co narazie jest do zmiany

#potrzebne pakiety do działania

# !!!!!!!!!!!!!!!!!!!!!!!!!
#install.packages("rvest")
#install.packages("xlsx") 
#!!!!!!!!!!!!!!!!!!!!!!!!!!

#biblioteki
library(rvest)
library(xlsx)     

#link do danych
url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=50&rodzaj=M"
page = read_html(url)

#odczytanie danych ze strony
data = page %>% 
  html_elements("table#ctl00_MainContent_GridView1") 

xd = print(html_table(data))

#zapis \tymczasowo w xlsx, zmienić na CSV w przyszłości\
write.xlsx(
  xd, 
  "temp_wisla.xlsx",
  sheetName = "Shit1",
  col.names = TRUE,
  row.names = FALSE,
  append = FALSE,
  showNA = FALSE,
  password = NULL
)

#odczyt danych \zapisać jako zmienną\
read.table("temp_wisla.xlsx")

#dodatkowe info: nie można odczytać poszczególnych danych bezpośrednio ze strony
#powód: brak klas/id żeby móc to zrobić
#rozwiązanie tymczasowe: pobieranie całego pliku tymczasowo do selekcji, następnie usunięcie go

