source("functions.R")
source("query.R")

library(shiny)
library(dplyr)
library(RSelenium)
library(sqldf)
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
      condition = "input.chooseofdata == 'Konkurs'",
      selectInput
      ("chooseofseason", "Wybierz sezon: ",
        yeariteration()
      ),
      
      conditionalPanel(
        condition = "input.chooseofseason == '2021'",
        selectInput
        ("chooseofplace", "Wybierz miejsce:",
          list("Wybierz poniżej",
               "'Wisla'",
               "'Nizhny Tagil'")
        ),
        
        conditionalPanel(
          condition = "input.chooseofplace == \"'Wisla'\"",
          selectInput
          ("chooseofdate", "Wybierz date:",
            list("Wybierz poniżej",
                 "'2020.11.22'")
          ),
        ),  
      ),
    ),
    
    conditionalPanel(
      condition = "input.chooseofdata == 'Zawodnicy'",
      textInput
        ("skijumper", "Wpisz imię i nazwisko zawodnika: "
        ),
    ),
    actionButton("harvestdata", "Zbierz dane"),
      uiOutput("chosen")
      
  ),
  
  server = function(input, output, session) {
    observeEvent(input$harvestdata, {
      
      season = input$chooseofseason
      place = input$chooseofplace
      date_ = input$chooseofdate
      
      if(season == "Wybierz poniżej" || place == "Wybierz poniżej" || 
         date_  == "Wybierz poniżej" || input$chooseofdata == "Wybierz poniżej")
      {
        stop("wszystkie dane muszą zostać wybrane!")
      }
      if(input$chooseofdata == "Konkurs")
      {
        rd = rsDriver(port = 4444L,
                      browser = "firefox",
                      chromever = NULL)
        remDr = rd[["client"]]
        remDr$navigate("http://www.wyniki-skoki.hostingasp.pl/WyborZawodow.aspx")
        
        concat_choose_season = paste("//*/option[@value =", season, "]")
        choose_season = remDr$findElement(using = 'xpath', concat_choose_season)
        choose_season$clickElement()
        Sys.sleep(1)
        
        choose_wc = remDr$findElement(using = 'xpath', "//*/option[@value = 'Puchar Świata']")
        choose_wc$clickElement()
        Sys.sleep(1)
        
        concat_choose_place = paste("//*/option[@value =", place ,"]")
        choose_place = remDr$findElement(using = 'xpath', concat_choose_place)
        choose_place$clickElement()
        Sys.sleep(1)
        
        click_place = remDr$findElement(using = 'xpath', "//*/img[@src = 'plus.png']")
        click_place$clickElement()
        Sys.sleep(1)
        
        concat_choose_date = paste0("(//td[contains(text(),", date_ ,")])[2]//following::td/a")
        choose_date = remDr$findElement(using = "xpath", concat_choose_date)
        choose_date$clickElement()
        Sys.sleep(1)
        
        url = choose_date$getCurrentUrl()
        url = toString(url)
        
        remDr$close()
        system("taskkill /im java.exe /f", intern=FALSE, ignore.stdout=FALSE)
        
        page = read_html(url)
        
        data = page %>% 
          html_elements("table#ctl00_MainContent_GridView1") 
        
        
        table_content = html_table(data)
        table_content = data.frame(table_content)
        table_content = table_content[ ,-c(7,8,10)]
        
        results = sqldf("select * from table_content where Narodowość = 'POL' and 
                [Suma.punktow] != 'Tq' order by Miejsce")
        
        #select_data() 
        
        output$chosen = renderTable({ 
          results
        })
      }
    })
  }
)


