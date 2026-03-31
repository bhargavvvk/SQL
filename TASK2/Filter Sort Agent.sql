-- Filtering the data using WHERE condition
SELECT * FROM AGENT WHERE commission IS NOT NULL;
SELECT * FROM AGENT WHERE commission IS NOT NULL AND commission > 5000;

-- Sorting
SELECT * FROM AGENT ORDER BY commission;
SELECT * FROM AGENT ORDER BY commission DESC;
SELECT * FROM AGENT WHERE commission IS NOT NULL ORDER BY commission;
