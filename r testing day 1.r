# Sample data
data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)

# Define the bin size for boundary smoothing
bin_size <- 3

# Create an empty vector to store smoothed values
smoothed_data <- numeric(length(data))

# Apply smoothing by bin boundaries
for (i in 1:length(data)) {
  # Determine the start and end indices of the bin on the left boundary
  left_start_index <- max(1, i - bin_size)
  left_end_index <- i
  
  # Determine the start and end indices of the bin on the right boundary
  right_start_index <- i
  right_end_index <- min(length(data), i + bin_size)
  
  # Calculate the mean value within the left boundary bin
  left_bin_mean <- mean(data[left_start_index:left_end_index])
  
  # Calculate the mean value within the right boundary bin
  right_bin_mean <- mean(data[right_start_index:right_end_index])
  
  # Replace the data point with the mean of the two boundary bins
  smoothed_data[i] <- (left_bin_mean + right_bin_mean) / 2
}

# Print the original data and smoothed data
cat("Original Data:", data, "\n")
cat("Smoothed Data:", smoothed_data, "\n")
