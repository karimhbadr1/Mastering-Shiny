library(shiny)

ui <- fluidPage(
  textOutput("greeting")
)

server <- function(input, output, session) {
  output$greeting<-renderText("Hello Human!")
}

shinyApp(ui, server)