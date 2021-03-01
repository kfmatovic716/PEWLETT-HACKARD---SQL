-- 1. Select the employee number, last name, first name, sex, and salary of all employees, ordered by employee number

-- Count number of records in employees and salaries table before joining
-- Each table counts = 300,024 records
SELECT
	COUNT(*)
FROM
	employees;
	
SELECT
	COUNT(*)
FROM
	salaries;
	
-- Join tables: employees & salaries (only include columns of interest)
-- Sorted by employee number
SELECT 
	employees.emp_no,
	employees.first_name,
	employees.last_name,
	employees.sex,
	salaries.salary
FROM 
	employees
INNER JOIN salaries ON
	employees.emp_no = salaries.emp_no
ORDER BY
	employees.emp_no ASC;

-- 2. Select the first name, last name, and hiring date for all employees hired in 1986 
SELECT 
	employees.first_name,
	employees.last_name,
	employees.hire_date
FROM
	employees
WHERE
	DATE_PART('year', hire_date) = 1986;

-- 3. Select the department number, department name, employee number, last name, and first name of all managers of each department
-- Join employees
SELECT 
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	dept_manager.dept_no as department_number,
	departments.dept_name as department_name
FROM
	employees
JOIN dept_manager ON 
	employees.emp_no = dept_manager.emp_no
JOIN departments ON
	dept_manager.dept_no = departments.dept_no;

-- 4. Select the employee number, last name, first name, and department of each employee, ordered by employee number
SELECT 
	employees.emp_no as employee_number,
	employees.last_name,
	employees.first_name,
	departments.dept_name as department_name
FROM
	employees
JOIN dept_emp ON
	employees.emp_no = dept_emp.emp_no
JOIN departments ON
	dept_emp.dept_no = departments.dept_no
ORDER BY
	employees.emp_no ASC;

-- 5. Select first name, last name, birth date, and sex of all employees whose first name is "Hercules" and last name begins with a "B"
SELECT 
	employees.last_name,
	employees.first_name,
	employees.sex,
	employees.birth_data as birth_date
FROM
	employees
WHERE
	employees.first_name = 'Hercules'
	AND employees.last_name LIKE 'B%';

-- 6. Select employee number, last name, first name, and department name of all employees in the Sales department, ordered by employee number
SELECT
	employees.emp_no as employee_number,
	employees.last_name,
	employees.first_name,
	departments.dept_name as department_name
FROM
	employees
JOIN dept_emp ON
	employees.emp_no = dept_emp.emp_no
JOIN departments ON
	dept_emp.dept_no = departments.dept_no	
WHERE
	departments.dept_name = 'Sales'
ORDER BY
	employee_number ASC;

-- 7. Select employee number, last name, first name, and department name of all employees in the 'Sales' OR the 'Development' department, ordered by employee number
SELECT
	employees.emp_no as employee_number,
	employees.last_name,
	employees.first_name,
	departments.dept_name as department_name
FROM
	employees
JOIN dept_emp ON
	employees.emp_no = dept_emp.emp_no
JOIN departments ON
	dept_emp.dept_no = departments.dept_no	
WHERE
	departments.dept_name = 'Sales'
	OR departments.dept_name = 'Development'
ORDER BY
	employee_number ASC;

-- 8. Count the number of employees, grouped by last name
SELECT
	employees.last_name,
	COUNT(*) as num_employees
FROM
	employees
GROUP BY 
	employees.last_name;
