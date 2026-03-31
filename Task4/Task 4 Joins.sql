-- Task 4: Customer Table and Joins

CREATE TABLE CUSTOMER (
  cust_id INT PRIMARY KEY,
  cust_name VARCHAR(50),
  city VARCHAR(50),
  agent_code VARCHAR(10),

  CONSTRAINT fk_agent
  FOREIGN KEY (agent_code)
  REFERENCES AGENT(agent_code)
);

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

SELECT * FROM CUSTOMER;

-- Inner Join
SELECT c.cust_name, a.agent_name, a.phone_no, c.city
FROM CUSTOMER c
INNER JOIN AGENT a
ON c.agent_code = a.agent_code;

-- Left Join
SELECT a.agent_code, a.agent_name, c.cust_id
FROM AGENT a
LEFT JOIN CUSTOMER c
ON a.agent_code = c.agent_code;
