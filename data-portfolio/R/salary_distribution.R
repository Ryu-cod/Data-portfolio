library(ggplot2)

employees <- read.csv("employees.csv")

ggplot(employees, aes(x = salary)) +
  geom_histogram(fill = "steelblue", bins = 20) +
  labs(title = "Salary Distribution", x = "Salary", y = "Count")
