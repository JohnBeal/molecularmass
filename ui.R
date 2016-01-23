 
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)


shinyUI(fluidPage(

  # Application title
  titlePanel("Molecular Mass Calculator"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      numericInput('nC', "C", 0, min = 0, step = 1),
      numericInput('nH', "H", 0, min = 0, step = 1),
      numericInput('nN', "N", 0, min = 0, step = 1),
      numericInput('nO', "O", 0, min = 0, step = 1),
      numericInput('nS', "S", 0, min = 0, step = 1)),

    # Show a plot of the generated distribution
    mainPanel(
        h3("Your molecular formula:"),    
        htmlOutput("molform"),
        h3("Molecular mass:"),
        textOutput("molmass")
    )
  )
))
