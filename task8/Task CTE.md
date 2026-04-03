# MySQL Assignment - CTE & Recursive CTE

## 1. Simple CTE

```sql
WITH high_commission AS (
    SELECT * FROM AGENT WHERE commission > 5000
)
SELECT * FROM high_commission;
```

---

## 2. Employees Table

```sql
SELECT * FROM employees;
```

---

## 3. Recursive CTE

```sql
WITH RECURSIVE employeechart AS (
    SELECT * FROM employees WHERE manager_id IS NULL
    UNION ALL
    SELECT e.* 
    FROM employees e 
    JOIN employeechart ec 
    ON e.manager_id = ec.id 
)
SELECT * FROM employeechart;
```

---



