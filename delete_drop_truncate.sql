# UPDATE

SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999901;
    
--
    
UPDATE employees 
SET 
    first_name = 'Puszek',
    last_name = 'Misiowiec',
    birth_date = '1994-12-21',
    gender = 'F'
WHERE
    emp_no = 999901;
 
--

SELECT 
    *
FROM
    departaments_dup
ORDER BY dept_no;


COMMIT;



UPDATE departaments_dup
SET 
    dept_no = 'd011',
    dept_name = 'Quality Control';
    
    
rollback;
    

--

select * from departments;

UPDATE departments 
SET 
    dept_name = 'Data Analysis'
WHERE
    dept_no = 'd010';


# DELETE

COMMIT;

SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999903;
    
    
DELETE FROM employees WHERE emp_no = 999903;

ROLLBACK;

--

SELECT 
    *
FROM
    departaments_dup;

DELETE FROM departaments_dup;

ROLLBACK;

--

select * from departments;

delete from departments where dept_no = 'd010';

--

# DROP TRUNCATE DELETE

-- DROP removes all

-- TRUNCATE is DELETE without WHERE - its faster

-- DELETE does not reset auto increment














    
    