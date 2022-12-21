# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
* The variables with the most predictive power of a vehicle's miles per gallon are vehicle length and ground clearance, with p-values less than the assumed significance level of 0.05.

* Since the model's p-value is much smaller than the assumed significance level of 0.05, we reject the null hypothesis (H0: the slope of the linear model is zero). 

* Since the model has an R^2 of 0.71 and the overall p-value is lower than the significance level of 5%, we can say that this model is a good predictor of a car's fuel consumption. Additionally the intercept also has a p-value less than 5%, meaning that the variables used are strong predictors. 

![lm2](../../images/lm2.png).

## Summary Statistics on Suspension Coils
* Overall, the variance of the lots' weights does not exceed 100 pounds per square inch (62 lbs per square inch). However, on an individual lot basis, only lots 1 and 2 respect this rule (variance of 1 and 7, respectively), while lot 3 exceeds minimum alloted variance (170 pounds per square inch).

## T-Tests on Suspension Coils

T-tests are used to test the following hypotheses:
* H0 : There is no statistical difference between the observed sample mean and its presumed population mean.
* Ha : There is a statistical difference between the observed sample mean and its presumed population mean.

### One sample t-test, comparing all lots' suspension coil weights to the population mean of 1500 lbs per sq inch.

Assuming our significance level was the common 0.05 percent, our p-value is above our significance level (0.06). Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the population and sample means are statistically similar.

### Lot 1 t-test, comparing all lots' suspension coil weights to the population mean of 1500 lbs per sq inch.

Assuming our significance level was the common 0.05 percent, our p-value is above our significance level (1). Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the population and sample means are statistically similar.

### Lot 2 t-test, comparing all lots' suspension coil weights to the population mean of 1500 lbs per sq inch.

Assuming our significance level was the common 0.05 percent, our p-value is above our significance level (0.60). Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the population and sample means are statistically similar.

### Lot 3 t-test, comparing all lots' suspension coil weights to the population mean of 1500 lbs per sq inch.

Assuming our significance level was the common 0.05 percent, our p-value is less than our significance level (0.04). Therefore, we have sufficient evidence to reject the null hypothesis, and we would state that the population and sample means are not statistically similar.

## Study Design: MechaCar vs Competition

In order to compare MechaCar to the competition, there are a few variables to consider, which are crucial to consumers when purchasing a car. These include fuel consumption in a city and on the highway, horesepower, torque, and displacement.
We could design two-sample t-tests to assess the difference between Mechacar and its competitors for each metric. The following would be the hypotheses to test for: 

H0 : There is no statistical difference between the observed sample mean and its presumed population mean.
Ha : There is a statistical difference between the observed sample mean and its presumed population mean.

In order to run these tests, we would need to extract data for each metric using spec sheets of MechaCar vehicles and its competitors. 
