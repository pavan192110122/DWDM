data <- c(200, 300, 400, 600, 1000)
min_value <- 0
max_value <- 1
min_max_normalized <- (data - min(data)) / (max(data) - min(data)) * (max_value - min_value) + min_value
z_score_normalized <- (data - mean(data)) / sd(data)
cat("Min-Max Normalization Result:\n")
print(min_max_normalized)
cat("\nZ-Score Normalization Result:\n")
print(z_score_normalized)
