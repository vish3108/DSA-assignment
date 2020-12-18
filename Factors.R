#Factors are ordinal variables.
a <- c("Water","Air","Earth","Water","Air","Fire")
as.factor(a)
# This will return only the unique values in the vector a. These unique value are called levels.

factor(x=c("Water","Air","Earth","Water","Air","Fire"),
       levels = c("Water","Air","Earth","Fire"),
       ordered = TRUE)
