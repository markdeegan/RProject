###########################################################################
# ui.r
###########################################################################
# This work was submitted as part fulfillment of the Coursera course 
# on Data Science presented by Brian Caffo, Jeff Leek and Roger Peng at the 
# Johns Hopkins Bloomberg School of Public Health
###########################################################################

# load the shiny library
library(shiny)

# create the user interfae based on pageWithSidebar, and demonstrating
# all possible inut components
shinyUI(pageWithSidebar(
  # declare the header panel with the application name
    headerPanel("Shiny R Project for Coursera Course"),
  # and a sidebar panel containing examples of each type of input
    sidebarPanel(
    # now declare each of the components in the sidebar
      # declare an ActionButton
        actionButton("action", "Action Button")
      #checkboxGroupInput	A group of check boxes
      #checkboxInput	A single check box
      #dateInput	A calendar to aid date selection
      #dateRangeInput	A pair of calendars for selecting a date range
      #fileInput	A file upload control wizard
      #helpText	Help text that can be added to an input form
      #numericInput	A field to enter numbers
      #radioButtons	A set of radio buttons
      #selectInput	A box with choices to select from
      #sliderInput	A slider bar
      #submitButton	A submit button
      #textInput	A field to enter tex
      ),
    # the fuid page also contains a mainPanel which we wil declare now
    mainPanel(
      # let's define some labels in the mainPanel
      h3("Testing values of input components")
    # end the declaration of the mainPanel
    )
  # end the declaration of the pageWithSidebar
  )
# end declaration of the shinyApp
)