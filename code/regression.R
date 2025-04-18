# Run Regression

library(kableExtra)

regression_model <- lm(menthlth ~ medcost1, data = data)
regression_results <- summary(regression_model)

# Format table
regression_table <- as.data.frame(regression_results$coefficients)
colnames(regression_table) <- c("Estimate", "Std. Error", "t value", "Pr(>|t|)")
