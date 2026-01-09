-- ============================================
-- 01_create_tables.sql
-- Dartmortt LLC Employee Data Model
-- ============================================

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id        INT PRIMARY KEY,
    first_name         VARCHAR(50),
    last_name          VARCHAR(50),
    gender             VARCHAR(10),
    age                INT,
    department         VARCHAR(100),
    job_title          VARCHAR(100),
    employment_type    VARCHAR(50),
    salary             DECIMAL(10,2),
    hire_date          DATE,
    manager_id         INT,
    location           VARCHAR(100)
);

DROP TABLE IF EXISTS managers;

CREATE TABLE managers (
    manager_id     INT PRIMARY KEY,
    manager_name   VARCHAR(100),
    department     VARCHAR(100)
);
