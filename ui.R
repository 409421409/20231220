library(shiny)

shinyUI(pageWithSidebar(
  
  headerPanel("Ploting your data"), 
  
  sidebarPanel(
    fileInput(inputId="files", label=h4("Upload your data file:"), multiple=FALSE, accept="text/plain"),
    helpText("Note: you only can upload the .txt file."),
    actionButton("action1", label = "Action"),
    radioButtons("Color", "Select the color of histogram:", choices = c("Pink" = "pink", "Navy" = "navy","Gray"="gray", "Purple" = "purple"))
  ),
  
  mainPanel(
    plotOutput("scatterPlot"),
    downloadButton("download", label = "Download plot", class = NULL)
  )  
  
))