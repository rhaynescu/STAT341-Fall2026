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