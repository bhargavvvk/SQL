-- Task 7: Window Functions

-- Rank
SELECT agent_name, country, commission,
       RANK() OVER (PARTITION BY country ORDER BY commission DESC) AS salary_rank
FROM AGENT;

-- Dense Rank
SELECT agent_name, country, commission,
       DENSE_RANK() OVER (PARTITION BY country ORDER BY commission DESC) AS salary_rank
FROM AGENT;

-- Row Number
SELECT agent_name, country, commission,
       ROW_NUMBER() OVER (PARTITION BY country ORDER BY commission DESC) AS salary_rank
FROM AGENT;

-- Lag and Lead
SELECT agent_name, country, commission,
       LAG(commission) OVER (PARTITION BY country ORDER BY commission) AS prev_agent_commission,
       LEAD(commission) OVER (PARTITION BY country ORDER BY commission) AS next_agent_commission
FROM AGENT;
