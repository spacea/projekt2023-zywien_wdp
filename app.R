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
    
    titlePanel(h1("Ski Harvesting", align = "center")),
      tabsetPanel(
        tabPanel("Konkurs",
          column(5,
            selectInput
              ("chooseofseason", "Wybierz sezon: ",
                yeariteration()
              ),
          actionButton("harvestdata", "Kilknij, aby wprowadzić"),
          uiOutput("chosen"),
          plotOutput("chosengraph"),
          uiOutput("chosentable"))),
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
            plotOutput("chosengraph2", width = "1280", height = "720px", inline = FALSE),
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
        content = read.csv(comp)
        content = content[-1]
        
        results = sqldf("select * from content where Narodowość = 'POL' and 
                  [Suma.punktow] != 'Tq' order by Miejsce")
          
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
        page = read_html(link)
        data = page %>% html_elements("table#ctl00_MainContent_gvKonkursyMie") 
        dane = html_table(data)
        dane = as.data.frame(dane)
        dane = dane[,-c(7,8,10)]
        
        graph = sqldf("select * from dane where Miejsce is not NULL and 
                      [Data.Konkursu] between '2022.11.05' and '2023.04.02'")
        output$chosengraph2 <- renderPlot({
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


