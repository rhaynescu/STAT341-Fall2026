# Author: Rodrick Haynes, Date: 10-27-2026, Purpose: Perform a chi square test
 
# Read sample dataset
	data_frame <- read.csv("https://goo.gl/j6lRXD")
	New_data <- data_frame[,2:3]
	New_data <- data_frame[c(3:105),]