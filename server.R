#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyServer(function(input, output) {
  
  values <- reactiveValues()
  
  observe({
    input$calcBMI
    values$bmi <- isolate({
      
      input$weight/(input$height/100 * input$height/100)
      
      
      
    })
  })
  
  
  
  # Display your current values
  output$height_cur <- renderText({
    input$calcBMI
    paste("Height:", isolate(input$height)," centimeters")
  })
  
  output$weight_cur <- renderText({
    input$calcBMI
    paste("Weight: ", isolate(input$weight)," kilograms")
  })
  
  
  output$interpretBMI <- renderText({
    
    if(input$calcBMI == 0) ""
    else {
      
      if (values$bmi < 18.5)
      {
        values$interpretBMI = "Underweight"
      }
      else if (values$bmi < 24.9)
      {
        values$interpretBMI="Normal weight"
      }
      else if (values$bmi < 29.9)
      {
        values$interpretBMI="Overweight"
      }
      else
      {
        values$interpretBMI="Obesity"
      }
      
      paste("BMI Interpretation: ", values$interpretBMI)
    }
  })
  
  
  # Display BMI
  
  output$BMI_result <- renderText({
    if(input$calcBMI == 0) ""
    else
      paste("BMI is:", values$bmi)
  })
})