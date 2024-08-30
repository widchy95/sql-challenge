-- Create the departments table
CREATE TABLE departments (
    dept_no CHAR(5) PRIMARY KEY,
    dept_name VARCHAR(40) NOT NULL
);

-- Create the titles table
CREATE TABLE titles (
    title_id CHAR(5) PRIMARY KEY,
    title VARCHAR(50) NOT NULL
);

-- Create the employees table
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id CHAR(5) REFERENCES titles(title_id),
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex CHAR(1) CHECK (sex IN ('M', 'F')),
    hire_date DATE NOT NULL
);

-- Create the salaries table
CREATE TABLE salaries (
    emp_no INT REFERENCES employees(emp_no),
    salary DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (emp_no)
);

-- Create the department employees table
CREATE TABLE dept_emp (
    emp_no INT REFERENCES employees(emp_no),
    dept_no CHAR(5) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- Create the department managers table
CREATE TABLE dept_manager (
    dept_no CHAR(5) REFERENCES departments(dept_no),
    emp_no INT REFERENCES employees(emp_no),
    PRIMARY KEY (dept_no, emp_no)
);