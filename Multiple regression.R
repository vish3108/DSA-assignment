housing <- read.csv("housing.csv")
head(housing)
str(housing) #GIves a sense of the nature and category of Total.Units Gross.SqFtall the variables in the dataset
#In this regression, the response variable is Market.Value.per.SqFt and the regressors(input variables) are Total.Units and Gross.SqFt.

#To Plot  Market.Value.per.SqFt against Gross.SqFt 
ggplot(housing, aes(x=Gross.SqFt, y=Market.Value.per.SqFt))+geom_point()

#To Plot  Market.Value.per.SqFt against Total.Units  
ggplot(housing, aes(x=Total.Units, y=Market.Value.per.SqFt))+geom_point()

mreg = lm(Market.Value.per.SqFt~Total.Units+Gross.SqFt,housing) #returns the intercept, slope for total units and slope for gross sqft.
mreg #Returns both call function and coefficients
summary(mreg)
mreg$coefficients #Returns only the coefficients 
coefficients(mreg) #This function also returns only the coefficients



