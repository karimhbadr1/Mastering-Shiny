library(shiny)

ui <- fluidPage(
  numericInput("count",label = "Number of values",value = 100)
)

server <- function(input, output, session) {
  message("The value of input is:",input$count)
}

shinyApp(ui, server)