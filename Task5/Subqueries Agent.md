# MySQL Assignment - Subqueries

## 1. Agents Above Overall Average

```sql
SELECT agent_code, agent_name 
FROM AGENT 
WHERE commission >= (SELECT AVG(commission) FROM AGENT);
```

---

## 2. Agents Above Country Average

```sql
SELECT a1.agent_code, a1.agent_name, a1.country, a1.commission, a2.avg_comm  
FROM AGENT a1 
JOIN (SELECT country, AVG(commission) AS avg_comm FROM AGENT GROUP BY country) AS a2 
ON a1.country = a2.country 
WHERE a1.commission > a2.avg_comm;
```

---

## 3. Display Agents with Average Commission

```sql
SELECT agent_code, agent_name, commission,
       (SELECT AVG(commission) FROM AGENT) AS avg_comm  
FROM AGENT;
```

---

## 4. Output



### Query 1 Output


### Query 2 Output


### Query 3 Output

