# MySQL Assignment - Task 7 (Window Functions)

## 1. RANK()

```sql
SELECT agent_name, country, commission,
       RANK() OVER (PARTITION BY country ORDER BY commission DESC) AS salary_rank
FROM AGENT;
```
<img width="530" height="436" alt="image" src="https://github.com/user-attachments/assets/bfbe9170-0bc6-4fe2-966e-db3053e9dc1b" />

---

## 2. DENSE_RANK()

```sql
SELECT agent_name, country, commission,
       DENSE_RANK() OVER (PARTITION BY country ORDER BY commission DESC) AS salary_rank
FROM AGENT;
```
<img width="547" height="320" alt="image" src="https://github.com/user-attachments/assets/d6b4d929-a74b-4708-b0ff-af815fbcfdee" />

---

## 3. ROW_NUMBER()

```sql
SELECT agent_name, country, commission,
       ROW_NUMBER() OVER (PARTITION BY country ORDER BY commission DESC) AS salary_rank
FROM AGENT;
```
<img width="535" height="311" alt="image" src="https://github.com/user-attachments/assets/22f387f9-3e25-468e-a086-24db5f507340" />

---

## 4. LAG and LEAD

```sql
SELECT agent_name, country, commission,
       LAG(commission) OVER (PARTITION BY country ORDER BY commission) AS prev_agent_commission,
       LEAD(commission) OVER (PARTITION BY country ORDER BY commission) AS next_agent_commission
FROM AGENT;
```

<img width="743" height="315" alt="image" src="https://github.com/user-attachments/assets/d84831a2-8fe3-47cb-9283-94c61c20f4a5" />


---

