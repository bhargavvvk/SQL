-- Task 6: Date Functions

CREATE TABLE EVENTS (
  event_id INT PRIMARY KEY,
  event_name VARCHAR(20),
  event_date DATE
);

INSERT INTO EVENTS (event_id, event_name, event_date)
VALUES
(1, 'IPL Match', '2026-04-10'),
(2, 'Music Festival', '2026-05-15'),
(3, 'Art Exhibition', '2026-06-01'),
(4, 'Tech Conference', '2026-04-20'),
(5, 'Startup Meetup', '2026-04-05'),
(6, 'Hackathon', '2026-04-02'),
(7, 'Gaming Tournament', '2026-05-01');

SELECT * FROM EVENTS WHERE event_date > '2026-05-01';

SELECT * FROM EVENTS WHERE event_date > CURRENT_DATE();

SELECT * FROM EVENTS WHERE MONTH(event_date) = MONTH(CURRENT_DATE()) + 1;

SELECT * FROM EVENTS WHERE event_date BETWEEN '2026-01-01' AND CURDATE();

SELECT DATEDIFF(event_date, CURDATE()) FROM EVENTS WHERE event_name = 'IPL Match';

SELECT * FROM EVENTS 
WHERE event_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 5 DAY);

SELECT DATE_FORMAT(event_date, '%m-%m-%y') FROM EVENTS;

SELECT DATE_FORMAT(event_date, '%W, %d-%M-%Y') FROM EVENTS;
