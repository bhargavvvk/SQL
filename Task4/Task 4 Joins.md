# MySQL Assignment - Task 4 (Joins)

## 1. Create Customer Table

```sql
CREATE TABLE CUSTOMER (
  cust_id INT PRIMARY KEY,
  cust_name VARCHAR(50),
  city VARCHAR(50),
  agent_code VARCHAR(10),

  CONSTRAINT fk_agent
  FOREIGN KEY (agent_code)
  REFERENCES AGENT(agent_code)
);
```

---

## 2. Insert Data

```sql
INSERT INTO CUSTOMER (cust_id, cust_name, city, agent_code)
VALUES
(6,'Amit','Mumbai','IN01'),
(7,'Pooja','Delhi','IN02'),
(8,'Rohit','Bangalore','IN03'),
(9,'Meera','Mumbai','IN04'),
(10,'James','New York','US01'),
(11,'Sophia','Los Angeles','US02'),
(12,'Daniel','New York','US03'),
(13,'Oliver','London','UK01'),
(14,'Harry','Manchester','UK02'),
(15,'Isla','London','UK03'),
(16,'Noah','Toronto','CA01'),
(17,'Emma','Vancouver','CA02'),
(18,'Lucas','Sydney','AU01'),
(19,'Mia','Melbourne','AU02');
```

---

## 3. Retrieve Data

```sql
SELECT * FROM CUSTOMER;
```
<img width="618" height="361" alt="image" src="https://github.com/user-attachments/assets/1e1b819e-f67a-4bd1-be5c-8284a3a63505" />


---

## 4. INNER JOIN

```sql
SELECT c.cust_name, a.agent_name, a.phone_no, c.city
FROM CUSTOMER c
INNER JOIN AGENT a
ON c.agent_code = a.agent_code;
```
<img width="745" height="398" alt="image" src="https://github.com/user-attachments/assets/cf12167a-d1ef-4501-81ba-6fdb44840fd3" />

---

## 5. LEFT JOIN

```sql
SELECT a.agent_code, a.agent_name, c.cust_id
FROM AGENT a
LEFT JOIN CUSTOMER c
ON a.agent_code = c.agent_code;
```

<img width="866" height="396" alt="image" src="https://github.com/user-attachments/assets/00ecab4d-27d6-4a0c-ab66-a17ea932cc07" />

---




### INNER JOIN Output


### LEFT JOIN Output

