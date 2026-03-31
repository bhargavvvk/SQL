# MySQL Assignment - Aggregate Functions

## 1. Aggregate Queries

```sql
-- Number of agents from India
SELECT country, COUNT(*) AS Num_Ind_agents 
FROM AGENT 
WHERE country = 'India';

<img width="635" height="171" alt="image" src="https://github.com/user-attachments/assets/a1332d39-fc4b-4156-8c54-63268a32ad6b" />

-- Average commission of USA agents
SELECT country, AVG(commission) AS avg_commission 
FROM AGENT 
WHERE country = 'USA';

<img width="684" height="141" alt="image" src="https://github.com/user-attachments/assets/29f7dd9b-f001-481a-bb84-49b05a367ad6" />

```


---

## 2. Group By

```sql
-- Number of agents per country
SELECT country, COUNT(*) AS Num_agents 
FROM AGENT 
GROUP BY country 
ORDER BY Num_agents;

<img width="822" height="258" alt="image" src="https://github.com/user-attachments/assets/1c2c1f5b-4a32-4a96-9c7d-a7139d669eb9" />

-- Average commission of agents per country
SELECT country, AVG(commission) AS avg_commission 
FROM AGENT 
GROUP BY country;

<img width="710" height="186" alt="image" src="https://github.com/user-attachments/assets/aedfc2cf-ebb1-4d63-9fcd-73f3b6117d7f" />

```

---

## 3. Having Clause

```sql
SELECT country, COUNT(*) AS Num_agents 
FROM AGENT 
GROUP BY country 
HAVING Num_agents > 3;

<img width="795" height="194" alt="image" src="https://github.com/user-attachments/assets/0628a54e-88bc-4d35-8d44-81b2a72b301e" />

SELECT country, COUNT(*) AS Num_agents 
FROM AGENT 
GROUP BY country 
HAVING Num_agents > 3 
ORDER BY Num_agents;

<img width="920" height="193" alt="image" src="https://github.com/user-attachments/assets/ead69425-d52d-4bc5-98db-f9f77c4f4172" />

```

---

