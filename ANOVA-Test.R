# Authtor: ROdrick Haynes, Date: 09-08-2026, Purpose: ANOVA Analysis

# Load package ggplot2
	Library(ggplot2)

# Load the dataset
	PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv" 
	
	df <- read.csv(PATH) 

# Create Hypothesis: Alternate Hypothesis
	There is a significant difference for survival with poision type 1 compared to types 2 and 3 

# Null Hypothesis: 
	There is no significant difference between type 1 and the other types.

# Plot the dataset using library ggplot2
	ggplot(df, aes(x = poison, y = time, fill = poison)) + geom_boxplot() + geom_jitter(shape = 15, color = "steelblue", position = position_jitter(0.21)) + theme_classic()

# Apply ANOVA function on dependent variable, time, and independent variable, poison type

	anova_one_way <- aov(time~poison, data = df) 
	
	summary(anova_one_way)
	
	 Df Sum Sq Mean Sq F value   Pr(>F)    
poison       1 0.9316  0.9316   20.67 3.96e-05 ***
Residuals   46 2.0735  0.0451                     
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1