library(shiny)

ui <- fluidPage(
  sliderInput("x",label="If x is",min=1,max=50,value=30),
  sliderInput("y",label = "and y is",min=1,max=50,value=5),
  "then, x times y is", 
  textOutput("product",inline = TRUE)
)

server <- function(input, output, session) {
  output$product<-renderText({
    paste0(input$x*input$y,".")
  })
}

shinyApp(ui, server)