library(shiny)
library(ggplot2)

datasets <- c("economics", "faithfuld", "seals")
ui <- fluidPage(
  selectInput("dataset", "Dataset", choices = datasets),
  verbatimTextOutput("summary"),
  plotOutput("plot") #1st bug here should be plotoutput not table output
)

server <- function(input, output, session) {
  dataset <- reactive({
    get(input$dataset, "package:ggplot2")
  })
  output$summary <- renderPrint({ #2nd bug here misspelled summary
    summary(dataset())
  })
  output$plot <- renderPlot({
    plot(dataset()) #3rd bug here needs ()
  }, res = 96)
}

shinyApp(ui, server)