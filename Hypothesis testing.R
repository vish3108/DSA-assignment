data(tips)
head(tips)
#'$' symbol can be used to subset a named column from a data frame.
unique(tips$sex) #Returns the unique values in the column 'sex' in tips dataset
unique(tips$day) #Returns the unique values in the column 'day' in tips dataset

#One Sample t-test, population standard deviation unknown (and hence t test)
#Only one group, two tailed test
#Null hypothesis Ho: mu = 2.5
t.test(tips$total_bill, alternative = "two.sided", mu=2.5)

#One Sample t-test
#Null hypothesis Ho: mu < 2.5
t.test(tips$total_bill, alternative = "greater", mu=2.5)

#Two Sample T-test
#2 columns of data, population variances of the 2 samples can be equal or unequal
t.test(tip ~ sex, data = tips, var.equal = TRUE)
t.test(tip ~ sex, data = tips, var.equal = FALSE)

#Paired Two-Sample T-Test 

head(father.son) #Name od the dataset is father.son (a part of usingR package)
#It contains the heights of father and son. Since both variables are are of same type, we go for paired sample t test.
write.csv(father.son, "Sample.csv") #Creates a csv file named Sample and Writes the father.son dataset to the file.

#ANOVA is used to compare the population means of multiple groups
head(tips)
anova = aov(tip~total_bill,tips)
summary(anova)

