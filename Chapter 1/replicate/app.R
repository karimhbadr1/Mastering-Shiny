library(shiny)

# UI
ui <- fluidPage(
    selectInput("Dataset",label = "Datasets",choices = ls("package:datasets")),
    verbatimTextOutput("summary"),
    tableOutput("table")
)

# Server
server <- function(input, output,session) {
    output$summary<-renderPrint({
        dataset<-get(input$Dataset,"package:datasets")
        summary(dataset) 
    })
    
    output$table <- renderTable({
      dataset<-get(input$Dataset,"package:datasets")
      dataset
    })

}

# Run the application 
shinyApp(ui = ui, server = server)
