#v 0.2.34
#info: content w lewych slash oznacza, co narazie jest do zmiany


#biblioteki 
library(rvest)
library(xlsx)
library(ggplot2)
library(sqldf)
library(dplyr)
library(readxl)
library(RSelenium)


#uruchamianie Selenium, które posłuszy do znalezienia poszukiwanej strony
system("taskkill /im java.exe /f", intern=FALSE, ignore.stdout=FALSE)
  
rd = rsDriver(port = 4444L,
              browser = "firefox",
               chromever = NULL)
remDr = rd[["client"]]
remDr$navigate("http://www.wyniki-skoki.hostingasp.pl/WyborZawodow.aspx")


#docieranie do odpowiedniej strony
year = '2021'
concat_choose_year = paste("//*/option[@value =", year, "]")
choose_year = remDr$findElement(using = 'xpath', concat_choose_year)
choose_year$clickElement()
Sys.sleep(2)

choose_wc = remDr$findElement(using = 'xpath', "//*/option[@value = 'Puchar Świata']")
choose_wc$clickElement()
Sys.sleep(2)

place = "'Wisla'"
concat_choose_place = paste("//*/option[@value =", place ,"]")
choose_place = remDr$findElement(using = 'xpath', concat_choose_place)
choose_place$clickElement()

Sys.sleep(2)

click_place = remDr$findElement(using = 'xpath', "//*/img[@src = 'plus.png']")
click_place$clickElement()
Sys.sleep(1)

concat_choose_date = paste("(//td[contains(text(),'Wisla')])"[4])
choose_date = remDr$findElement(using = 'xpath', "(//a[contains(text(),'Wisla')])[4]")
choose_date$clickElement()

choose_date$getCurrentUrl()


#link do danych
url = choose_date$getCurrentUrl()
url = toString(url)


#odczytanie danych ze strony
page = read_html(url)

data = page %>% 
  html_elements("table#ctl00_MainContent_GridView1") 

table_content = html_table(data)


#zapis danych, które zostaną odczytane
temp_data = write.xlsx(
  table_content, 
  "temp.xlsx",
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

unlink("temp.xlsx")

#dodatkowe info: nie można odczytać poszczególnych danych bezpośrednio ze strony
#powód: brak klas/id żeby móc to zrobić
#rozwiązanie tymczasowe: pobieranie całego pliku tymczasowo do selekcji,
#zapis wyselekcjonowanych danych, następnie usunięcie go


