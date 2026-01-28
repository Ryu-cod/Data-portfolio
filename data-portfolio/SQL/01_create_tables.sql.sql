-- ============================================
-- 01_create_tables.sql
-- Dartmortt LLC Employee Data Model
-- ============================================

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id        INT PRIMARY KEY,
    first_name         VARCHAR(50),
    last_name          VARCHAR(50),
    age                INT,
    gender             VARCHAR(10),
    department         VARCHAR(100),
    job_title          VARCHAR(100),
    employment_type    VARCHAR(50),
    salary             DECIMAL(12,2),
    hire_date          DATE,
    location           VARCHAR(100)
);
