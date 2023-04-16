source("functions.R")
source("query.R")

library(shiny)
library(dplyr)
library(sqldf)
library(rvest)
library(ggplot2)

shinyApp(
  ui = fluidPage(
    tags$head(tags$link(rel="stylesheet", 
                        type="text/css",
                        href="style.css")),
    tags$head(tags$script(src="scripts.js")),
    tags$head(tags$link(rel="shortcut icon", href="favicon.ico")),
    
    titlePanel("Ski Harvesting"),
      tabsetPanel(
        tabPanel("Konkurs",
          column(5,
            selectInput
              ("chooseofseason", "Wybierz sezon: ",
                yeariteration()
              ),
          actionButton("harvestdata", "Kilknij, aby wprowadzić"),
          uiOutput("chosen"),
          plotOutput("chosengraph", width = "1066px", height = "600px", inline = FALSE),
          tableOutput("chosentable"))),
        tabPanel("Zawodnik",
          column(5,
            textInput
              ("skijumpername", "Wpisz imię zawodnika: "
              ),
            textInput
            ("skijumpersurname", "Wpisz nazwisko zawodnika: "
            ),
            actionButton("harvestdata2", "Kilknij, aby wprowadzić"),
            uiOutput("chosentable2"),
            plotOutput("chosengraph2", width = "1066px", height = "600px", inline = FALSE),
            tableOutput("chosen2")))
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
        output$chosentable = renderPrint({ 
          p("Wszystkie dane musza zostać wybrane!")
        })
      }
      else
      {
        comp = paste0(input$chooseofseason, "/", input$chooseday, ".csv")
          
        results = contest_query(comp)
        
        output$chosengraph = renderPlot({
          ggplot(results, aes(x=Suma.punktow, y=Miejsce)) + geom_point() + 
            scale_y_reverse() +
            scale_x_reverse() +
            scale_x_discrete(guide = guide_axis(angle = 90)) +
            theme(axis.text.x = element_text(size = 9))
        }, res = 192)
        
        output$chosentable = renderTable({ 
          results
        })
      }  
    })
    observeEvent(input$harvestdata2, {
      
      if(input$skijumpername == "" || input$skijumpersurname == "")
      {
        output$chosentable2 = renderPrint({ 
          p("Wpisz najpierw imię i/lub nazwisko zawodnika")
        })
      }
      else
      {
        link = choose_skijumper(input$skijumpername, input$skijumpersurname)
        link = as.character(link)

        
        graph = contestant_query(link)
        
        output$chosengraph2 = renderPlot({
          ggplot(graph, aes(x=Data.Konkursu, y=Miejsce)) + geom_point() + 
            scale_y_reverse() +
            scale_x_discrete(guide = guide_axis(angle = 90)) +
            theme(axis.text.x = element_text(size = 9))
        }, res = 192)
        
        output$chosen2 = renderTable({ 
          graph
        })
      }  
    })
  }
)


