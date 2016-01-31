 
# Calculating the molecular mass for a molecular formula representing the composition of a chemical compound
# is an important operation is chemistry. This Shiny application allows a user to calculate the molecular mass for chemical 
# compounds containing the elements carbon (C), hydrogen (H), nitrogen (N), oxygen (O), phosphorus (P) and sulfur (S).

library(shiny)
require(markdown)

shinyUI(fluidPage(

  # Application title
  titlePanel("Molecular Mass Calculator"),
        h4("Enter the number of carbon (C), hydrogen (H), oxygen (O), nitrogen (N), phosphorus (P) and sulfur (S) atoms in your 
           compound to calculate the molecular mass."),        
  # Sidebar with numeric inputs for number of C, H, N, O, P and S atoms in the molecule
  sidebarLayout(
    sidebarPanel(
      numericInput('nC', "C", 0, min = 0, step = 1),
      numericInput('nH', "H", 0, min = 0, step = 1),
      numericInput('nN', "N", 0, min = 0, step = 1),
      numericInput('nO', "O", 0, min = 0, step = 1),
      numericInput('nP', "P", 0, min = 0, step = 1),
      numericInput('nS', "S", 0, min = 0, step = 1)),

    # Display the molecular formula (return the user's input) and calculate the molecular mass
    mainPanel(
        h3("Your molecular formula:"),    
        htmlOutput("molform"),
        h3("Molecular mass:"),
        textOutput("molmass"),
        tabsetPanel(
                tabPanel("Hint",
                         h4("Hint:"),
                         p("E.g. The molecular formula for adenosine triphosphate (ATP) is ", 
                         "C", tags$sub(10), "H", tags$sub(16), "N", tags$sub(5), "O", tags$sub(13), "P", tags$sub(3),"."),
                         p("Enter C:10, H:16, N:5, O:13, P:3, S:0 in the input fields to calculate the molecular mass of 
                           507.19.")),
                
                tabPanel("Documentation", includeMarkdown("molecularmass.md")))
        )
    )
    )
  )

