# INSERT

SELECT 
    *
FROM
    employees
    order by emp_no desc
LIMIT 10;


--

insert into employees
(
emp_no,
birth_date,
first_name,
last_name,
gender,
hire_date
) values 
(
999901,
'1986-04-21',
'John',
'Smtih',
'M',
'2011-01-01'
);

--

insert into employees
values 
(
999902,
'1666-04-21',
'Kotek',
'Smtih',
'M',
'2011-01-01'
);

INSERT INTO employees

VALUES

(

    999903,

    '1977-09-14',

    'Johnathan',

    'Creek',

    'M',

    '1999-01-01'

);

--

select * from titles order by emp_no desc;

insert into titles
(
emp_no,
title,
from_date
)
values
(
999903,
'Senior Engineer',
'1997-09-01'
);


select * from dept_emp;

insert into dept_emp
values
(
999903,
'd005',
'1997-09-01',
'9999-01-01'
);

--

# INSERT INTO NEW TABLE

-- How to copy a table data into another table

CREATE TABLE departaments_dup (
    dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);

SELECT 
    *
FROM
    departaments_dup;
    
--

INSERT INTO departaments_dup
(
 dept_no,
 dept_name
)
select * from departments;

--
SELECT 
    *
FROM
    departaments_dup;
--

INSERT INTO departments 
values
(
'd010',
'Business Analysis'
);




















