-- Task: CTE and Recursive CTE

-- Simple CTE
WITH high_commission AS (
    SELECT * FROM AGENT WHERE commission > 5000
)
SELECT * FROM high_commission;

-- View employees table
SELECT * FROM employees;

-- Recursive CTE
WITH RECURSIVE employeechart AS (
    SELECT * FROM employees WHERE manager_id IS NULL
    UNION ALL
    SELECT e.* 
    FROM employees e 
    JOIN employeechart ec 
    ON e.manager_id = ec.id 
)
SELECT * FROM employeechart;
