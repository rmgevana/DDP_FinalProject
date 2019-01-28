#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#


library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Body Masss Index (BMI) Calculator"),
  
  sidebarLayout(
    sidebarPanel( 
      
      helpText("Body Mass Index (BMI) is the recommended method for diagnosing overweight and obesity. It evaluates the relationship between body weight and height."),            
      helpText("This app will help measure BMIs of any individual. So, let's get it on!"),            
      br(),
      numericInput("weight",label = h4("Enter weight (in kg):"),min = 10, max = 500,31), #min is 10, max is 500 and default value is 31
      br(),
      numericInput("height",label = h4(" Enter height (in cm):"),min = 50, max = 600,121), #min is 50, max is 600 cm and default is 121
      br(),
      helpText("Click button below to ensure BMI value will be refreshed."),
      actionButton("calcBMI", label = "Calculate BMI")    
      
    ),
    mainPanel
    (
      tabsetPanel
      (
        tabPanel("BMI Calculation",
                 p(h4("Input Details:")),
                 textOutput("weight_cur"),
                 textOutput("height_cur"),
                 br(),
                 p(h4("BMI Value:")),
                 textOutput("BMI_result"),
                 br(),
                 p(h4("BMI Interpretation:")),
                 textOutput("interpretBMI")
        )
      )
    )
  )
))

