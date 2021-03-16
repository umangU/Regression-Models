# Mass library for the "Boston" dataset
library(MASS)
# Fitting the linear model
lm.fit=lm(medv~lstat)
# Fitting the Quadratic model using Identity model
lm.fit2 = lm(medv~lstat+I(lstat^2))
summary(lm.fit2)
# ANOVA table to compare both models
anova(lm.fit,lm.fit2)
# Diagnostic plots
par(mfrow=c(2,2))
plot(lm.fit2)
# 5th Order polynomial model
lm.fit5=lm(medv~poly(lstat,5))
summary(lm.fit5)
# Fitting the LR model using Log-transformation of the variable
summary(lm(medv~log(rm), data=Boston))