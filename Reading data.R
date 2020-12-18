#read.csv and read.table can be used to read data into R console.
getwd()

head(read.csv("bowens.csv")) #R finds the mentioned file in my current working directory and reads the data into R console.

#read.csv(file.choose()) #Allows the user to chose the file to be read.

read.table("D:\\Documents\\MBA course materials\\viz.txt")# Reads txt file from the specified location
