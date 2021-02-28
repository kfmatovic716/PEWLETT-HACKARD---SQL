-- Create the titles table & check table data import
CREATE TABLE titles (
  	title_id VARCHAR(10) PRIMARY KEY,
    title_name VARCHAR(30) NOT NULL
);

SELECT 
	* 
FROM 
titles;

-- Create an employees table & check table data import
CREATE TABLE employees (
    emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
    birth_data date,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date date
);

SELECT 
	* 
FROM 
employees;

-- Create an departments table & check table data import
CREATE TABLE departments (
    dept_no VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(20)
);

SELECT 
	* 
FROM 
departments;

-- Create an dept_manager table & check table data import
CREATE TABLE dept_manager (
	dept_no VARCHAR(10) NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INTEGER NOT NULL,
    FOREIGN KEY (emp_no)  REFERENCES employees(emp_no)
);

SELECT 
	* 
FROM 
dept_manager;

-- Create an dept_emp table & check table data import
CREATE TABLE dept_emp (
    emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(10) NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT 
	* 
FROM 
dept_emp;

-- Create salaries table & check table data import
CREATE TABLE salaries (
	emp_no INTEGER NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    salary MONEY
);

SELECT 
	* 
FROM 
salaries;
