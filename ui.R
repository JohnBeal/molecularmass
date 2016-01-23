 
# Calculating the molecular mass for a molecular formula representing the composition of a chemical compound
# is an important operation is chemistry. This Shiny application allows a user to calculate the molecular mass for chemical 
# compounds containing the elements carbon (C), hydrogen (H), nitrogen (N), oxygen (O) and sulfur (S).

library(shiny)


shinyUI(fluidPage(

  # Application title
  titlePanel("Molecular Mass Calculator"),
        h4("Enter the number of carbon (C), hydrogen (H), oxygen (O), nitrogen (N) and sulfur (S) atoms in your 
           compound to calculate the molecular mass."),        
  # Sidebar with numeric inputs for number of C, H, N, O and S atoms in the molecule
  sidebarLayout(
    sidebarPanel(
      numericInput('nC', "C", 0, min = 0, step = 1),
      numericInput('nH', "H", 0, min = 0, step = 1),
      numericInput('nN', "N", 0, min = 0, step = 1),
      numericInput('nO', "O", 0, min = 0, step = 1),
      numericInput('nS', "S", 0, min = 0, step = 1)),

    # Display the molecular formula (return the user's input) and calculate the molecular mass
    mainPanel(
        h3("Your molecular formula:"),    
        htmlOutput("molform"),
        h3("Molecular mass:"),
        textOutput("molmass")
    )
  )
))
