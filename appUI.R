source("functions.R")

library(shiny)
library(shinyFiles)

skijumper = function(input){
  gsub(" ", "%20", input$skijumper)
}

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
               "Wisla",
               "Ruka",
               "Nizhny Tagil",
               "Engelberg",
               "Oberstdorf",
               "Garmisch-Partenkirchen",
               "Innsbruck",
               "Bischofshofen",
               "Titisee-Neustadt",
               "Zakopane",
               "Lahti",
               "Willingen",
               "Klingenthal",
               "Rasnov",
               "Planica")
        ),
        
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Wisla'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2020.11.22",
                 "2020.11.21")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Ruka'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2020.11.28",
                 "2020.11.29")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Nizhny Tagil'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2020.12.05",
                 "2020.12.06")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Engelberg'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2020.12.19",
                 "2020.12.20")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Oberstdorf'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2020.12.29")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Garmisch-Partenkirchen'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2021.01.01")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Innsbruck'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2021.01.03")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Bischofshofen'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2021.01.06")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Titisee-Neustadt'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2021.01.09",
                 "2021.01.10")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Zakopane'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2021.01.16",
                 "2021.01.17",
                 "2021.02.13",
                 "2021.02.14")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Lahti'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2021.01.23",
                 "2021.01.24")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Willingen'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2021.01.30",
                 "2021.01.31")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Klingenthal'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2021.02.06",
                 "2021.02.07")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Rasnov'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2021.02.19",
                 "2021.02.20")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Planica'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2021.03.25",
                 "2021.03.26",
                 "2021.03.28",
                 "2021.03.28")),),
      ),
      
      conditionalPanel(
        condition = "input.chooseofseason == '2020'",
        selectInput
        ("chooseofplace", "Wybierz miejsce:",
          list("Wybierz poniżej",
               "Wisla",
               "Ruka",
               "Nizhny Tagil",
               "Klingenthal",
               "Engelberg",
               "Oberstdorf",
               "Garmisch-Partenkirchen",
               "Innsbruck",
               "Bischofshofen",
               "Val di Fiemme",
               "Titisee-Neustadt",
               "Zakopane",
               "Willingen",
               "Bad Mitterndorf",
               "Rasnov",
               "Lahti",
               "Oslo",
               "Lillehammer")
        ),
        
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Wisla'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2019.11.23",
                 "2019.11.24")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Ruka'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2019.11.30")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Nizhny Tagil'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2019.12.07",
                 "2019.12.08")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Klingenthal'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2019.12.14",
                 "2019.12.15")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Engelberg'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2019.12.21",
                 "2019.12.22")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Oberstdorf'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2019.12.29")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Garmisch-Partenkirchen'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2020.01.01")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Innsbruck'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2020.01.04")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Bischofshofen'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2020.01.06")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Val di Fiemme	'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2020.01.11",
                 "2020.01.12")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Titisee-Neustadt'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2020.01.18",
                 "2020.01.19")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Zakopane'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2020.01.25",
                 "2020.01.26")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Sapporo'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2020.02.01",
                 "2020.02.02")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Willingen'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2020.02.08")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Bad Mitterndorf'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2020.02.15",
                 "2020.02.16")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Rasnov'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2020.02.21",
                 "2020.02.22")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Lahti'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2020.02.28",
                 "2020.02.29",
                 "2020.03.01")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Oslo'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2020.03.07")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Lillehammer'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2020.03.09",
                 "2020.03.10")),),

        
        ),
      
      conditionalPanel(
        condition = "input.chooseofseason == '2019'",
        selectInput
        ("chooseofplace", "Wybierz miejsce:",
          list("Wybierz poniżej",
               "Wisla",
               "Ruka",
               "Nizhny Tagil",
               "Engelberg",
               "Oberstdorf",
               "Garmisch-Partenkirchen",
               "Bischofshofen",
               "Val di Fiemme",
               "Zakopane",
               "Sapporo",
               "Oberstdorf",
               "Lahti",
               "Willingen",
               "Oslo",
               "Lillehammer",
               "Trondheim",
               "Vikersund",
               "Planica")
        ),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Wisla'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2018.11.17",
                 "2018.11.18")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Ruka'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2018.11.24",
                 "2018.11.25")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Nizhny Tagil	'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2018.12.01",
                 "2018.12.02")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Engelberg'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2018.12.15",
                 "2018.12.16")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Oberstdorf'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2018.12.30")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Garmisch-Partenkirchen'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2019.01.01")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Innsbruck'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2019.01.04")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Bischofshofen'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2019.01.06")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Val di Fiemme'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2019.01.12",
                 "2019.01.13")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Zakopane'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2019.01.19",
                 "2019.01.20")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Sapporo'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2019.01.26",
                 "2019.01.27")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Oberstdorf'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2019.02.01",
                 "2019.02.02",
                 "2019.02.03")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Lahti'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2019.02.09",
                 "2019.02.10")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Willingen'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2019.02.15",
                 "2019.02.16",
                 "2019.02.17")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Oslo'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2019.03.09",
                 "2019.03.10")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Lillehammer'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2019.03.12")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Trondheim'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2019.03.14")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Vikersund'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2019.03.16",
                 "2019.03.17")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Planica'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2019.03.22",
                 "2019.03.23",
                 "2019.03.24")),),
        
        ),
      
      conditionalPanel(
        condition = "input.chooseofseason == '2018'",
        selectInput
        ("chooseofplace", "Wybierz miejsce:",
          list("Wybierz poniżej",
               "Wisla",
               "Ruka",
               "Nizhny Tagil",
               "Titisee-Neustadt",
               "Engelberg",
               "Oberstdorf",
               "Garmisch-Partenkirchen",
               "Innsbruck",
               "Bischofshofen",
               "Bad Mitterndorf",
               "Zakopane",
               "Willingen",
               "Lahti",
               "Oslo",
               "Lillehammer",
               "Trondheim",
               "Vikersund",
               "Planica")
        ),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Wisla'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2017.11.18",
                 "2017.11.19")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Ruka'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2017.11.25",
                 "2017.11.26")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Nizhny Tagil'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2017.12.02",
                 "2017.12.03")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Titisee-Neustadt'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2017.12.09",
                 "2017.12.10")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Engelberg'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2017.12.16",
                 "2017.12.17")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Oberstdorf'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2017.12.30")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Garmisch-Partenkirchen'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2018.01.01")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Innsbruck'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2018.01.04",
                 "2019.03.17")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Bischofshofen'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2018.01.06")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Bad Mitterndorf'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2018.01.13")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Zakopane'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2018.01.27",
                 "2018.01.28")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Willingen'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2018.02.03",
                 "2018.02.04")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Lahti'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2018.03.03",
                 "2018.03.04")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Oslo'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2018.03.10",
                 "2018.03.11")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Lillehammer'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2018.03.13")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Trondheim'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2018.03.15")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Vikersund'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2018.03.17",
                 "2018.03.18")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Planica'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2018.03.23",
                 "2018.03.24",
                 "2018.03.25")),),
        
      ),
      
      conditionalPanel(
        condition = "input.chooseofseason == '2017'",
        selectInput
        ("chooseofplace", "Wybierz miejsce:",
          list("Wybierz poniżej",
               "Ruka",
               "Klingenthal",
               "Lillehammer",
               "Engelberg",
               "Oberstdorf",
               "Garmisch-Partenkirchen",
               "Innsbruck",
               "Bischofshofen",
               "Wisla",
               "Zakopane",
               "Willingen",
               "Oberstdorf",
               "Sapporo",
               "Pyeongchang",
               "Oslo",
               "Trondheim",
               "Vikersund",
               "Planica")
        ),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Ruka'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2016.11.25",
                 "2016.11.26")),),
        
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Klingenthal'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2020.11.22",
                 "2020.11.21")),),
        
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Wisla'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2016.12.03",
                 "2016.12.04")),),
        
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Lillehammer'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2016.12.10",
                 "2016.12.11")),),
        
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Engelberg'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2016.12.17",
                 "2016.12.18")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Oberstdorf'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2016.12.30")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Garmisch-Partenkirchen'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2017.01.01")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Innsbruck'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2017.01.04")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Bischofshofen'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2017.01.06")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Wisla'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2017.01.14",
                 "2017.01.15")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Zakopane'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2017.01.21",
                 "2017.01.22")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Willingen'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2017.01.28",
                 "2017.01.29")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Oberstdorf'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2017.02.04",
                 "2017.02.05")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Wisla'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2020.11.22",
                 "2020.11.21")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Sapporo'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2017.02.11",
                 "2017.02.12")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Pyeongchang'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2017.02.15",
                 "2017.02.16")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Oslo'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2017.03.11",
                 "2017.03.12")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Trondheim'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2017.03.16")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Vikersund'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2017.03.18",
                 "2017.03.19")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Planica'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2017.03.24",
                 "2017.03.25",
                 "2017.03.26")),),
      
      ),
      
      conditionalPanel(
        condition = "input.chooseofseason == '2016'",
        selectInput
        ("chooseofplace", "Wybierz miejsce:",
          list("Wybierz poniżej",
               "Klingenthal",
               "Lillehammer",
               "Nizhny Tagil",
               "Engelberg",
               "Oberstdorf",
               "Garmisch-Partenkirchen",
               "Innsbruck",
               "Bischofshofen",
               "Willingen",
               "Zakopane",
               "Sapporo",
               "Oslo",
               "Trondheim",
               "Vikersund",
               "Lahti",
               "Kuopio",
               "Almaty",
               "Wisla",
               "Titisee-Neustadt",
               "Planica")
        ),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Klingenthal'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2015.11.21",
                 "2015.11.22")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Lillehammer'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2015.12.05",
                 "2015.12.06")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Nizhny Tagil	'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2015.12.12",
                 "2015.12.13")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Engelberg'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2015.12.19",
                 "2015.12.20")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Oberstdorf'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2015.12.29")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Garmisch-Partenkirchen'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2016.01.01")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Innsbruck'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2016.01.03")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Bischofshofen'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2016.01.06")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Willingen'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2016.01.09",
                 "2016.01.10")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Zakopane'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2016.01.23",
                 "2016.01.24")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Sapporo'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2016.01.30",
                 "2016.01.31")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Oslo'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2016.02.06")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Trondheim'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2016.02.10")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Vikersund'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2016.02.12",
                 "2016.02.13",
                 "2016.02.14")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Lahti'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2016.02.19",
                 "2016.02.21")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Vikersund'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2017.03.18",
                 "2017.03.19")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Kuopio'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2016.02.22",
                 "2016.02.23")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Almaty'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2016.02.27",
                 "2016.02.28")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Wisla'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2016.03.04")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Titisee-Neustadt'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2016.03.12")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Planica'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2016.03.17",
                 "2016.03.18",
                 "2016.03.19",
                 "2016.03.20")),),
        
      ),
      
      conditionalPanel(
        condition = "input.chooseofseason == '2015'",
        selectInput
        ("chooseofplace", "Wybierz miejsce:",
          list("Wybierz poniżej",
               "Klingenthal",
               "Ruka",
               "Lillehammer",
               "Nizhny Tagil",
               "Engelberg",
               "Oberstdorf",
               "Garmisch-Partenkirchen",
               "Innsbruck",
               "Bischofshofen",
               "Bad Mitterndorf",
               "Wisla",
               "Zakopane",
               "Sapporo",
               "Willingen",
               "Titisee-Neustadt",
               "Vikersund",
               "Lahti",
               "Kuopio",
               "Trondheim",
               "Oslo",
               "Planica")
        ),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Klingenthal'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2014.11.22",
                 "2014.11.23")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Ruka'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2014.11.28",
                 "2014.11.29")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Lillehammer'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2014.12.06",
                 "2014.12.07")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Nizhny Tagil'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2014.12.13",
                 "2014.12.14")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Engelberg'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2014.12.20",
                 "2014.12.21")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Oberstdorf'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2014.12.29")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Garmisch-Partenkirchen'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2015.01.01")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Innsbruck'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2015.01.04")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Bischofshofen'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2015.01.06")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Bad Mitterndorf'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2015.01.10")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Wisla'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2015.01.15")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Zakopane'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2015.01.17",
                 "2015.01.18")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Sapporo'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2015.01.24",
                 "2015.01.25")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Willingen'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2015.01.30",
                 "2015.01.31",
                 "2015.02.01")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Titisee-Neustadt'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2015.02.07",
                 "2015.02.08")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Vikersund'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2015.02.14",
                 "2015.02.15")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Lahti'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2015.03.07",
                 "2015.03.08")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Kuopio'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2015.03.10")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Trondheim'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2015.03.12")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Oslo'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2015.03.14",
                 "2015.03.15")),),
        
        conditionalPanel(
          condition = "input.chooseofplace == 'Planica'",
          selectInput
          ("chooseofdata", "Wybierz date:",
            list("Wybierz poniżej",
                 "2015.03.20",
                 "2015.03.21",
                 "2015.03.22")),),
        
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

