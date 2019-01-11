# Joins


-- dept_manager_dup
SELECT 
    *
FROM
    dept_manager_dup
ORDER BY dept_no;


-- departaments_dup

SELECT 
    *
FROM
    departaments_dup
ORDER BY dept_no;


-- ----------------------

# INNER JOIN

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departaments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

--

SELECT 
    e.emp_no, e.first_name, e.last_name, e.hire_date, m.dept_no
FROM
    employees e
        INNER JOIN -- or just JOIN
    dept_manager m ON e.emp_no = m.emp_no
ORDER BY e.emp_no;

--

# LEFT JOIN

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    departaments_dup d
        LEFT JOIN
    dept_manager_dup m ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

--

SELECT 
    e.emp_no, e.first_name, e.last_name, m.dept_no, m.from_date
FROM
    employees e
        JOIN
    dept_manager m ON e.emp_no = m.emp_no
        WHERE e.last_name = 'Markovitch'
ORDER BY m.dept_no DESC , e.emp_no;


# SYNTAX OLD

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m,
    departaments_dup d
WHERE
    m.dept_no = d.dept_no
ORDER BY m.dept_no;

--

SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    dm.dept_no,
    e.hire_date
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no; 

--

# JOIN + WHERE

SELECT 
    e.emp_no, e.first_name, e.last_name, s.salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    s.salary > 145000;

--

# CROSS JOIN

SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
ORDER BY dm.emp_no , d.dept_no;

-- same same

SELECT 
    dm.*, d.*
FROM
    dept_manager dm,
    departments d
ORDER BY dm.emp_no , d.dept_no;

-- exclude vals by using <> :

SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
WHERE
    d.dept_no <> dm.dept_no
ORDER BY dm.emp_no , d.dept_no;

-- more than one table

SELECT 
    e.*, e.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
        JOIN
    employees e ON dm.emp_no = e.emp_no
WHERE
    d.dept_no <> dm.dept_no
ORDER BY dm.emp_no , d.dept_no;

--

SELECT 
    m.*, d.*
FROM
    dept_manager m
        CROSS JOIN
    departments d
WHERE
    d.dept_no = 'd009'
ORDER BY d.dept_name;

--

SELECT
    e.*, d.*
FROM
    employees e
        CROSS JOIN
    departments d
WHERE
    e.emp_no < 10011
ORDER BY e.emp_no, d.dept_name;

--

SELECT 
    e.gender, AVG(s.salary) AS average_salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
GROUP BY gender;

-- JOIN MORE THAN ONE TABLE: --

SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    m.from_date,
    d.dept_name
FROM
    employees e
        JOIN
    dept_manager m ON e.emp_no = m.emp_no
        JOIN
    departments d ON m.dept_no = d.dept_no;

--

SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    m.from_date,
    d.dept_name,
    t.title
FROM
    employees e
        JOIN
    dept_manager m ON e.emp_no = m.emp_no
        JOIN
    titles t ON e.emp_no = t.emp_no
        JOIN
    departments d ON m.dept_no = d.dept_no
WHERE
    t.title = 'Manager'
ORDER BY e.emp_no;


-- How to connect not realted tables with each other: --

SELECT 
    d.dept_name, AVG(salary) AS average_salary
FROM
    departments d
        JOIN
    dept_manager m ON d.dept_no = m.dept_no
        JOIN
    salaries s ON m.emp_no = s.emp_no
GROUP BY d.dept_name
HAVING average_salary > 60000
ORDER BY average_salary DESC;

--

SELECT 
    e.gender, COUNT(m.emp_no)
FROM
    employees e
        JOIN
    dept_manager m ON e.emp_no = m.emp_no
GROUP BY gender;
















































