#R can generate a regression line from a scatter diagram
#The dataset to be used is father.son dataset which contains the heights of father ans son( This dataset is from usingR package which is already installed)

head(father.son)
#To regress fheight upon sheight variable
reg <- lm(fheight~sheight,father.son) #returns the intercept and slope of the regression line
reg
ggplot(father.son, aes(x=fheight, y=sheight))+geom_point()+
  geom_smooth(method="lm")+labs(x="Fathers", y="Sons")
#This command plots the scatter points of the entire father.son dataset and along with it plots he regression line (method="lm")
summary(reg) # Returns summary of all residuals, adjusted R, t statistic and p value of the intercept and slope
