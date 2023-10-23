a<-read.csv("S://r pro//day2//electronics.csv")
num_bins <- 3
bin_bounds <- quantile(a$Arr1, probs = seq(0, 1, 1/num_bins))
df$BinLabel <- cut(a$Arr1, breaks = bin_bounds, labels = c("Bin 1", "Bin 2", "Bin 3"), include.lowest = TRUE)
df$BinMean <- NA
for (i in 1:num_bins) {
  bin_start <- bin_bounds[i]
  bin_end <- bin_bounds[i + 1]
  bin_mean <- mean(a$Arr1[a$Arr1 >= bin_start & a$Arr1 <= bin_end])
  df$BinMean[a$Arr1 >= bin_start & a$Arr1 <= bin_end] <- bin_mean
}
df$BinBoundary <- NA
for (i in 1:num_bins) {
  bin_start <- bin_bounds[i]
  bin_end <- bin_bounds[i + 1]
  df$BinBoundary[a$Arr1 >= bin_start & a$Arr1 <= bin_end] <- bin_start
}

hist(a$Arr1, breaks = bin_bounds, xlab = "Value", main = "Histogram of Frequency Division",
     col = "lightblue", border = "black")
print(df)