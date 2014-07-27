library(shiny)
library(ggplot2)
shinyUI(pageWithSidebar(
  headerPanel("Probability of Part Failure"),
  sidebarPanel(
    HTML("Select the part and "),
    HTML("the environmental factor and"),
    HTML("a plot of the probability of"),
    HTML("the part failing will be displayed."),
    p(),
    p(),
    selectInput("part","Part:",
                list("O-Rings"="orings","Heat Shields"="htShield")),
    p(),
    selectInput("factor","Environmental Factor:",
                list("Temperature"="Temperature","Pressure"="Pressure"))
    ),
    
    mainPanel(
      h4(textOutput("title")),
      plotOutput("partPlot")
    )
  ))
  
