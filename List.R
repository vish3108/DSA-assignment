#List
#List is a collection of different elements which can be of different data types.
list1 <- list(a=1:5, b="Nruhari",c= c("R","is","interesting"), d=matrix(1:6,3))
list1

#Subsetting lists
list1[1] #Accessing 1st element of list1
list1[[1]][4] #Accessing 4th element of 1st element of list1
list1[[3]][3] #Accessing 3rd element of 3rd element of list1

names(list1)
list2 <- list(1:5, c("Good","Morning"),c("Hello","India"))
list2
names(list2) <- c("vector","string1","string2")
list2
length(list2)
