###########################################################################
# server.R
###########################################################################
# This work was submitted as part fulfillment of the Coursera course 
# on Data Science presented by Brian Caffo, Jeff Leek and Roger Peng at the 
# Johns Hopkins Bloomberg School of Public Health
###########################################################################

library(shiny)

# initially we will just declare an empty shiny server with 
# no input or output
shinyServer(function(input, output)
  # start declaration of the server function
    {
      output$answer <- renderPrint({"hello"})
  # end declaration of the server function
    }
# end declaration of the sinyServer
)