CREATE database task4;
use task4;
-- #1 CREATE TABLE
-- Creating an employees table with employee details

CREATE TABLE employees (
    id INTEGER,
    name TEXT,
    department TEXT,
    salary INTEGER
);


-- #2 INSERT DATA
-- Adding sample employee records

INSERT INTO employees (id, name, department, salary) VALUES
(1, 'Rahul', 'IT', 50000),
(2, 'Priya', 'IT', 60000),
(3, 'Amit', 'HR', 40000),
(4, 'Neha', 'HR', 45000),
(5, 'Karan', 'Sales', 35000),
(6, 'Sneha', 'Sales', 55000);


-- #3 VIEW ALL EMPLOYEES
-- Check the data before applying aggregate functions

SELECT * FROM employees;


-- #4 SUM FUNCTION
-- Calculate the total salary of all employees

SELECT SUM(salary) AS total_salary
FROM employees;


-- #5 COUNT FUNCTION
-- Count the total number of employees

SELECT COUNT(*) AS total_employees
FROM employees;


-- #6 AVG FUNCTION
-- Calculate the average salary of all employees

SELECT AVG(salary) AS average_salary
FROM employees;


-- #7 GROUP BY WITH SUM
-- Calculate total salary for each department

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;


-- #8 GROUP BY WITH COUNT
-- Count the number of employees in each department

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;


-- #9 GROUP BY WITH AVG
-- Calculate the average salary for each department

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;


-- #10 HAVING CLAUSE
-- Show only departments where average salary is greater than 45000

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 45000;


-- #11 GROUP BY WITH MULTIPLE AGGREGATE FUNCTIONS
-- Show employee count, total salary and average salary
-- for every department

SELECT 
    department,
    COUNT(*) AS employee_count,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department;


-- #12 HAVING WITH SUM
-- Show departments whose total salary is greater than 90000

SELECT 
    department,
    SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 90000;


-- #13 SORT GROUPED RESULTS
-- Display departments from highest average salary to lowest

SELECT 
    department,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC;


-- #14 FINAL SUMMARY
-- Complete department-wise salary analysis

SELECT 
    department,
    COUNT(*) AS total_employees,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING COUNT(*) >= 2
ORDER BY total_salary DESC;