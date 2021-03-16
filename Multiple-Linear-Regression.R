# MASS library for the "Boston" dataset
library(MASS)
# car library for the "vif" function
library(car)
# Get the variable names
names(Boston)
# Attach the dataset
attach(Boston)
# Data-type and values stored in the variables
str(Boston)
# Fitting and getting the summary of the Multiple Linear Regression model
lm.fit = lm(medv~., data = Boston)
summary(lm.fit)
# Variance Inflation factors
vif(lm.fit)
# Updating the MLR model
lm.fit = update(lm.fit,~.-age)
summary(lm.fit)
# MLR with the Interaction term
summary(lm(medv~lstat*age, data = Boston))