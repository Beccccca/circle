library(shiny)
library(plotrix)
library(grid)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
    
    
    
    slices <- c(1-input$radius,input$radius)
    lbls <- c(" ", "Event A")
    pie(slices, labels = lbls, main="Probability of event A")
    
    
  })
})
