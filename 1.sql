# SELECT

SELECT * FROM employees;
--

SELECT 
    first_name, last_name
FROM
    employees;
--
    
SELECT dept_no FROM departments;

SELECT * FROM departments;    
--

# WHERE

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis';
--

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Elvis' AND gender = 'M';
--

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie' AND gender = 'F';
--

# OR

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis' OR first_name = 'Elvis';
    
# if you add AND there is no output, AND should be on diffrent columns and OR on the same

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie' OR first_name = 'Aruna';
--

SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis' AND (gender = 'M' OR gender = 'F');
--

SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND (first_name = 'Kellie'
        OR first_name = 'Aruna');
--

# IN and NOT IN

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Cathie'
        OR first_name = 'Mark'
        OR first_name = 'Nathan';

# Szybsza droga do celu to:

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Cathie', 'Mark', 'Nathan');
--

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('Cathie', 'Mark', 'Nathan');
--

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Denis', 'Elvis');
--

# NOT LIKE

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar%');
--    

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%ar');
--

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%ar%');
--

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar_');
--

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('Mar_');
--

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mark%');
--

SELECT 
    *
FROM
    employees
WHERE
    hire_date LIKE ('%2000%');
--

SELECT 
    *
FROM
    employees
WHERE
    emp_no LIKE ('1000_');



    
    
