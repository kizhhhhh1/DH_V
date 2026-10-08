# Dataset
month <- c("January", "February", "March", "April", "May")
sales <- c(15000, 18000, 22000, 20000, 23000)

# Bar Chart
barplot(sales,
        names.arg = month,
        xlab = "Month",
        ylab = "Sales ($)",
        main = "Monthly Sales",
        col = "skyblue")