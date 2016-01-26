
## This function takes the user-inputed molecular formula for a molecule containing any of the the elements 
## carbon, hydrogen, nitrogen, oxygen and sulfur; and calculates the corresponding molecular mass,
## based on the atomic masses of the constituent atoms. 


library(shiny)

## Atomic masses (i.e. coefficients for predicting molecular mass)
atomicmass <- c(12.01, 1.008, 14.01, 16.00, 30.97, 32.07)
names(atomicmass) <- c("C","H","N","O", "P", "S")


## Function takes input of number of carbon (C), hydrogen (H), nitrogen (N), oxygen (O), phosphorus (P) and sulfur (S) atoms 
## in a molecule,and returns the molecular mass. Function also requires vector of atomic masses.
molecularmass <- function (nC = 0, nH = 0, nN = 0, nO = 0, nP = 0, nS = 0, atomicmasses) {
                        round(sum(nC*atomicmasses["C"],
                                  nH*atomicmasses["H"],
                                  nN*atomicmasses["N"],
                                  nO*atomicmasses["O"],
                                  nP*atomicmasses["P"],
                                  nS*atomicmasses["S"]), 2)        
}


shinyServer(function(input, output) {
        
        ## Render the input number of atoms as a molecular formula using HTML 
        output$molform <- renderText({paste("C", tags$sub(input$nC), "H", tags$sub(input$nH), "N", tags$sub(input$nN), 
                                            "O", tags$sub(input$nO), "P", tags$sub(input$nP), "S", tags$sub(input$nS))})
        
        ## Calculate the molecular mass by calling the molecularmass function and passing the fucntion the input values
        output$molmass <- renderText(molecularmass(nC = input$nC, nH = input$nH, nN = input$nN, nO = input$nO, nP = input$nP,
                                                   nS = input$nS, atomicmass))

})

