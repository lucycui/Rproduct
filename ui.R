library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("BMI CALCULATOR"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      helpText("Usage Documentation: Calculate your BMI ratio. To use the application, please first 
               select your weight (in kg) and your height (in cm) in the slidebar. 
               You then need to hit 'submit' button. Your BMI and range will
               show on the main panel."),
      sliderInput("weight",
                  "Weight (kg):",
                  min = 1,
                  max = 400,
                  value = 1),
      sliderInput("height",
                  "Height (cm):",
                  min = 1,
                  max = 300,
                  value = 1),
      submitButton("Submit")
    ),
    # Show a plot of the generated distribution
    mainPanel(
      textOutput("YourInfo"),
      textOutput("YourBMI"),
      textOutput("YourRange")
    )
  )
))