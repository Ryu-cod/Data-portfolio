import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("employees.csv")

plt.figure(figsize=(10,5))
plt.hist(df['salary'], bins=20, color='skyblue')
plt.title("Salary Distribution")
plt.xlabel("Salary")
plt.ylabel("Frequency")
plt.savefig("../visuals/salary_boxplot.png")
plt.show()
