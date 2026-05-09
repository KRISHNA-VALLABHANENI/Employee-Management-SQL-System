CREATE DATABASE company_db;
USE company_db;

CREATE TABLE companies (
  company_id INT PRIMARY KEY,
  company_name VARCHAR(255) NOT NULL
);

INSERT INTO companies (company_id, company_name) VALUES
  (1, 'TCS'),
  (2, 'WIPRO'),
  (3, 'ACCENTURE'),
  (4, 'COGNIZANT');
  
  SELECT * FROM companies;
  
  CREATE TABLE departments (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(255) NOT NULL,
  company_id INT,
FOREIGN KEY (company_id) REFERENCES companies(company_id)
);

INSERT INTO departments (department_id, department_name, company_id) VALUES
  (10, 'Engineering', 1),   
  (11, 'Human Resources', 1),
  (20, 'IT Services', 2),   
  (30, 'Finance', 3),       
  (40, 'Sales', 4);
  
  SELECT * FROM departments;
  
  CREATE TABLE employees (
  employee_id INT PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  department_id INT,
  salary DECIMAL(15,2) NOT NULL,
  hire_date DATE NOT NULL,
  manager_id INT NULL,
  job_title VARCHAR(255) NOT NULL,
FOREIGN KEY (department_id) REFERENCES departments(department_id),
FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);

INSERT INTO employees (employee_id, first_name, last_name, department_id, salary, hire_date, manager_id, job_title) VALUES
  (100, 'Amit',  'Sharma',   10, 120000.00, '2018-06-01', NULL, 'Head of Engineering'),  
  (101, 'Sneha', 'Patel',    11,  90000.00, '2019-09-10', NULL, 'HR Manager'),           
  (102, 'Ramesh','Kumar',    30,  95000.00, '2017-02-20', NULL, 'Head of Finance');

INSERT INTO employees (employee_id, first_name, last_name, department_id, salary, hire_date, manager_id, job_title) VALUES
  (103, 'Priya',  'Kumar',   10,  95000.00, '2019-08-15', 100, 'Senior Engineer'),
  (104, 'Rahul',  'Verma',   20,  80000.00, '2020-03-10', 100, 'System Engineer'),
  (105, 'Ravi',   'Gupta',   30,  65000.00, '2022-05-05', 102, 'Accountant'),
  (106, 'Ananya', 'Reddy',   40,  75000.00, '2021-02-28', 100, 'Sales Manager'),
  (107, 'Teja',   'N',       10,  68000.00, '2023-01-10', 103, 'Junior Engineer');
  
  SELECT * FROM employees;
  