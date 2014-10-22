library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Illustrating inputs"),
  sidebarPanel(
    numericInput('id1', 'Numeric input, labeled id1', 0, min=0, max=10, step=1),
    numericInput('glucose', 'Glucose mg/d1', 90, min=50, max=200, step=5),
   # submitButton('Submit'),
    checkboxGroupInput("id2", "Checkbox",
                       c("Value 1" = "1",
                         "Value 2" = "2",
                         "Value 3" = "3")),
    dateInput("date", "Date:"),
    sliderInput('mu','Guess at the mean',value=70, min=62,max=74,step=0.05,)
  ),
  mainPanel(
    h3('Illustrating outputs'),
    h4('You entered'),
    verbatimTextOutput("oid1"),
    h4('Yor glucose level is:'),
    verbatimTextOutput("inputValue"),
    h4('Which resulted in a prediction of'),
    verbatimTextOutput("prediction"),
    h4('You entered'),
    verbatimTextOutput("oid2"),
    h4('You entered'),
    verbatimTextOutput("odate"),
    plotOutput('newHist')
  )
))