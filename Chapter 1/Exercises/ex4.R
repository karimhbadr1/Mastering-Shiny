library(shiny)

ui <- fluidPage(
  sliderInput("x",label="If x is",min=1,max=50,value=30),
  sliderInput("y",label = "and y is",min=1,max=50,value=5),
  "then, (x*y) is",textOutput("product",inline = TRUE), br(),
  "and, (x*y) + 5 is",textOutput("product_plus5",inline = TRUE),br(),
  "and (x*y) +10 is",textOutput("product_plus10",inline = TRUE)
)

server <- function(input, output, session) {
  product<-reactive({input$x*input$y})
  output$product<-renderText({
    product()
  })
  output$product_plus5<-renderText({
    product()+5
  })
  output$product_plus10<-renderText({
    paste0(product()+10,".")
  })
}

shinyApp(ui, server)