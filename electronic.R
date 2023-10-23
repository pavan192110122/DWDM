a<-read.csv("S://r pro//day2//electronics.csv")
data <- c(1,1,5,5,5,5,5,8,8,10,10,10,10,12,14,14,14,15,15,15,15,15,15,18,18,18,18,18,18,18,18,20,20,20,20,20,20,20,21,21,21,21,25,25,25,25,25,28,28,30,30,30)
c <- c(a[1,])
print(data)
print(c)
# Calculate quantiles to split the data into 3 bins
quantiles <- quantile(c, probs = seq(0, 1, 1/3))

# Create a new vector to store the bin labels
bin_labels <- cut(c, breaks = quantiles, labels = c("Bin 1", "Bin 2", "Bin 3"), include.lowest = TRUE)

# Print the vector with bin labels
print(bin_labels)
