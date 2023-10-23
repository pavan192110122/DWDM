data<-read.csv("S://r pro//day2//8.5mtcars.csv")
boxplot(mpg ~ cyl, data = mtcars, 
        xlab = "Number of Cylinders",
        ylab = "Miles per Gallon",
        main = "Boxplot of MPG by Number of Cylinders",
        col = "pink", 
        border = "black")