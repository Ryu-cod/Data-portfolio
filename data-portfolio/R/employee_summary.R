library(dplyr)
library(ggplot2)

employees <- read.csv("employees.csv")

summary <- employees %>%
  group_by(department) %>%
  summarise(
    avg_salary = mean(salary),
    avg_age = mean(age),
    count = n()
  )

print(summary)
