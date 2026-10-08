# Install required library
install.packages("shiny")

# Load library
library(shiny)

month <- c("January", "February", "March", "April", "May")
sales <- c(15000, 18000, 22000, 20000, 23000)

ui <- fluidPage(
  
  titlePanel("Monthly Sales Dashboard"),
  
  sidebarLayout(
    
    sidebarPanel(
      selectInput("chart",
                  "Select Chart:",
                  choices = c("Line Chart", "Bar Chart"))
    ),
    
    mainPanel(
      plotOutput("salesPlot")
    )
  )
)

server <- function(input, output) {
  
  output$salesPlot <- renderPlot({
    
    if (input$chart == "Line Chart") {
      
      plot(sales,
           type = "o",
           xaxt = "n",
           xlab = "Month",
           ylab = "Sales ($)",
           main = "Monthly Sales")
      
      axis(1, at = 1:5, labels = month)
      
    } else {
      
      barplot(sales,
              names.arg = month,
              xlab = "Month",
              ylab = "Sales ($)",
              main = "Monthly Sales")
    }
  })
}

shinyApp(ui = ui, server = server)