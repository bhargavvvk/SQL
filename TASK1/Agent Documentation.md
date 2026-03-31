# MySQL Assignment

## 1. Create Database

```sql
CREATE DATABASE MODULE;
USE MODULE;
```

---

## 2. Create Table

```sql
CREATE TABLE AGENT (
    agent_code CHAR(4) NOT NULL PRIMARY KEY,
    agent_name VARCHAR(20),
    working_area VARCHAR(20),
    commission DECIMAL(6,2),
    phone_no VARCHAR(10),
    country VARCHAR(20)
);
```

---

## 3. Insert Data

```sql
INSERT INTO AGENT (agent_code, agent_name, working_area, commission, phone_no, country)
VALUES 
('AX01','Jack','Pentagon',6750.34,'9767989898','USA'), 
('AX04','Ani','Thaad',4563.00,'9767989898','India'),
('CD4J','Sam','Dome',3464.00,'9767989898','UK'),
('23RF','John','Arena',5000.00,'9876543210','Canada'),
('W9IO','Mike','Tower',NULL,'9123456789','Australia');
```

---

## 4. Retrieve Data

```sql
SELECT * FROM AGENT;
```

---

## 5. Output



