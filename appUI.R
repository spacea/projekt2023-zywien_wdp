source("functions.R")

library(shiny)
library(shinyFiles)

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
    ),
    
    conditionalPanel(
      condition = "input.chooseofdata == 'Zawodnicy'",
      textInput
        ("skijumper", "Wpisz imię i nazwisko zawodnika: "
        ),
    ),
      uiOutput("chosen")
      
  ),
  
  server = function(input, output) {
    output$chosen = renderUI({
      typeofdata = input$chooseofdata
      season = input$chooseofseason
      
      div(
        p(paste("Wybrałeś: ", typeofdata)),
        p(paste("Wybrałeś sezon: ", season))
      )
    })
  }
)

