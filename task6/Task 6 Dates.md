# MySQL Assignment - Task 6 (Date Functions)

## 1. Create Table

```sql
CREATE TABLE EVENTS (
  event_id INT PRIMARY KEY,
  event_name VARCHAR(20),
  event_date DATE
);
```

---

## 2. Insert Data

```sql
INSERT INTO EVENTS (event_id, event_name, event_date)
VALUES
(1, 'IPL Match', '2026-04-10'),
(2, 'Music Festival', '2026-05-15'),
(3, 'Art Exhibition', '2026-06-01'),
(4, 'Tech Conference', '2026-04-20'),
(5, 'Startup Meetup', '2026-04-05'),
(6, 'Hackathon', '2026-04-02'),
(7, 'Gaming Tournament', '2026-05-01');
```

---

## 3. Date Queries

```sql
SELECT * FROM EVENTS WHERE event_date > '2026-05-01';

SELECT * FROM EVENTS WHERE event_date > CURRENT_DATE();

SELECT * FROM EVENTS WHERE MONTH(event_date) = MONTH(CURRENT_DATE()) + 1;

SELECT * FROM EVENTS WHERE event_date BETWEEN '2026-01-01' AND CURDATE();

SELECT DATEDIFF(event_date, CURDATE()) FROM EVENTS WHERE event_name = 'IPL Match';

SELECT * FROM EVENTS 
WHERE event_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 5 DAY);

SELECT DATE_FORMAT(event_date, '%m-%m-%y') FROM EVENTS;

SELECT DATE_FORMAT(event_date, '%W, %d-%M-%Y') FROM EVENTS;
```

---

<img width="618" height="140" alt="image" src="https://github.com/user-attachments/assets/2291a749-e0ce-4332-aa73-989ffbde79f3" />


<img width="548" height="246" alt="image" src="https://github.com/user-attachments/assets/261e05f1-f42c-4c31-afac-caf0020f6044" />


<img width="575" height="177" alt="image" src="https://github.com/user-attachments/assets/4d3c1b5c-6ee0-46c5-a11d-17ad32bf1fb4" />


<img width="640" height="95" alt="image" src="https://github.com/user-attachments/assets/b4cea031-1fc5-4054-9a19-d7a7bd54e23a" />


<img width="470" height="107" alt="image" src="https://github.com/user-attachments/assets/7142d06c-31ad-4866-a098-7e3f425c1d7d" />


<img width="527" height="169" alt="image" src="https://github.com/user-attachments/assets/e2a3afa4-a8c8-4c67-81fc-3a5e5a9b129f" />


<img width="476" height="250" alt="image" src="https://github.com/user-attachments/assets/e2570ac8-4eab-4e96-8a5c-ec61e5896fdc" />


<img width="436" height="251" alt="image" src="https://github.com/user-attachments/assets/5731ce0f-cfac-436e-ba05-cbc080bab0d6" />









