# COUNT()

SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;

--

# this will count how many diffrent salaries there are, but without distict it will count rows
SELECT 
    COUNT(DISTINCT salary)
FROM
    salaries;
    
--

select count(*) from salaries; -- will include null values;

--

SELECT 
    COUNT(DISTINCT dept_no)
FROM
    dept_emp;
    
--

# SUM()

select sum(salary) from salaries;

select * from salaries;

select sum(salary) from salaries where from_date >= '1997-01-01';

--

# MAX() MIN()

select max(salary) from salaries;

--

# AVG()

select avg(salary) from salaries;

--

# ROUND()

SELECT 
    ROUND(AVG(salary), 2)
FROM
    salaries;

-- -- --------------- -- -- 

# COALESCE() and IF NULL()


-- change constrains: ----------- for this excercise -----
alter table departaments_dup
change column dept_name dept_name varchar(40) null;

insert into departaments_dup(dept_no) values ('d010'), ('d011');

select * from departaments_dup order by dept_no asc;

-- add dept_manager after dept_name table
alter table employees.departaments_dup
add column dept_manager varchar(255) null after dept_name;

commit;

-- --- --- --- --- --- --- ---

# How to replace null sign in null values:

select * from departaments_dup order by dept_no asc;


SELECT 
    dept_no, IFNULL(dept_name, 'No name provided') as detp_name
FROM
    departaments_dup;
 
-- COALESCE - can take more args

SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_manager, dept_name, 'N/A') AS dept_manager
FROM
    departaments_dup
ORDER BY dept_no;

--

SELECT 
    dept_no,
    dept_name,
    COALESCE('Department manager name') AS fake_col
FROM
    departaments_dup;

--
###
-- Select the department number and name from the ‘departments_dup’ 
-- table and add a third column where you name the department number (‘dept_no’) 
-- as ‘dept_info’. If ‘dept_no’ does not have a value, use ‘dept_name’.

SELECT
    ifnull(dept_no, 'n/a') as dept_no,
    ifnull(dept_name, 'n/a') as dept_name,
    COALESCE(dept_no, dept_name) AS dept_info

FROM
    departaments_dup
ORDER BY dept_no ASC;






























































































