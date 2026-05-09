
UPDATE employees
SET salary = salary * 1.10
WHERE department_id = 40;
select* from employees;

DELIMITER //
CREATE PROCEDURE transfer_salary_simple(IN sender_id INT,IN receiver_id INT,IN amount DECIMAL(10,2)
)
BEGIN
    DECLARE sender_salary DECIMAL(10,2);
    START TRANSACTION;
    SELECT salary INTO sender_salary
    FROM employees
    WHERE employee_id = sender_id
    FOR UPDATE;
    IF sender_salary >= amount THEN
        UPDATE employees
        SET salary = salary - amount
        WHERE employee_id = sender_id;
        UPDATE employees
        SET salary = salary + amount
        WHERE employee_id = receiver_id;
        COMMIT;
        SELECT 'Transfer Successful!' AS message;
    ELSE
        ROLLBACK;
        SELECT 'Transfer Failed: Sender does not have enough salary' AS message;
    END IF;
END //
DELIMITER ;
CALL transfer_salary_simple(101, 105, 1000);
SELECT employee_id,salary
FROM employees
WHERE employee_id = 105;


SELECT d.department_id, d.department_name
FROM departments d
WHERE EXISTS (
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.department_id
);


WITH RECURSIVE employee_hierarchy AS (
SELECT  
e.employee_id,
CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
e.manager_id,
0 AS level
FROM employees e
WHERE e.manager_id IS NULL
UNION ALL
SELECT
e.employee_id,
CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
e.manager_id,
eh.level + 1 AS level
FROM employees e
INNER JOIN employee_hierarchy eh
ON e.manager_id = eh.employee_id
)
SELECT *
FROM employee_hierarchy
ORDER BY level, employee_id;