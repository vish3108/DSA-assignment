# There are 2 kinds of missing data in R.
# NA
# NA stands for Not available. When an element that R is searching turns out to be missing, R simply remembers that as NA
x <- c(1,5,3,7,5,8,NA,NA,7,3,NA)
length(x)
#is.na returns a logical vector
is.na(x)
!is.na(x)
#To remove NAs manually
x[!is.na(x)]

#NULL
#NULL represents an element which is present but stores no value. A NULL value cannot exist as a part of an object  
y <- c(1,3,5,NULL)
length(y)
# is.null checks if a particular element is NULL or not
m = NULL
is.null(m)
