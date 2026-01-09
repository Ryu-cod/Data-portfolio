-- ============================================
-- 03_hr_analytics.sql
-- HR Analytics Queries
-- ============================================

-- 1. Headcount by department
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department
ORDER BY total_employees DESC;

-- 2. Gender distribution
SELECT gender, COUNT(*) AS count
FROM employees
GROUP BY gender;

-- 3. Age distribution buckets
SELECT
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 45 THEN '36-45'
        WHEN age BETWEEN 46 AND 55 THEN '46-55'
        WHEN age >= 56 THEN '56+'
        ELSE 'Unknown'
    END AS age_group,
    COUNT(*) AS total
FROM employees
GROUP BY age_group
ORDER BY total DESC;

-- 4. Employees nearing retirement (55+)
SELECT *
FROM employees
WHERE age >= 55
ORDER BY age DESC;

-- 5. Manager-to-employee ratio
SELECT manager_id, COUNT(*) AS direct_reports
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id
ORDER BY direct_reports DESC;
