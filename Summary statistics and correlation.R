pkg <- c("ggplot2","reshape2","UsingR")
install.packages(pkg,repo="http://cran.us.r-project.org")
library(ggplot2) #Load ggplot2

library(reshape2) #Load reshape2

library(UsingR) #Loading usingR package


# To Generate a random sample of 10 numbers between 1 and 500 with replacement
x = sample(x=1:500,20, replace = TRUE)#Numbers in x will repeat now because replace=TRUE.
# The output x is a vector of 20 random numbers
x

# To Generate a random sample of 10 numbers between 1 and 500 without replacement
x = sample(x=1:500,20, replace = FALSE) #No number in x will repeat now.
# Simple Arithmetic Mean
mean(x)

y = sample(c(x,rep(NA,10)),10)#Random sample of 10 numbers from x and a repetition vector of 10 NA's. 
y
# y contains NAs so mean(y) will return NA. So NA's need to be removed while computing mean.
mean(y, na.rm=TRUE) #Mean value computed because NA's are removed

# Weighted Mean
Concentration = c(30,20,25,50)
Weights = c(.25,.25,.3,.2)
weighted.mean(Concentration,Weights)# Weighted average of Concentrations

#Variance
var(x)

# Standard Deviation
sqrt(var(x))
sd(x)
sd(y)
sd(y, na.rm=TRUE)

# Other Functions
min(x)
max(x)
median(x)
median(y) #Will return NA
median(y, na.rm=TRUE)

# Summary Statistics
summary(x)
summary(y)

# Quantiles
quantile(x, c(0.25, 0.75)) # Calculates 25th and 75th Quantile of x
quantile(x, c(0.2,0.28,0.59, 0.75,0.99))
quantile(y, c(0.25, 0.75), na.rm = TRUE)

#Correlation
data <- read.csv("New.csv")
cor(data[ ,2],data[ ,3])#Calculates the correlation coefficient between the 2nd and 3rd columns




#Correlation between multiple variables
ecor = cor(data[ ,c(2,3,4)])# Returns a matrix with 3 rows and 3 columns and the correlation coefficients as the table elements  
ecor
# We can use the melt function to change this format.
emelt = melt(ecor)# This will return a long table with first 2 columns as x and y(variables) and 3rd column as the correlation coefficient

# Display the molten data frame
emelt

#Correlation heatmap
#This returns the heat map of the molten table
ggplot(data = emelt, aes(Var1, Var2, fill=value)) + 
  geom_tile()

# Get lower triangle of the correlation matrix
get_lower_tri<-function(emelt){
  emelt[upper.tri(emelt)] <- NA
  return(emelt)
}
# Get upper triangle of the correlation matrix
get_upper_tri <- function(emelt){
  emelt[lower.tri(emelt)]<- NA
  return(emelt)
}

upper_tri <- get_upper_tri(emelt)
upper_tri

#  Finished correlation matrix heatmap
# Melt the correlation data and drop the rows with NA values
# Melt the correlation matrix
melted_cormat <- melt(upper_tri, na.rm = TRUE)
# Heatmap

ggplot(data = melted_cormat, aes(Var2, Var1, fill = value))+
  geom_tile(color = "white")+
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", 
                       midpoint = 0, limit = c(-1,1), space = "Lab", 
                       name="Pearson\nCorrelation") +
  theme_minimal()+ 
  theme(axis.text.x = element_text(angle = 45, vjust = 1, 
                                   size = 12, hjust = 1))+
  coord_fixed()


# negative correlations are in blue color and positive correlations in red. 
# The function scale_fill_gradient2 is used with the argument limit = c(-1,1) as correlation coefficients range from -1 to 1.
# coord_fixed() : this function ensures that one unit on the x-axis is the same length as one unit on the y-axis.

# Reorder the correlation matrix

# This section describes how to reorder the correlation matrix according to the correlation coefficient. 
# This is useful to identify the hidden pattern in the matrix. 

reorder_cormat <- function(emelt){
  # Use correlation between variables as distance
  dd <- as.dist((1-emelt)/2)
  hc <- hclust(dd)
  emelt <-emelt[hc$order, hc$order]
}

# Reorder the correlation matrix

upper_tri <- get_upper_tri(emelt)
# Melt the correlation matrix
melted_cormat <- melt(upper_tri, na.rm = TRUE)
# Create a ggheatmap
ggheatmap <- ggplot(melted_cormat, aes(Var2, Var1, fill = value))+
  geom_tile(color = "white")+
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", 
                       midpoint = 0, limit = c(-1,1), space = "Lab", 
                       name="Pearson\nCorrelation") +
  theme_minimal()+ # minimal theme
  theme(axis.text.x = element_text(angle = 45, vjust = 1, 
                                   size = 12, hjust = 1))+
  coord_fixed()
# Print the heatmap
print(ggheatmap)

#Add correlation coefficients on the heatmap

## Use geom_text() to add the correlation coefficients on the graph
## Use a blank theme (remove axis labels, panel grids and background, and axis ticks)

ggheatmap + 
  geom_text(aes(Var2, Var1, label = value), color = "black", size = 4) +
  theme(
    axis.title.x = element_blank(),
    axis.title.y = element_blank(),
    panel.grid.major = element_blank(),
    panel.border = element_blank(),
    panel.background = element_blank(),
    axis.ticks = element_blank(),
    legend.justification = c(1, 0),
    legend.position = c(0.6, 0.7),
    legend.direction = "horizontal")+
  guides(fill = guide_colorbar(barwidth = 7, barheight = 1,
                               title.position = "top", title.hjust = 0.5))
