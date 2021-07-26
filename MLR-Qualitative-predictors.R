#ISLR library for the Carseats dataset
library(ISLR)
#Printing the variable names and data-types 
attach(Carseats)
names(Carseats)
str(Carseats)
# MLR using all predictors and some interaction terms
lm.fit = lm(Sales~. +Income:Advertising + Price:Age, data = Carseats)
summary(lm.fit)
# Contrast function to find out Qualitative variable encoding
contrasts(ShelveLoc)
