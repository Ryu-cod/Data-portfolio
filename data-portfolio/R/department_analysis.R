library(dplyr)
library(ggplot2)

employees <- read.csv("employees.csv")

ggplot(employees, aes(x = department, y = salary)) +
  geom_boxplot(fill = "orange") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(title = "Salary by Department")
