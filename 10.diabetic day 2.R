data<-read.csv("S://r pro//day2//8.5mtcars.csv")
plot(mtcars$mpg, type = "l", col = "blue", xlab = "Index", ylab = "mpg", main = "Line Chart of mpg and qsec")
lines(mtcars$qsec, col = "red")
cat("redline =qsec \nblueline =mpg")

