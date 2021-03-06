

library(shiny)

# Load the ggplot2 package which provides
# the 'mpg' dataset.
library(ggplot2)

# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  # Filter data based on selections
  output$table <- renderDataTable({
    data <- College
    if (input$man != "All"){
      data <- data[data(row.names) == input$man,]
    }
    #if (input$cyl != "All"){
    #  data <- data[data$cyl == input$cyl,]
    #}
    #if (input$trans != "All"){
    #  data <- data[data$trans == input$trans,]
    #}
    data
  })
  
})
