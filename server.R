
## This function takes the user-inputed molecular formula for a molecule containing any of the the elements 
## carbon, hydrogen, nitrogen, oxygen and sulfur; and calculates the corresponding molecular mass,
## based on the atomic masses of the constituent atoms. 


library(shiny)

## Atomic masses (i.e. coefficients for predicting molecular mass)
atomicmass <- c(12.01, 1.008, 14.01, 16.00, 32.07)
names(atomicmass) <- c("C","H","N","O","S")


## Function takes input of number of carbon (C), hydrogen (H), nitrogen (N), oxygen (O) and sulfur (S) atoms in a molecule,
## and returns the molecular mass. Function also requires vector of atomic masses.
molecularmass <- function (nC, nH, nN, nO, nS, atomicmasses) {
                        round(sum(nC*atomicmasses["C"],
                                  nH*atomicmasses["H"],
                                  nN*atomicmasses["N"],
                                  nO*atomicmasses["O"],
                                  nS*atomicmasses["S"]), 2)        
}


shinyServer(function(input, output) {
        
        ## Render the input number of atoms as a molecular formula using HTML 
        output$molform <- renderText({paste("C", tags$sub(input$nC), "H", tags$sub(input$nH), "N", tags$sub(input$nN), 
                                            "O", tags$sub(input$nO), "S", tags$sub(input$nS))})
        
        ## Calculate the molecular mass by calling the molecularmass function and passing the fucntion the input values
        output$molmass <- renderText(molecularmass(nC = input$nC, nH = input$nH, nN = input$nN, nO = input$nO, nS = input$nS,
                                                   atomicmass))

})
