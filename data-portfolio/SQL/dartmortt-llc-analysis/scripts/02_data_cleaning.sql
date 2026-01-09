-- ============================================
-- 02_data_cleaning.sql
-- Data Cleaning & Standardization
-- ============================================

-- Remove duplicate employees
DELETE FROM employees
WHERE employee_id IN (
    SELECT employee_id
    FROM (
        SELECT employee_id,
               ROW_NUMBER() OVER (PARTITION BY employee_id ORDER BY employee_id) AS rn
        FROM employees
    ) t
    WHERE rn > 1
);

-- Standardize gender values
UPDATE employees
SET gender = CASE
    WHEN LOWER(gender) IN ('m', 'male') THEN 'Male'
    WHEN LOWER(gender) IN ('f', 'female') THEN 'Female'
    ELSE 'Other'
END;

-- Fix negative or unrealistic ages
UPDATE employees
SET age = NULL
WHERE age < 16 OR age > 80;

-- Standardize department names
UPDATE employees
SET department = INITCAP(department);

-- Remove leading/trailing spaces
UPDATE employees
SET first_name = TRIM(first_name),
    last_name  = TRIM(last_name),
    job_title  = TRIM(job_title);
