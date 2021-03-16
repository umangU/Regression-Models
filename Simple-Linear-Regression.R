# Mass library for the "Boston" dataset
library(MASS)
# Get the variable names
names(Boston)
# Attach the dataset
attach(Boston)
# Data-type and values stored in the variables
str(Boston)
# Fitting and getting the summary of the Simple Linear Regression model
lm.fit <- lm(medv~lstat)
summary(lm.fit)
coef(lm.fit)
# Confidence Intervals for the LR model
confint(lm.fit)
# Printing the CI and PI using test data points
predict(lm.fit, data.frame(lstat=c(5,10,15)), interval="confidence")
predict(lm.fit, data.frame(lstat=c(5,10,15)), interval="prediction")
# Plotting the relationship between lstat and medv with the regreeion line
plot(lstat,medv, pch=20)
abline(lm.fit, lwd=3, col="red")
# Plotting the diagnostic plots
par(mfrow=c(2,2))
plot(lm.fit)
# Getting the residuals from the regression fit and studentized residuals
plot(predict(lm.fit), residuals(lm.fit))
plot(predict(lm.fit), rstudent(lm.fit))
# Plotting the leverage statistics
plot(hatvalues(lm.fit))
# Largest leverage statistic
which.max(hatvalues(lm.fit))