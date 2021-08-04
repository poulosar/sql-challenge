--Basic employee information and salary to go with it
SELECT e.emp_no,e.last_name,e.first_name,e.sex, s.salary  
FROM employees e
FULL OUTER JOIN salaries s
ON e.emp_no = s.emp_no;


--Emp info from 1986 hiring year, hire date included
SELECT first_name
	,last_name
	,hire_date

FROM employees
WHERE EXTRACT(year FROM "hire_date") = 1986;


--Manager of departments with info
--INFO: dept_name,dept_no,emp_no,last_name,first_name
--Creating a view for this as manager_info
CREATE VIEW manager_info AS
SELECT e.last_name,e.first_name, e.emp_no, dm.dept_no
FROM employees e
FULL OUTER JOIN dept_manager dm
ON e.emp_no = dm.emp_no
WHERE dm.dept_no IS NOT NULL;

-- Shows all managers names, emp number, dept name/number
SELECT last_name,first_name,emp_no,d.dept_no,d.dept_name
FROM manager_info 
RIGHT JOIN departments d
ON manager_info.dept_no = d.dept_no;

-- -- View created for employee info minus dept name
-- -- employee number, last name, first name, and department name.
CREATE VIEW emp_info AS
SELECT e.emp_no,e.last_name,e.first_name,de.dept_no
FROM employees e
RIGHT JOIN dept_emp de
ON e.emp_no = de.emp_no

-- Query to show all employees information and their department name
-- Creating a view for ease of use later

CREATE VIEW employee_dept_info AS
SELECT emp_no,last_name,first_name,d.dept_no,d.dept_name
FROM emp_info ei
INNER JOIN departments d
ON ei.dept_no = d.dept_no;




--Finding First name as Hercules and last name starting with B
SELECT first_name,last_name,sex
FROM employees
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';


--Employees in sales department
SELECT emp_no,last_name,first_name,dept_name
FROM employee_dept_info edi
WHERE dept_name = 'Sales';

-- Same as above but showing sales and development
--Employees in sales department
SELECT emp_no,last_name,first_name,dept_name
FROM employee_dept_info edi
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--Groups last_name column by name, then returns that same rown AND the count of that name
-- shows results in descending order
SELECT last_name,COUNT(last_name) count_of_last_names
FROM employees e
GROUP BY last_name
ORDER BY last_name DESC;


