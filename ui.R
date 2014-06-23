library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Nth Day Birthday Calculator"),
    sidebarPanel(
        h4('Your Birthday:'),
        dateInput('bday','',"1984-01-01"), 
        h4('No. of Days after Birthday'),
        numericInput('days', '', 10000, 
                     min = 0, max = 999999, step = 100),
        actionButton("goButton","Ask me!")
    ),
    
    mainPanel(
        h3('Outputs'),
        h4('Your birthday:'),
        verbatimTextOutput("bday"),
        h4('10000,20000 and 30000-day birthdays:'),
        verbatimTextOutput("n123bday"),
        
        plotOutput("plot")
    )
))