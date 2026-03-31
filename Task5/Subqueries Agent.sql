-- Subqueries

-- Find agents whose commission is above average
SELECT agent_code, agent_name 
FROM AGENT 
WHERE commission >= (SELECT AVG(commission) FROM AGENT);

-- Compare with country-wise average
SELECT a1.agent_code, a1.agent_name, a1.country, a1.commission, a2.avg_comm  
FROM AGENT a1 
JOIN (SELECT country, AVG(commission) AS avg_comm FROM AGENT GROUP BY country) AS a2 
ON a1.country = a2.country 
WHERE a1.commission > a2.avg_comm;

-- Show each agent with overall average
SELECT agent_code, agent_name, commission,
       (SELECT AVG(commission) FROM AGENT) AS avg_comm  
FROM AGENT;
