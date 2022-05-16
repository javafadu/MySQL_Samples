create database proje2;
use proje2;

CREATE TABLE employees (
emp_no INT,
birth_date DATE,
first_name VARCHAR(30),
last_name VARCHAR(30),
gender ENUM('M','F'),
hire_date DATE,
Primary key (emp_no)
);


CREATE TABLE departments (
dept_no CHAR(4),
dept_name VARCHAR(30),
primary key (dept_no),
unique key (dept_name)
);



CREATE TABLE dept_emp (
emp_no INT,
dept_no CHAR(4),
from_date DATE,
to_date DATE,
FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);



CREATE TABLE dept_manager (
dept_no CHAR(4),
emp_no INT,
from_date DATE,
to_date DATE,
FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);


CREATE TABLE titles (
emp_no INT,
title VARCHAR(30),
from_date DATE,
to_date DATE,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);



CREATE TABLE salaries (
emp_no INT,
salary INT,
from_date DATE,
to_date DATE,
FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
FOREIGN KEY(from_date) REFERENCES titles(from_date)
);