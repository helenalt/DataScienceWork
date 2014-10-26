library(shiny)
library(ISLR)


shinyUI(pageWithSidebar(
  
  headerPanel("Enter Prospective Customer Data"),
  sidebarPanel(
    numericInput('balance', 'Outnding Credit Card Balance', 0),
    numericInput('income', 'Income', 0),
    submitButton('Submit')
      ),
  mainPanel(
    h3('Quick Customer Risk Estimate is:'),
    h4('For Card Balance:'),
    verbatimTextOutput("obalance"),
    h4('And Annual Income:'),
    verbatimTextOutput("oincome"),
    h4('Customer Default Rating is: '),
    verbatimTextOutput("prediction") #,
 #  plotOutput('newHist')
  )
))