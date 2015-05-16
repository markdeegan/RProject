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
        actionButton("action", "Action Button Label", icon("calendar")),
        
      #checkboxGroupInput	A group of check boxes
      
      #checkboxInput	A single check box
      
      # declare a dateInput to aid date selection
        dateInput("date", "St. Patrick's Day", value="2015-03-17", 
                  min="01-01-2015", max="31-12-2015", format="yyyy-mm-dd",
                  startview="month", weekstart=1, language="en"),
      #dateRangeInput	A pair of calendars for selecting a date range
      #fileInput	A file upload control wizard
      
      #helpText	Help text that can be added to an input form
      helpText("Note: while the data view will show only",
               "the specified number of observations, the",
               "summary will be based on the full dataset."),
      
      #declare a numericInput to enter numbers
        numericInput("number-field", "Number of Seats (2..7)", 
                     min=2, max = 7, value=5),
      
      #radioButtons	A set of radio buttons
      
      # declare a selectInputBox for input choices
        selectInput("select-field", "Select Transmission Options", 
                    c("Manual 6-Speed" = "m6", 
                      "Automatic" = "auto", 
                      "CVT" = "cvt")),

      # declare a slider bar to select a value between 1 and 15
        sliderInput("slider-field", "Please select the quantity required", 
                    min=5, max = 25, value=10, step=1, ticks=TRUE),
      
      # declare a testInputField to enter text
        textInput("text-field", "Please enter some text"),

      # declare a submit button
      submitButton("Submit All Values", icon("refresh", lib="glyphicon"))
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