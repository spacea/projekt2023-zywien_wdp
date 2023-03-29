source("functions.R")

library(shiny)
library(shinyFiles)

shinyApp(
  ui = fluidPage(
    includeScript(path = "scripts.js"),
    selectInput
    ("chooseofdata", "Wybierz rodzaj danych: ",
      list("Konkurs",
           "Zawodnicy")
    ),
    selectInput
    ("chooseofyear", "Wybierz rok: ",
      yeariteration()
    ),
    uiOutput("chosen")
  ),
  server = function(input, output) {
    output$chosen = renderUI({
      h1("Ski Harvesting")
      typeofdata = input$chooseofdata
      year = input$chooseofyear
      
      div(
        p(paste("Wybrałeś: ", typeofdata)),
        p(paste("Wybrałeś rok: ", year))
      )
    })
  }
)

