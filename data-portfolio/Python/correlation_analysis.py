import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

df = pd.read_csv("employees.csv")

corr = df[['age', 'salary']].corr()
print(corr)

sns.scatterplot(data=df, x="age", y="salary")
plt.title("Age vs Salary")
plt.savefig("../visuals/age_salary_scatter.png")
plt.show()
