library(shiny)

ui <- fluidPage(
  sliderInput("vals","Select a number",value = 10,min=0,max=100,step = 5,animate = animationOptions()),
  
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)