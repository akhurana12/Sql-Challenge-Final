/*List the employee number, last name, first name, sex, and salary of each employee.*/

SELECT	e.emp_no, e.last_name, e.first_name
		,e.sex
		,(SELECT s.salary FROM salaries AS s 
		  WHERE e.emp_no = s.emp_no) AS salary
					
FROM employees AS e
;




/*List the manager of each department with the following information: 
department number, department name, employee number, last name, 
first name.*/

SELECT
		d.dept_no
		,d.dept_name
		,e.emp_title_id
		,e.last_name
		,e.first_name

FROM 	dept_emp as de
		JOIN employees as e
					ON e.emp_no = de.emp_no
		JOIN departments as d
					ON d.dept_no = de.dept_no

WHERE e.emp_title_id LIKE 'm%'
;


/*List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.*/

SELECT
		e.first_name
		,e.last_name
		,e.sex

FROM	employees AS e

WHERE	e.first_name = 'Hercules'
		AND e.last_name LIKE 'B%'
;

select distinct on (emp_no) *
into current_dept_emp
from dept_emp
order by emp_no DESC;

/*6.List each employee in the Sales department, including their employee number, last name, and first name.*/


select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
join current_dept_emp as cde
on e.emp_no = cde.emp_no
join departments as d
on dept_no 
where (d.dept_name) = 'sales';
