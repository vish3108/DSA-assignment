#Matrix is table of 2D rows and columns containing elements of same data type
b= matrix(1:10,5,2)
b
A = matrix(1:10,5)# Create a 5x2 matrix
B = matrix(21:30,5)#Create another 5x2 matrix 

#Addition of A and B (ELement to element addition)
A+B

#Matrix Multiplication.
A %*% t(B) #t(B) transposes B so that matrix multiplication is possible between A and B

