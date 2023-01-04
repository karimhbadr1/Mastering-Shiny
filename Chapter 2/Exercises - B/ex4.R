library(shiny)
library(reactable)

ui <- fluidPage(
  reactableOutput("table")
)

server <- function(input, output, session) {
  output$table <- renderReactable(
    reactable(mtcars,filterable = TRUE,searchable = TRUE,highlight = TRUE,showSortable = TRUE)
  )
}

shinyApp(ui,server)