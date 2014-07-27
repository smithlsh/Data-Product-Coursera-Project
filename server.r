library(shiny)
library(ggplot2)
# Note: As a personal side goal I wanted to learn nonlinear regression.
# I based my project off the o-ring example in Julian Faraway's book:
# Extending the Linear Model with R.  The data generated is is not meant to be
# accurate and the project is a proof of concept.
source("orings.R")
source("heatShields.R")

shinyServer(function(input, output) {
  output$title<-reactive({
    if (input$part=="orings"){
      "Plot of O-ring"
    }else{
      "Plot of Heat Shield"  
    }
  })

  # The functions plotOring and plotHtShield perform the nonlinear
  # regression and create the plot which is rendered here.
  # These functions are found in orings.R and heatShields.R which
  # are sourced above.
  output$partPlot <- renderPlot({
    if (input$part=="orings"){
      print(plotOring(input$factor))
    }else{
      print(plotHtShield(input$factor))
    }
  })
})

