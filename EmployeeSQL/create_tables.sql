-- Table Create
CREATE TABLE titles (
  title_id VARCHAR(30) PRIMARY KEY,
  title VARCHAR(30) NOT NULL
);

CREATE TABLE departments (
  dept_no VARCHAR(30) PRIMARY KEY,
  dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE employees (
  emp_no INT PRIMARY KEY,
  title_id VARCHAR(30) REFERENCES titles(title_id),
  birh_date VARCHAR(30) NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  sex VARCHAR(5),
  hire_date VARCHAR(30) NOT NULL
);

CREATE TABLE salary (
  emp_no INT REFERENCES employees(emp_no),
  salary INT
);

CREATE TABLE dept_emp (
  emp_no INT REFERENCES employees(emp_no),
  dept_no VARCHAR(30) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
  dept_no VARCHAR(30) REFERENCES departments(dept_no),
  emp_no INT REFERENCES employees(emp_no)
);



