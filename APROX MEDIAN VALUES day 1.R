# Define the intervals, frequencies, and cumulative frequencies
intervals <- c("1-5", "5-15", "15-20", "20-50", "50-80", "80-110")
frequencies <- c(200, 450, 300, 1500, 700, 44)
cumulative_freq <- cumsum(frequencies)

# Calculate the total number of data points
total_data_points <- sum(frequencies)

# Find the median class
median_point <- total_data_points / 2
median_class <- intervals[which(cumulative_freq >= median_point)[1]]

# Extract lower and upper bounds of the median class
lower_bound <- as.numeric(sub("-.*", "", median_class))
upper_bound <- as.numeric(sub(".*-", "", median_class))

# Calculate the width of the median class
class_width <- upper_bound - lower_bound

# Calculate the median value
median_value <- lower_bound + ((median_point - cumulative_freq[which(intervals == median_class) - 1]) / frequencies[which(intervals == median_class)]) * class_width

# Print the approximate median value
cat("Approximate Median Value:", median_value, "\n")
