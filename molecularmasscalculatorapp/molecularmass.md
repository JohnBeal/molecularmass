---
title: "Molecular Mass Calculator"
author: "John Beal"
date: "31 January 2016"
output: html_document
---

## Molecular Mass

Relative molecular mass is an important characteristic of molecular chemical compounds. It is defined as the ratio of the mass of a molecule to the unified atomic mass unit. Its units are defined as 1/12<sup>th</sup> the mass of a <sup>12</sup>C atom.

### CHNOPS

C - carbon, H - hydrogen, N - nitrogen, O - oxygen, P - phosphorus, S - sulfur

Combinations of these six chemical elements make up most biological molecules (and a significant subset of organic molecules too). For the sake of simplicity, the initial version of the molecular mass calculator is limited to these elements. 


### Shiny App

A molecular formula of CHNOPS elements is input into the molecular mass calculator app via numeric input fields for each element. Input is restricted to integer values. 

The molecular formula corresponding to the input values is displayed for confirmation. 

The molecular mass is calculated using the input molecular formula and atomic masses for the CHNOPS elements sourced from the 
*Commission on Isotopic Abundances and Atomic Weights*. The resulting molecular mass is displayed under the title **Molecular Mass**.

#### Example - ATP

Adenosine triphosphate is an important biological chemical with a molecular formula of C<sub>10</sub>H<sub>16</sub>N<sub>5</sub>O<sub>13</sub>P<sub>3</sub>. Entering the molecular formula c:10, H:16, N:5, O:15, P:3 (S:0) in the appropriate input fields returns the desired value of 507.19.


#### Links

Molecular mass definition:

*Internation Union of Pure and Applied Chemistry* (http://goldbook.iupac.org/R05271.html)

Atomic mass values for the calculator were sourced from:

*Commission on Isotopic Abundances and Atomic Weights* (http://www.ciaaw.org) 


