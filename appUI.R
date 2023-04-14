source("functions.R")
source("query.R")

library(shiny)
library(dplyr)
library(sqldf)
library(rvest)
library(xlsx)
library(readxl)

shinyApp(
  ui = fluidPage(
    tags$head(tags$link(rel="stylesheet", 
                        type="text/css",
                        href="style.css")),
    tags$head(tags$script(src="scripts.js")),
    
    titlePanel(h1("Ski Harvesting", align = "center")),
      tabsetPanel(
        tabPanel("Konkurs",
          column(5,
            selectInput
              ("chooseofseason", "Wybierz sezon: ",
                yeariteration()
              ),
          actionButton("harvestdata", "Kilknij, aby wprowadzić"),
          uiOutput("chosen"))),
        tabPanel("Zawodnik",
          column(5,
            textInput
              ("skijumper", "Wpisz imię i nazwisko zawodnika: "
              ),
            actionButton("harvestdata2", "Kilknij, aby wprowadzić"),
          uiOutput("chosen2"))),
      ),
    ),
  server = function(input, output, session) {

    output$chosen = renderUI({
      season = input$chooseofseason
      
      day = day_choose(season)
      
      selectInput("chooseday", label ="Wybierz dzień", choices = day, multiple = FALSE)
    })   
    observeEvent(input$harvestdata, {
      
      if(input$chooseofseason == "Wybierz poniżej" || input$chooseday == "Wybierz poniżej")
      {
        stop("wszystkie dane muszą zostać wybrane!")
      }
      else
      {
        comp = paste0(input$chooseofseason,"/", input$chooseday)
        content = read.xlsx2(comp, "Sheet1", col.names = TRUE,
                             row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
        
        results = sqldf("select * from content where Narodowość = 'POL' and 
                  [Suma.punktow] != 'Tq' order by Miejsce")
          
          output$chosen = renderTable({ 
            results
          })
      }  
    })
  }
)

