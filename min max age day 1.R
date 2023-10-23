
age <- c(23, 23, 27, 27, 39, 41, 47, 49, 50, 52, 54, 54, 56, 57, 58, 58, 60, 61)
fat <- c(9.5, 26.5, 7.8, 17.8, 31.4, 25.9, 27.4, 27.2, 31.2, 34.6, 42.5, 28.8, 33.4, 30.2, 34.1, 32.9, 41.2, 35.7)
value_to_normalize <- 35
min_value <- 0
max_value <- 1
min_max_normalized <- (value_to_normalize - min_value) / (max_value - min_value)
mean_age <- mean(age)
std_dev_age <- 12.94
z_score_normalized <- (value_to_normalize - mean_age) / std_dev_age
decimal_scale_normalized <- value_to_normalize / 10
cat("Min-Max Normalized Value:", min_max_normalized, "\n")
cat("Z-Score Normalized Value:", z_score_normalized, "\n")
cat("Decimal Scaling Normalized Value:", decimal_scale_normalized, "\n")
