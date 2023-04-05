#v 0.2.34
#info: content w lewych slash oznacza, co narazie jest do zmiany

output$chosen = renderUI({
  typeofdata <<- input$chooseofdata
  season <<- input$chooseofseason
  place <<- input$chooseofplace
  date_ <<- input$chooseofdate
  
  div(
    p(paste("Wybrałeś: ", typeofdata)),
    p(paste("Wybrałeś sezon: ", season)),
    p(paste("Wybrałeś miejsce: ", place)),
    p(paste("Wybrałeś date: ", date_)),
  )
})
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
remDr$remoteServerAddr(check = TRUE)

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

next_element <- remDr$findElement(using = "xpath", 
                                        "(//td[contains(text(),'2020.11.22')])[2]//following::td/a")

next_element$getElementText()
next_element$clickElement()

next_element$getCurrentUrl()


#link do danych
url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2021&id=50&rodzaj=M"
url = toString(url)


page = read_html(url)

data = page %>% 
  html_elements("table#ctl00_MainContent_GridView1") 

table_content = html_table(data)
table_content = data.frame(table_content)
table_content = table_content[ ,-c(7,8,10)]
table_content

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

remDr$close()

rd$stop()

#usunięcie tymczasowego pliku

unlink("temp.xlsx")


remDr$close()
rd$server$stop()

source("functions.R")

library(shiny)
library(dplyr)
library(RSelenium)
library(rvest)

shinyApp(
  ui = fluidPage(
    tags$head(tags$link(rel="stylesheet", 
                        type="text/css",
                        href="style.css")),
    tags$head(tags$script(src="scripts.js")),
    
    titlePanel(h1("Ski Harvesting", align = "center")),
    selectInput
    ("chooseofdata", "Wybierz rodzaj danych: ",
      list("Wybierz poniżej",
           "Konkurs",
           "Zawodnicy")
    ),
    
    conditionalPanel(
      condition = "input.chooseofdata == 'Zawodnicy'",
      textInput
      ("skijumper", "Wpisz imię i nazwisko zawodnika: "
      ),
    ),
    actionButton("harvestdata", "Zbierz dane"),
    textInput("colms", "Wybierz jakie kolumny mają zostać wybrane"),
    textInput("where", "podaj warunek"),
    textInput("order_by", "uporządkuj dane"),
    uiOutput("chosen")
    
  ),
  
  server = function(input, output, session) {
    observeEvent(c(input$harvestdata,input$colms, input$where, input$order_by), {
      
      if(input$chooseofdata == "Konkurs")
      {
        
        url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2021&id=50&rodzaj=M"
        url = toString(url)
        page = read_html(url)
        
        data = page %>% 
          html_elements("table#ctl00_MainContent_GridView1") 
        
        table_content = html_table(data)
        table_content = data.frame(table_content)
        table_content = table_content[ ,-c(7,8,10)]
        table_content
      }
      else{
      }
    })
    filter_data = eventReactive(input$chosen, {
      if(is.null(input$colms))
      {
        input$colms = "*"
      }
      else{
        
      }
      if(!is.null(input$where))
      {
        where = paste("where", input$where)
      }
      else
      {
        
      }
      if(!is.null(input$order_by))
      {
        order_by = paste("order by", input$order_by)
      }
      else
      {
        
      }
      
      query = parse("select", input$colms ,"from table_content", where, order_by)
      results = sqldf(query)
    })
    output$chosen <- renderTable({ 
      filter_data()
    })
  })  

