library(shiny)

ui <- fluidPage(
  verbatimTextOutput("a"),
  textOutput("b"),
  verbatimTextOutput("c"),
  verbatimTextOutput("d")
)

server <- function(input, output, session) {
  output$a<-renderPrint(summary(mtcars))
  output$b<-renderText("Good Morning!")
  output$c<-renderPrint(t.test(1:5,2:6))
  output$d<-renderPrint(str(lm(mpg~wt,mtcars)))
}

shinyApp(ui, server)