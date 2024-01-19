library(shiny)
library(latex2exp)
library(ggplot2)

ui <- fluidPage(
  fluidRow(
    column(4,
           "Distribution 1",
           numericInput("n1",label="n",value = 1000, min=1),
           numericInput("mean1",label="\u03BC",value=0,step=0.1),
           numericInput("sd1",label="\u03C3",value=0.5,step=0.1,min=0.1)
           ),
    column(4,
           "Distribution 2",
           numericInput("n2",label="n",value = 1000, min=1),
           numericInput("mean2",label="\u03BC",value=0,step=0.1),
           numericInput("sd2",label="\u03C3",value=0.5,step=0.1,min=0.1)
           ),
    column(4,
           "Frequency polygon",
           numericInput("bin",label="Bin width",value=0.1,step = 0.1),
           sliderInput("range",label = "range",min=-5,max=5,value = c(-3,3),step=1)
           )
  ),
  fluidRow(
    column(9,plotOutput("hist")),
    column(3,verbatimTextOutput("ttest"))
  )
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)