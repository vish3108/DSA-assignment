# A vector is collection of elements of same data type.
# ':' operator can be used to create a vector
# 'c' stands for combine.
a <- c(1:7,99,76,44)
b <- 7:15
a
b
#R is vectorized language. So any operation that can be performed on a particular element of a vector can be performed for the entire vector. R automatically performs the operation for the entire vector.

(b/2)+5
b^2

#Length function returns the length of the vector
length(b)
x= 1:10
y=1:5

#To execute x+y, R converts the shorter vector (y) to the same length of the longer vector(x) by recycling y.
x+y
#Comparing 2 vector
any(x<y)
all(x>y)

#Subsetting means accessing individual elements of an object.[] is used to subscript a vector. The number inside the [] represents the position to be subsetted.
z= x+y
z[3]
z[c(3:5,9)]
#Assigning names to a vector using names function
names(y) <- c("a","b","c","d","e")
y
#Names can also be used for subsetted
y["a"]
