marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)
num_bins <- 3
bin_size <- length(marks) / num_bins
equal_frequency_bins <- cut(marks, breaks = quantile(marks, probs = (0:num_bins) / num_bins), include.lowest = TRUE)
bin_width <- (max(marks) - min(marks)) / num_bins
equal_width_bins <- cut(marks, breaks = seq(min(marks), max(marks) + bin_width, by = bin_width), include.lowest = TRUE)
par(mfrow = c(1, 2))
hist(marks, main = "Equal-Frequency Partitioning", xlab = "Marks", col = "lightblue")
hist(marks, main = "Equal-Width Partitioning", xlab = "Marks", col = "lightgreen")
par(mfrow = c(1, 1))
