a= 5
class(a)
# To check is a is of numeric type (the below command returns TRUE or FALSE)
is.numeric(a)
x = "R is great"
# To check if x is of character type
is.character(x)
# In R, date is also a data type
#as.Date command converts character or numeric type to Date type 
class("1996-08-31")
date1 = as.Date("1996-08-31")
date1
class (date1)
as.numeric(date1)

#To convert numeric type to character type
a= 5
class(a)
a
as.character(a)

#POSIXct data type stores both Date and Time
#In R, the reference date is 01 Jan 1970.
date2 = as.POSIXct("1996-08-31 07:31")
date2
class(date2)
#Below command gives the number of seconds from reference date and time to date2
as.numeric(date2)
