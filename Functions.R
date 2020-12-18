#Function is a data structure in R. The arguments of the function are sepcified within the parenthesis.
Concat <- function(a,b) #Concat is a function to concatenate 2 words
{
  
  print(c(a,b))#Body of the function
  
}
Concat("Nruhari","Viswanath")

factors <-function(n) #Function to find out the factors of an integer and print it. 
{
  j <-0 #Counter variable to keep count of the no. of factors
  for(i in 1:n)#For loop construct to determine factors 
  {
    if(n%%i==0)#Criteria for a factor of any number
    {
      print(paste("Factor is",i))
      j <-j+1#Updation of counter
    }
    
  }
  print(paste("No of factors is ", j))
}
factors(120)#This line is the function call. Here 120 is matched with the argument n defined above in the function declaration.


