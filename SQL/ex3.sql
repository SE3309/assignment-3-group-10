--INSERT command

INSERT INTO User (username, email, password, joinDate, watchlistUpdateDate)
VALUES ('jdoe', 'jdoe@example.com', 'password', '2024-01-01', '2024-01-05');

SELECT * FROM User;


--INSERT multiple values

INSERT INTO User (username, email, password, joinDate, watchlistUpdateDate)
VALUES 
('asmith', 'asmith@example.com', 'mypassword123', '2024-02-15', '2024-02-20'),
('bwright', 'bwright@example.com', 'password789', '2024-03-10', '2024-03-15');

SELECT * FROM User;

--INSERT ..ON DUPLICATE KEY

INSERT INTO User (username, email, password, joinDate, watchlistUpdateDate)
VALUES ('jdoe', 'jdoe@example.com', 'updatedpassword', '2024-01-01', '2024-01-06')
ON DUPLICATE KEY UPDATE userwatchlist
email = VALUES(email), userwatchlist
password = VALUES(password), 
watchlistUpdateDate = VALUES(watchlistUpdateDate);

SELECT * FROM User;