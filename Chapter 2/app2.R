library(shiny)

ui <- fluidPage(
  textOutput("text"),
  verbatimTextOutput("code"),
  tableOutput("static"),
  dataTableOutput("dynamic"),
  plotOutput("plot",width = "400px")
)

server <- function(input, output, session) {
  output$text<-renderPrint({
    "Hello friend!"
  })
  
  output$code<-renderText({
    "Hello friend!"
  })
  
  output$static<-renderTable(head(mtcars))
  output$dynamic<-renderDataTable(mtcars,options = list(pageLength=5))
  output$plot<-renderPlot(plot(1:5),res=96)
  
}

shinyApp(ui, server)