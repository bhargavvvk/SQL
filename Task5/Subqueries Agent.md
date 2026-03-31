# MySQL Assignment - Subqueries

## 1. Agents Above Overall Average

```sql
SELECT agent_code, agent_name 
FROM AGENT 
WHERE commission >= (SELECT AVG(commission) FROM AGENT);
```

<img width="703" height="411" alt="image" src="https://github.com/user-attachments/assets/a9bbe47b-97bc-4f7d-9b02-235600fc5a74" />


---

## 2. Agents Above Country Average

```sql
SELECT a1.agent_code, a1.agent_name, a1.country, a1.commission, a2.avg_comm  
FROM AGENT a1 
JOIN (SELECT country, AVG(commission) AS avg_comm FROM AGENT GROUP BY country) AS a2 
ON a1.country = a2.country 
WHERE a1.commission > a2.avg_comm;
```
<img width="724" height="402" alt="image" src="https://github.com/user-attachments/assets/457aa68d-d12b-4852-b799-49254fd219f2" />

---

## 3. Display Agents with Average Commission

```sql
SELECT agent_code, agent_name, commission,
       (SELECT AVG(commission) FROM AGENT) AS avg_comm  
FROM AGENT;
```
<img width="598" height="375" alt="image" src="https://github.com/user-attachments/assets/a3fdcee2-757d-40df-aaee-83681ddbc43e" />

---

