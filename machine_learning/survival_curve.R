# Resources: 
#  - http://rpubs.com/sinhrks/plot_surv
#  - https://www.r-statistics.com/2013/07/creating-good-looking-survival-curves-the-ggsurv-function/
#  - https://rstudio-pubs-static.s3.amazonaws.com/5588_72eb65bfbe0a4cb7b655d2eee0751584.html

library(survival)
# Pass survival curve data to ggplot2 for better charts
library(ggfortify) 

# Survival charts need two variables minimum to calculate somethings survival rate.
#  - Time: In this case it is number of days someone has been active on an application, and whether they are still active.
#  - Event: The 'survival' event signyfing if the observation has survived. Must be logical. 

dplyr::select(activeOnService, isChurned)

# Do Survival Analysis
data <- survfit(Surv(survival_data$activeOnService, survival_data$isChurned == TRUE)~1)

# Produces summary data of fit, including variables of time and survival rate.
summary(data)

# Styling Plot with Survival Analysis
autoplot(survfit(Surv(survival_data$activeOnService, survival_data$isChurned == TRUE)~1), 
           surv.linetype = 'dashed', 
        surv.colour = 'blue',
         conf.int.fill = 'dodgerblue3', 
         conf.int.alpha = 0.5, 
         censor = FALSE)
