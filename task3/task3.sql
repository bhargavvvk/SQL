-- Aggregate Functions

-- Number of agents from India
SELECT country, COUNT(*) AS Num_Ind_agents 
FROM AGENT 
WHERE country = 'India';

-- Average commission of USA agents
SELECT country, AVG(commission) AS avg_commission 
FROM AGENT 
WHERE country = 'USA';

-- Group By

-- Number of agents per country
SELECT country, COUNT(*) AS Num_agents 
FROM AGENT 
GROUP BY country 
ORDER BY Num_agents;

-- Average commission of agents per country
SELECT country, AVG(commission) AS avg_commission 
FROM AGENT 
GROUP BY country;

-- Having

SELECT country, COUNT(*) AS Num_agents 
FROM AGENT 
GROUP BY country 
HAVING Num_agents > 3;

SELECT country, COUNT(*) AS Num_agents 
FROM AGENT 
GROUP BY country 
HAVING Num_agents > 3 
ORDER BY Num_agents;
