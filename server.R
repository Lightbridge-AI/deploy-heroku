library(shiny)
library(dplyr)


shinyServer(function(input, output, session) {
  
  df <- reactive({ data })
  
  output$table <- renderTable({ df() %>% head() })
  
})
