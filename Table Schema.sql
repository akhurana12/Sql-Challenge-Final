CREATE TABLE TITLES (title_id varchar(30),
					title VARCHAR(40) NOT NULL);
					
CREATE TABLE DEPARTMENTS (dept_no varchar(30) primary key NOT NULL,
						 dept_name VARCHAR(35) NOT NULL);
						 
CREATE TABLE EMPLOYEES (emp_no varchar(40) NOT NULL PRIMARY KEY, 
					   emp_title_id varchar(40) not null,
					   birth_date varchar(40) NOT NULL,
					   first_name varchar(40) not null,
					   last_name varchar(40) not null,
					   sex varchar(40) not null,
					   hire_date varchar(40) not null);
						 
CREATE TABLE DEPT_EMP (emp_no varchar(40) NOT NULL,
						dept_no VARCHAR(40) NOT NULL,
					  foreign key (emp_no) references EMPLOYEES(emp_no),
					  foreign key (dept_no) references DEPARTMENTS(dept_no));
					  
CREATE TABLE SALARIES (emp_no varchar(40) NOT NULL PRIMARY KEY, 
					   salary varchar(40) not null,
					   foreign key (emp_no) references EMPLOYEES(emp_no)
					  );
				
					   
CREATE TABLE DEPT_MANAGER (dept_no varchar(40) NOT NULL, 
					   emp_no varchar(40) not null,
					   foreign key (emp_no) references EMPLOYEES(emp_no),
									foreign key (dept_no) references DEPARTMENTS(dept_no)
					  );