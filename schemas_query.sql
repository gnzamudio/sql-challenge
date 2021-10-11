CREATE TABLE titles(
	title_id VARCHAR(255) PRIMARY KEY,
	title varchar(255) NOT NULL
);

CREATE TABLE departments(
	dept_no VARCHAR(255) PRIMARY KEY,
	dept_name VARCHAR(255) NOT NULL
);

CREATE TABLE Employees(
	emp_no INT PRIMARY KEY ,
	emp_title_id VARCHAR(255) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	sex VARCHAR(255) NOT NULL,
	hire_date DATE,
	FOREIGN KEY(emp_title_id) REFERENCES titles(title_id)	
);


CREATE TABLE salaries(
	emp_no INT,
	salary INT,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp(
	emp_no INT ,
	dept_no VARCHAR(255),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(255),
	emp_no INT,
	FOREIGN KEY(emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

