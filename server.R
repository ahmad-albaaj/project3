
library(shiny)


server <- function(input, output) {
  
  
  # Insert Server Components here #
  
  output$display <- renderText({
    if (input$select == 0) {paste("None")}
    else {paste("value = ", selectedImage(), "-----------", "resolution = ", selectedHeight())}
  })
  
  
  
  selectedImage <- reactive({
    paste0("image_",input$select,".jpg") 
  })
  selectedHeight <- reactive({
    
    if (input$slider1 <= 300) {paste0("Small")} 
    else 
    if (input$slider1 > 300 & input$slider1 < 600) {paste0("Medium")}
    else
    {paste0("High")}
  })
  
  output$value <- renderPrint({ input$slider1})
  output$image <- renderUI({
    if (input$select != 0){
      img(src = selectedImage(), height = input$slider1) 
    }
    
    
  })
}