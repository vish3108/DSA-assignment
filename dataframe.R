#Data frame is a 2D table of rows and columns which can contain elements of different data types. 
#The difference between matrix and data frame is that in matrix all elements have to be of same data type. 
#So appending row or column names to a matrix would coerce all the data elements to character data type. #That is why data frame is preferred to matrix.
c = data.frame(1:5,-1:3,-4:0)
c
colnames(c) = c("a","b","c")
c
# Checking the dimensions of the data frame c.
nrow(c)
ncol(c)
dim(c) #dimensions of c
names(c)
names(c)[3] #Name of the 3rd column
#printing the heads and tails of c
head(c,3)
tail(c,3)

#Subsetting a dataframe (Similar for Matrix)
#2nd column of c
c[ ,2]
#Or
c[ ,"b"]
#2nd and 3rd column of c
c[ ,2:3]
#Element at 3rd row and 2nd column 
c[3,2]

