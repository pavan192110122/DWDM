data("AirPassengers")
hist(AirPassengers, 
     xlim = c(100, 700),
     breaks = seq(100, 700, by = 150),
     main = "AirPassengers Histogram",
     xlab = "Passenger Count",
     ylab = "Frequency")
