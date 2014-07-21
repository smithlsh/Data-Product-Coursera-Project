library(shiny)
library(ggplot2)
shinyUI(pageWithSidebar(
  headerPanel("Probability of Part Failure"),
  sidebarPanel(
    selectInput("part","Part:",
                list("O-Rings"="orings","Heat Shields"="htShield")),
    selectInput("factor","Environmental Factor:",
                list("Temperature"="Temperature","Pressure"="Pressure"))
    ),
    
    mainPanel(
      h4(textOutput("title")),
      plotOutput("partPlot")
    )
  ))
  
