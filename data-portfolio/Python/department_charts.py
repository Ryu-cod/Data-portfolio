import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

df = pd.read_csv("employees.csv")

plt.figure(figsize=(12,6))
sns.boxplot(data=df, x="department", y="salary")
plt.xticks(rotation=45)
plt.title("Salary by Department")
plt.savefig("../visuals/department_salary.png")
plt.show()
