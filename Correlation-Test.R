Name: Rodrick Haynes, Date: 8/27/2026, Purpos: Test the correlation analysis

# Install Package ggpubr
if(!require(devtools)) install.packages("devtools"); devtools::install_github("kassambara/ggpubr")

#load package ggpubr
library("ggpubr")

#Load dummy data set
my_data <- mtcars
# first int rows, second int columns (for dim(my_data))

# Alternate Hypothesis: The weight of the car is inversely related to the miles per gallon it can travel
# Null Hypothesis: There is no difference/ no relation between the weight of the car and the miles per gallon it can travel

ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")


