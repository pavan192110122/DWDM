x <- c(23,23,27,27,39,41,47,49,50,52,54,54,56,57,58,58,60,61)
y <- c(9.5,26.5,7.8,17.8,31.4,25.9,27.4,27.2,31.2,34.6,42.5,28.8,33.4,30.2,34.1,32.9,41.2,35.7)
print(paste("mean age =",mean(x)))
print(paste("median age =",median(x)))
print(paste("mean fat =",mean(y)))
print(paste("median fat =",median(y)))
print(paste("standard deviation of age =",sd(x)))
print(paste("standard deviation of fat =",sd(y)))
plot(x, y)
boxplot(x,y)
qqnorm(x)
qqline(x)
par(new=TRUE)
qqnorm(y)
qqline(y)


     