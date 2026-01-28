-- ============================================
-- 03_hr_analytics.sql
-- HR Analytics Queries
-- ============================================

-- Headcount by department
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department
ORDER BY total_employees DESC;

-- Gender distribution
SELECT gender, COUNT(*) AS count
FROM employees
GROUP BY gender;

-- Age distribution buckets
SELECT
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 45 THEN '36-45'
        WHEN age BETWEEN 46 AND 55 THEN '46-55'
        ELSE '56+'
    END AS age_group,
    COUNT(*) AS total
FROM employees
GROUP BY age_group
ORDER BY total DESC;

-- Employees nearing retirement (55+)
SELECT *
FROM employees
WHERE age >= 55;

-- Manager-to-employee ratio (CEO/CFO/VP)
SELECT job_title, COUNT(*) AS count
FROM employees
WHERE job_title IN ('CEO','CFO','Vice President')
GROUP BY job_title;
