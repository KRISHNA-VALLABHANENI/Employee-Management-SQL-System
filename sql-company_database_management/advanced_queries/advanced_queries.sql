USE COMPANY_DB;
CREATE TABLE managers AS
SELECT 
    e.employee_id AS manager_id,
    CONCAT(e.first_name, ' ', e.last_name) AS manager_name,
    d.department_name,
    e.job_title,
    e.salary,
    e.hire_date
FROM employees e
LEFT JOIN departments d 
       ON e.department_id = d.department_id
WHERE e.employee_id IN (
      SELECT DISTINCT manager_id
      FROM employees
      WHERE manager_id IS NOT NULL
);


SELECT CONCAT(e.first_name, ' ', e.last_name) as Employees,m.manager_id
FROM employees e
LEFT JOIN managers m
ON e.manager_id = m.manager_id;

SELECT CONCAT(first_name,' ', last_name) AS Employees, SALARY
FROM EMPLOYEES
WHERE SALARY > (
SELECT AVG(salary) 
FROM employees ) ;


SELECT c.company_name AS Company,
d.department_name AS Department,
CONCAT(e.first_name, ' ', e.last_name) AS Employees
FROM companies c
LEFT JOIN departments d
ON c.company_id = d.company_id
LEFT JOIN employees e
on e.department_id = d.department_id;


WITH SECOND_HIGHEST AS 
(
    SELECT CONCAT(first_name, ' ', last_name) AS Employee, salary
    FROM employees
)
SELECT *
FROM SECOND_HIGHEST
ORDER BY salary DESC
LIMIT 1 OFFSET 1;


SELECT CONCAT(e.first_name, ' ', last_name) AS Employees, d.department_name, e.salary,
DENSE_RANK() OVER(ORDER BY e.salary DESC) AS Salary_Rank
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;


SELECT CONCAT(first_name, ' ', last_name) AS Employees, salary,
CASE 
	WHEN SALARY <= 30000 THEN 'LOW SALARY'
    WHEN SALARY <=80000 THEN 'MEDIUM SALARY'
    ELSE 'HIGH SALARY'
END AS Salary_category
FROM employees
ORDER BY Employees;


