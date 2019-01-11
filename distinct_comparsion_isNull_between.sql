# WildCards

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%jack%');
--

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('%jack%');
--

# BETWEEN.. AND..

SELECT 
    *
FROM
    employees
WHERE
    hire_date BETWEEN '1990-01-01' AND '2000-01-01';
--

SELECT 
    *
FROM
    employees
WHERE
    hire_date NOT BETWEEN '1990-01-01' AND '2000-01-01';
--

SELECT 
    *
FROM
    salaries
WHERE
    salary BETWEEN 66000 AND 70000; 
--

SELECT 
    *
FROM
    employees
WHERE
    emp_no NOT BETWEEN '10004' AND '10012';
--

SELECT 
    dept_name
FROM
    departments
WHERE
    dept_no BETWEEN 'd003' AND 'd006';
--

# IS NULL, IS NOT NULL

SELECT 
    *
FROM
    employees
WHERE
    first_name IS NULL;
--

SELECT 
    *
FROM
    departments
WHERE
    dept_no IS NOT NULL;
--

# COMPARSION OPERATORS

--
SELECT * FROM employees WHERE first_name = 'Mark';

SELECT * FROM employees WHERE first_name <> 'Mark'; -- is not

SELECT * FROM employees WHERE first_name != 'Mark'; -- is not

SELECT * FROM employees WHERE hire_date >= '2000-01-01';
--

# SELECT DISTINC
-- no duplicate values

SELECT DISTINCT gender FROM employees;















