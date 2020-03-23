CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT,
	from_date DATE,
	to_date DATE
);

CREATE TABLE departments (
	dept_no VARCHAR(50) PRIMARY KEY,
	dept_name VARCHAR(50)
);

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	gender VARCHAR(50),
	hire_date DATE,
	FOREIGN KEY (emp_no) REFERENCES salaries(emp_no)
);

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(50),
	from_date DATE,
	to_date DATE,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(50),
	emp_no INT,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
	emp_no INT,
	title VARCHAR(50),
	from_date DATE,
	to_date DATE,
	PRIMARY KEY (emp_no, title, from_date),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);