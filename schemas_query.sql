CREATE TABLE Employees(
	emp_no INT PRIMARY KEY ,
	empt_title_id VARCHAR(255) NOT NULL UNIQUE,
	birth_date DATE,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	sex VARCHAR(255) NOT NULL,
	hire_date DATE
);

CREATE TABLE titles(
	title_id VARCHAR(255) UNIQUE,
	title varchar(255) NOT NULL,
	FOREIGN KEY(title_id) REFERENCES Employees(empt_title_id)
);

CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary INT,
	FOREIGN KEY(emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE dep_emp(
	emp_no INT PRIMARY KEY,
	dept_no INT UNIQUE,
	FOREIGN KEY(emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE dept_manager(
	emp_no INT PRIMARY KEY,
	dept_no INT UNIQUE,
	FOREIGN KEY(emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES dep_emp(dept_no)
);

CREATE TABLE Departmants(
	dept_no INT UNIQUE,
	dept_name VARCHAR(255) NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES dept_manager(dept_no)
);
