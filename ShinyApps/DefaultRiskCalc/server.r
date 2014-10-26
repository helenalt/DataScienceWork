library(shiny)
library(ISLR)
data(Default)

risk <- function(balance, income) {
  if (balance< mean(Default[,"balance"])) {
      if (income>mean(Default[,"income"]))
        "Low"
      else
        "Medium"
  }
  else {
      if (income>mean(Default[,"income"])) 
        "Hight"
      else
        "Medium"
  }
}


shinyServer(
  function(input, output) {
    output$obalance <- renderText({input$balance})
    output$oincome <- renderText({input$income})
    output$prediction <- renderText({risk(input$balance, input$income)})
 
 #   output$odate <- renderPrint({input$date})    
#    output$newHist <- renderPlot({
 #     hist(galton$child, xlab='child height', col='lightblue',main='Histogram')
#      mu <- input$mu
#      lines(c(mu,mu), c(0,200),col="red",lwd=5)
#      mse <- mean((galton$child - mu)^2)
#      text(63,150,paste("mu = ", mu))
#      text(63,140,paste("MSE = ", round(mse,2)))
    #})
  }
)