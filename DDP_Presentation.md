BMI Calculator: Coursera DDP Final Project
========================================================
author: Roel M. Gevana
date: January 27, 2019
autosize: true

Introduction
========================================================
- This project is the final requirement of Developing Data Products, one of the courses of Coursera Data Science Specilization.
- This presentation is created using RStudio slide presentation.
- This project is aimed at creating a shiny web application.
- The application created was a BMI calculator.
- The shiny application is hosted at <https://rmgevana.shinyapps.io/DDP_FinalProject/>
- The github repository of this project is at <https://github.com/rmgevana/DDP_FinalProject>


What is BMI?
========================================================
Body Mass Index (BMI) 
- is the recommended method for diagnosing overweight and obesity. It evaluates the relationship between body weight and height.

Sample BMI Calculation:

```r
height <- 167
weight <- 45
BMI <- weight / (height/100 * height/100)

BMI
```

```
[1] 16.13539
```

Widgets Used in the Application
========================================================
This application uses the following widgets:
- helpText - provides information and help users on how to use the tool

- numericInput - fields that accepts number entries (height in cm and weight in kg)
  
- actionButton - enables BMI calculation at the server and provides reactivity to refresh and calculate


How to Use the Application?
========================================================
Below are simple steps on how to use the tool 
  1. Enter weight (in kg) and height (in cm) in the required fields.
  2. Click "Calculate BMI" button to compute for the BMI.
  3. Check the results and the interpretation on the "BMI Calculation" tab.


Enjoy! Have a healthy BMI monitoring!
