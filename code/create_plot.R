
library(ggplot2)

data$primins1 <- factor(data$primins1, levels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 88, 77, 99),
                        labels = c("Employer Plan", 
                                   "Private Plan (Self-Purchased)", 
                                   "Medicare", 
                                   "Medigap", 
                                   "Medicaid", 
                                   "CHIP", 
                                   "Military/VA (TRICARE/CHAMP-VA)", 
                                   "Indian Health Service", 
                                   "State Sponsored Plan", 
                                   "Other Government Program", 
                                   "Uninsured (No Coverage)", 
                                   "Don't Know/Not Sure", 
                                   "Refused"))

data <- data %>% filter(!primins1 %in% c("Don't Know/Not Sure", "Refused"))
data <- data %>% filter(!is.na(primins1))

# Create plot
mental_health_plot <- ggplot(data, aes(x = primins1, y = menthlth)) +
  geom_boxplot(outlier.shape = 16, outlier.size = 2) +
  labs(title = "Days of Poor Mental Health by Insurance Type",
       x = "Primary Insurance Type",
       y = "Days of Poor Mental Health") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 35, hjust = 1, size = 10))
