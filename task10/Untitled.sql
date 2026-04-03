CREATE DATABASE event_system;
USE event_system;

#creation of tables

CREATE TABLE Users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  email VARCHAR(100) UNIQUE
);

CREATE TABLE Events (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(100),
  event_date DATE,
  available_seats INT
);

CREATE TABLE Bookings (
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  event_id INT,
  booking_date DATE,
  FOREIGN KEY (user_id) REFERENCES Users(id),
  FOREIGN KEY (event_id) REFERENCES Events(id)
);

#inserting data

INSERT INTO Users (name, email) VALUES
('Ram', 'ram@gmail.com'),
('Sam', 'sam@gmail.com'),
('John', 'john@gmail.com');


INSERT INTO Events (title, event_date, available_seats) VALUES
('IPL Match', '2026-04-10', 5),
('Music Fest', '2026-05-01', 3),
('Tech Talk', '2026-06-15', 4);

INSERT INTO Bookings (user_id, event_id, booking_date) VALUES
(1, 1, '2026-04-01'),
(2, 1, '2026-04-02'),
(3, 2, '2026-04-03');

SELECT * FROM Bookings;

#testing join

SELECT Users.name, Events.title,Bookings.booking_date FROM Bookings
 JOIN Users ON Bookings.user_id = Users.id
JOIN Events ON Bookings.event_id = Events.id;

#indexing

CREATE INDEX idx_user ON Bookings(user_id);
CREATE INDEX idx_event ON Bookings(event_id);

DELIMITER //

CREATE TRIGGER reduce_seats
AFTER INSERT ON Bookings
FOR EACH ROW
BEGIN
  UPDATE Events
  SET available_seats = available_seats - 1
  WHERE id = NEW.event_id;
END //

DELIMITER ;

INSERT INTO Bookings (user_id, event_id, booking_date)
VALUES (1, 1, '2026-04-05');

select * from Events;


START TRANSACTION;

INSERT INTO Bookings (user_id, event_id, booking_date)
VALUES (2, 2, '2026-04-06');

UPDATE Events
SET available_seats = available_seats - 1
WHERE id = 2;

COMMIT;

#view

CREATE VIEW UserBookingsView AS
SELECT Users.name, Events.title, Bookings.booking_date FROM Bookings
JOIN Users ON Bookings.user_id = Users.id
JOIN Events ON Bookings.event_id = Events.id;

SELECT * FROM UserBookingsView;
