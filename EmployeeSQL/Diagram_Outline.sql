departments
-
dept_no VARCHAR PK
dept_name VARCHAR

dept_emp
-
emp_no INTEGER PK FK >- employees.emp_no
dept_no VARCHAR PK FK >- departments.dept_no
from_date DATE
to_date DATE

dept_manager
-
dept_no VARCHAR PK FK >- departments.dept_no
emp_no INTEGER PK FK >- employees.emp_no
from_date DATE
to_date DATE

employees
-
emp_no INTEGER PK FK - salaries.emp_no
birth_date DATE
first_name VARCHAR
last_name VARCHAR
gender VARCHAR
hire_date DATE

salaries
-
emp_no INTEGER PK
salary INTEGER
from_date DATE
to_date DATE

titles
-
emp_no INTEGER PK FK >- employees.emp_no
title VARCHAR PK
from_date DATE PK
to_date DATE