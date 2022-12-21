library(dplyr)
#Part 1: Linear Regression to Predict MPG

##import data
table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(table)

##multiple linear regression
lm(mpg ~vehicle_length + vehicle_weight + spoiler_angle +ground_clearance + AWD,data=table) #generate multiple linear regression model
summary(lm(mpg ~ mpg + vehicle_length + vehicle_weight + spoiler_angle +ground_clearance + AWD,data=table)) #generate summary statistics

#Part 2: Create Visualizations for the Trip Analysis

##Import file
suspension <- read.csv(file='Suspension_Coil.csv',stringsAsFactors = F)
head(suspension)

##summary statistics dataframe for PSI
total_summary=suspension %>%summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

##summary statistics dataframe for PSI
lot_summary=suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#Part 3: T-Tests on Suspension Coils

##compare sample versus population mean of 1500
t.test(suspension$PSI,mu=1500) 

##compare sample using subset
### code 1:
lot1 <- subset(suspension,Manufacturing_Lot=="Lot1")
t.test(lot1$PSI,mu=1500)

### code 2:
lot2 <- subset(suspension,Manufacturing_Lot=="Lot2")
t.test(lot2$PSI,mu=1500)

### code 3:
lot3 <- subset(suspension,Manufacturing_Lot=="Lot3")
t.test(lot3$PSI,mu=1500)
