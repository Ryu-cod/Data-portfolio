-- ============================================
-- 05_executive_reports.sql
-- Executive-Level Insights & KPIs
-- ============================================

-- Total salary spend
SELECT ROUND(SUM(salary), 2) AS total_salary_spend
FROM employees;

-- Salary spend by department
SELECT department, ROUND(SUM(salary), 2) AS department_salary_spend
FROM employees
GROUP BY department
ORDER BY department_salary_spend DESC;

-- Top 5 highest-cost departments
SELECT department, ROUND(SUM(salary), 2) AS total_spend
FROM employees
GROUP BY department
ORDER BY total_spend DESC
LIMIT 5;

-- Average tenure (in years)
SELECT ROUND(AVG(DATEDIFF(CURDATE(), hire_date) / 365), 2) AS avg_tenure_years
FROM employees;

-- Pay equity flags (roles with > $15k gap)
SELECT job_title,
       MAX(salary) - MIN(salary) AS salary_gap,
       COUNT(*) AS employees_in_role
FROM employees
GROUP BY job_title
HAVING salary_gap > 15000
ORDER BY salary_gap DESC;

-- Executive summary
SELECT
    (SELECT COUNT(*) FROM employees) AS total_employees,
    (SELECT ROUND(AVG(salary), 2) FROM employees) AS avg_salary,
    (SELECT ROUND(SUM(salary), 2) FROM employees) AS total_salary_spend,
    (SELECT COUNT(*) FROM employees WHERE age >= 55) AS retirement_risk_count;
