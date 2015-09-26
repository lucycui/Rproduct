library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    # ouput data
    output$YourInfo <- renderText({
      weight <- input$weight
      height <- input$height
      paste0("Your weight is ", as.character(weight), " kg. Your height is ", as.character(height), " cm.")
    })
    output$YourBMI <- renderText({
      weight <- input$weight
      height <- input$height
      # calculate BMI
      bmi <- weight / (height / 100)^2
      paste0("Your BMI is ", as.character(bmi))
    })
    output$YourRange <- renderText({
      weight <- input$weight
      height <- input$height
      # calculate BMI
      bmi <- 0
      if (height > 0) {
        bmi <- weight / (height / 100)^2  
      }
      # calculate weight range
      info = 'Underweight'
      if (bmi >= 18.5 & bmi < 25) {
        info <- "Normal"
      }
      if (bmi >= 25 & bmi < 30) {
        info <- "Overweight"
      }
      if (bmi >= 30) {
        info <- "Obese"
      }
      paste0("Your body is ", info)
    })
})