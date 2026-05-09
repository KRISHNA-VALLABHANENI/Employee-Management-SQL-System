# SQL Company Database Management System

A SQL-based Company Database Management System built using MySQL.

This project demonstrates database design, table relationships, data management, and advanced SQL querying techniques including joins, CTEs, window functions, stored procedures, transactions, and recursive queries.

The project simulates a real-world company environment with:
- Companies
- Departments
- Employees
- Managers
- Salary management

---

# Features

- Database and table creation
- Foreign key relationships
- Employee and department management
- Salary analysis
- Manager hierarchy generation
- Window functions and ranking
- Recursive CTE queries
- Stored procedures
- Transaction handling
- Aggregate analysis
- Advanced SQL queries

---

# Technologies Used

- MySQL
- SQL

---

# Project Structure

```text
SQL-Company-Database-Management/
│
├── schema.sql
├── basic_queries.sql
├── advanced_queries.sql
├── procedures_and_transactions.sql
└── README.md
```

---

# Database Schema

The database contains the following tables:

## Companies
Stores company information.

| Column | Type |
|---|---|
| company_id | INT |
| company_name | VARCHAR |

---

## Departments
Stores department details and company relationships.

| Column | Type |
|---|---|
| department_id | INT |
| department_name | VARCHAR |
| company_id | INT |

---

## Employees
Stores employee details, salaries, managers, and job titles.

| Column | Type |
|---|---|
| employee_id | INT |
| first_name | VARCHAR |
| last_name | VARCHAR |
| department_id | INT |
| salary | DECIMAL |
| hire_date | DATE |
| manager_id | INT |
| job_title | VARCHAR |

---

# SQL Concepts Used

This project covers:

- SELECT statements
- WHERE clause
- ORDER BY
- GROUP BY
- Aggregate functions
- INNER JOIN / LEFT JOIN
- Subqueries
- Common Table Expressions (CTEs)
- Recursive CTEs
- Window Functions
- DENSE_RANK()
- CASE statements
- Stored Procedures
- Transactions
- EXISTS operator
- Foreign Keys
- Database normalization

---

# Implemented Queries

## Basic Queries
- Employee full names
- Department-wise employee listing
- Distinct job titles
- Salary sorting
- Employee counting
- Average department salary

---

## Advanced Queries
- Employee-manager mapping
- Employees earning above average salary
- Company-department-employee relationships
- Second highest salary
- Salary ranking using window functions
- Salary categorization using CASE

---

## Stored Procedures & Transactions
- Salary transfer procedure
- Transaction management using COMMIT and ROLLBACK
- Recursive employee hierarchy generation

---

# Suggested Improvements

Future improvements for this project:

- Add triggers
- Add views
- Add indexes for optimization
- Create ER diagrams
- Connect with Python frontend
- Build a dashboard using Power BI or Tableau
- Add employee attendance and payroll modules

---

# What I Learned

Through this project, I practiced:

- Relational database design
- Writing optimized SQL queries
- Managing table relationships
- Using advanced SQL concepts
- Implementing stored procedures
- Working with recursive queries
- Transaction handling in SQL

---
