-- ============================================
-- 04_salary_analysis.sql
-- Salary & Compensation Analytics
-- ============================================

-- Average salary by department
SELECT department, ROUND(AVG(salary), 2) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC;

-- Highest-paid employees
SELECT first_name, last_name, job_title, salary
FROM employees
ORDER BY salary DESC
LIMIT 10;

-- Salary distribution by job title
SELECT job_title,
       ROUND(AVG(salary), 2) AS avg_salary,
       MIN(salary) AS min_salary,
       MAX(salary) AS max_salary
FROM employees
GROUP BY job_title
ORDER BY avg_salary DESC;

-- Gender pay gap
SELECT gender, ROUND(AVG(salary), 2) AS avg_salary
FROM employees
GROUP BY gender;

-- Salary outliers (top 5%)
SELECT *
FROM employees
WHERE salary > (
    SELECT PERCENTILE_CONT(0.95) WITHIN GROUP (ORDER BY salary)
);
