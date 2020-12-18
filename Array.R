#Arrays are multidimensional vectors. SInce it is a vector, all elements of an array must be of same data type. Subsetting elements are done using []. Dimensions apart from rows and columns are called outer dimensions.
myArray = array(1:16, dim=c(2,4,4))# Total Elements product of all dimensions = 2x4x4=16.
myArray
myArray [1, ,]# Accessing all elements from Row 1
myArray[1,2,3]# Accessing all elements from Row 1, column 2 and 3rd outer dimension.
myArray[, ,4]# Accessing all elements of 4th outer dimension
