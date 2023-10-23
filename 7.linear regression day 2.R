water<-read.csv('S://r pro//day2//water_dataset.csv')
print(water)
plot(water$hardness,water$mortality,xlab ="Hardness",ylab ="Mortality",
     main = "Scatterplot of Mortality vs. Hardness")
model <- lm(mortality ~ hardness, data = water)
summary(model)
new_data <- data.frame(hardness = 88)
predicted_mortality <- predict(model, new_data)