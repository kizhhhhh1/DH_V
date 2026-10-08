# Satisfaction scores
satisfaction <- c(4, 5, 3, 4, 5)

# Calculate frequency
score_count <- table(satisfaction)

# Pie Chart
pie(score_count,
    labels = paste(names(score_count), "Score"),
    main = "Customer Satisfaction Scores")