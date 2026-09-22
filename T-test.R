# Author Rodrick Haynes, Date: 09/22/2026, Purpose: To perform T-test

# Create Variables x and y with some dummy dataset
	
	x = rnorm(10)
	y = rnorm(10)

# Make a normal distribution plot/curve for reference
	
	pts = seq(-4.5,4.5,length=100)
	plot(pts,dt(pts,df=9),col='red',type='l')

# Add x and y points on existing plot window 
	
	lines(density(x), col='green')
	lines(density(y), col='blue')

# Add another curve, color yellow with 100 points between 2 and 4
	
	pts = seq(2,4,length=100)
	lines(density(pts), col='yellow')

# Apply t-test fuction to check differences between variables x and y
	
	ttest = t.test(x,y)
	        Welch Two Sample t-test

data:  x and y
t = 0.45324, df = 16.889, p-value = 0.6561
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.7564302  1.1700836
sample estimates:
mean of x mean of y 
0.4611973 0.2543706 
