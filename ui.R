library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("MT Cars Dataset analysis"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("cylinders",
                  "Choose the Number of cylinders:",
                  min = 4, step=2,
                  max = 8,
                  value = 4),
      
      selectInput("dataset", "Choose a transmission type:", 
                  choices = c("Automatic Transmission", "Manual Transmission")),
      
      helpText("
               This application will provide information on the each of the cars with in the MT Cars data set.
               The information will be shown in both numerical and plot values within the two tabs. You need to choose the number of cylinders between(4,6 and 8) and the 
               corresponding transmission type (Automatic or Manual) to get the results computed from the server and rendered in the 2 tabs.
               ")
      
      ),
    
    # Show a plot of the generated distribution
    mainPanel(      
      tabsetPanel(type = "tabs",                   
                  tabPanel
                  (
                    "Summary of miles per gallon", 
                    br(),
                    verbatimTextOutput("summary"),
                    br(),
                    helpText("Standard deviation"),
                    verbatimTextOutput("sd"),
                    br(),
                    tableOutput("view")
                  ), 
                  tabPanel("Plot", plotOutput("plot")),                
                  
    tabPanel("Documentation",
             mainPanel(
               helpText("MT Cars Data Analysis
This Shiny App utilizes the MT Cars Data base to give you a summary of the data for specific Transmissions and Cylinders.

First you need to choose the Cylinder either 4, 6 or 8 they go up by steps of 2.

Second you need to choose between Automatic or Manual Transmission.

Results that will be displayed will be a Summary of Miles per gallon, standard deviation and data set of the 11 Variables for each of the cars in that category. On the second Plot Tab you will be able to see the plots for each.")
             )
    ))
)
)
)
)         