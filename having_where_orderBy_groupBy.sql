# AGGREGATE FUNCTIONS

-- COUNT()

SELECT COUNT(emp_no) FROM employees;

--

SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees;
--

SELECT 
    COUNT(*)
FROM
    salaries
WHERE
    salary >= 100000;
--

SELECT 
    COUNT(*)
FROM
    dept_manager;
--

# ORDER BY

SELECT 
    *
FROM
    employees
ORDER BY first_name;
--

SELECT 
    *
FROM
    employees
ORDER BY first_name, last_name ASC;
--

# GROUP BY 

SELECT 
    first_name
FROM
    employees -- group by shows only distinct values
GROUP BY first_name;
--

SELECT 
    first_name, COUNT(first_name)
FROM
    employees
GROUP BY first_name
ORDER BY first_name DESC;
--

# ALIASES

SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY first_name
ORDER BY first_name DESC;
--

SELECT 
    salary, COUNT(emp_no) AS emps_with_same_salary
FROM
    salaries
WHERE
    salary > 80000
GROUP BY salary
ORDER BY salary;
--

# HAVING

SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY first_name
HAVING COUNT(first_name) > 250
ORDER BY first_name;
--

SELECT 
    emp_no, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000;

--

# HAVING + WHERE

SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name DESC;


# refactor

-- HAVING can't contain aggregate and non-aggregate functions
-- Aggregate function goes with GROUP BY and HAVING
-- General condtions goes with WHERE

select * from dept_emp;

# znajdz wszystkich pracownikow ktorzy zostali zatrudnieni wiecej niz jeden raz po 1 stycznia 2000

SELECT 
    emp_no, COUNT(emp_no) AS employee
FROM
    dept_emp
WHERE
    from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(from_date) > 1
ORDER BY emp_no;

-- -- -- -- -- -- -- -- -- -- -- -- --

# LIMIT

SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;





