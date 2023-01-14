library(shiny)

ui <- fluidPage(
  textInput("name","What is your name?"),
  textOutput("greeting")
)

server <- function(input, output, session) {
  string<-reactive(paste0("Hello ",input$name,"!"))
  output$greeting<-renderText(string())
}re

shinyApp(ui, server)