library(shiny)

dates_disabled<-c("2023-02-01", "2023-02-02")
animals<-c("dog","cat","mouse","bird","other","I hate animals")

ui <- fluidPage(
  textInput("name","What is your name?"),
  passwordInput("password","What is your password?"),
  textAreaInput("story","Tell me about yourself",rows = 3),
  numericInput("num","Number One",value = 0,min = 0,max = 100),
  sliderInput("num2","Number Two",value = 50,min = 0,max = 100),
  sliderInput("rng","Range",value = c(10,20),min = 0,max = 100),
  dateInput("dob","When were you born?",datesdisabled = dates_disabled),
  dateRangeInput("holiday","When do you want to go on holiday next?"),
  selectInput("state","What is your favourite state?",state.name,multiple = TRUE),
  radioButtons("animal","What is your favourite animal?",animals),
  radioButtons("rb","Choose one:",choiceNames = list(
    icon("angry"),
    icon("smile"),
    icon("sad-tear"),
    icon("github"),
    icon("house")
  ),
  choiceValues = list("angry","happy","sad","git","house")),
  checkboxGroupInput("animal1","What animals do you like?",animals),
  checkboxInput("cleanup","Cleanup?",value = TRUE),
  checkboxInput("Shutdown","Shutdown?"),
  fileInput("upload","Here you can upload your file"),
  actionButton("click","Click me!"),
  actionButton("drink","Drink me!",icon = icon("cocktail")),
  actionButton("click1","Click me!",class="btn-danger"),
  actionButton("drink1","Drink me!",icon=icon("cocktail"),class="btn-lg btn-success"),
  fluidRow(
    actionButton("eat","eat me!",class="btn-block")
  )
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)