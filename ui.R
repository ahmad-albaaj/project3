
library(shiny)

ui <- fluidPage(
      titlePanel("Reactive values"),
      sidebarLayout(
      sidebarPanel(selectInput("select", "Choose one:", 
                               choices = list("None" = 0,
                                              "Pic 1" = 1, 
                                              "Pic 2" = 2, 
                                              "Pic 3" = 3)),
      textOutput("display"),
      sliderInput("slider1", label = h3("Image height"), 
                                        min = 1, max = 1000, value = 500)
      ),
mainPanel(
  uiOutput("image")
)))