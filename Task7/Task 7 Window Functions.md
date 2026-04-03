# MySQL Assignment - Task 7 (Window Functions)

## 1. RANK()

```sql
SELECT agent_name, country, commission,
       RANK() OVER (PARTITION BY country ORDER BY commission DESC) AS salary_rank
FROM AGENT;
```

---

## 2. DENSE_RANK()

```sql
SELECT agent_name, country, commission,
       DENSE_RANK() OVER (PARTITION BY country ORDER BY commission DESC) AS salary_rank
FROM AGENT;
```

---

## 3. ROW_NUMBER()

```sql
SELECT agent_name, country, commission,
       ROW_NUMBER() OVER (PARTITION BY country ORDER BY commission DESC) AS salary_rank
FROM AGENT;
```

---

## 4. LAG and LEAD

```sql
SELECT agent_name, country, commission,
       LAG(commission) OVER (PARTITION BY country ORDER BY commission) AS prev_agent_commission,
       LEAD(commission) OVER (PARTITION BY country ORDER BY commission) AS next_agent_commission
FROM AGENT;
```

---

