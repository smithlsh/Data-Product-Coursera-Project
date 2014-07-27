library(shiny)
library(ggplot2)
# Note: as a personal side goal I wanted to learn nonlinear regression.
# I based my project off the o-ring example in Julian Faraway's book:
# Extending the Linear Model with R.  The data is "kluggy".  The
# project is just a (small) proof of (small) concept.
source("orings.R")
source("heatShields.R")

# Define server logic required to plot various variables against mpg
shinyServer(function(input, output) {
  output$title<-reactive({
    if (input$part=="orings"){
      "Plot of O-ring"
    }else{
      "Plot of Heat Shield"  
    }
  })
  
  output$partPlot <- renderPlot({
    if (input$part=="orings"){
      print(plotOring(input$factor))
    }else{
      print(plotHtShield(input$factor))
    }
  })
})

