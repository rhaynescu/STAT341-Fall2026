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

 - ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")
 
# perform correlation test 

 - res <- cor.test(my_data$wt, my_data$mpg, method = "pearson") 

 - res

Pearson's product-moment correlation

data:  my_data$wt and my_data$mpg
t = -9.559, df = 30, p-value = 1.294e-10
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 -0.9338264 -0.7440872
sample estimates:
       cor 
-0.8676594 

# Accept the alternate hypothesis 
