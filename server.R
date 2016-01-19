
## This function takes the user-inputed molecular formula and calculates the corresponding molecular mass,
## based on the atomic masses of the constituent atoms. 


library(shiny)

atomicmass <- c(12.01, 1.008, 14.01, 16.00, 32.07)
names(atomicmass) <- c("C","H","N","O","S")

shinyServer(function(input, output) {


})
