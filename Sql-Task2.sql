CREATE DATABASE Employee

CREATE TABLE Employee(
Id INT IDENTITY(1,1) PRIMARY KEY,
Fullname NVARCHAR(255) NOT NULL,
Age INT NOT NULL CHECK(Age>0),
Email NVARCHAR(255) NOT NULL UNIQUE,
Salary DECIMAL(10,2) NOT NULL CHECK(Salary BETWEEN 300 AND 2000)
);

DROP TABLE Employee;

INSERT INTO Employee(Fullname, Age, Email,Salary)
VALUES 
('Fatima Malikova',18,'fmelikova49@mail.com',1200.0),
('Nigar Ferhadzade',19,'fnigar@mail.com',1100.50),
('Fatima Mecidli',18,'fmecidli@mail.com',1000.0),
('Sima Ceferova',20,'csima2@mail.com',1340.0),
('Aysun Suleymanova',21,'asuleymanova@mail.com',1577.20);

UPDATE Employee SET Age = 18 WHERE Fullname = 'Nigar Ferhadzade'
UPDATE Employee SET Age = 19 WHERE Fullname = 'Fatima Mecidli'
UPDATE Employee SET Salary = 1750.45 WHERE Fullname = 'Fatima Malikova'
UPDATE Employee SET Email = 'simaCeferova07' WHERE Salary = 1340.0

ALTER TABLE Employee ADD [Hours] INT;

ALTER TABLE Employee DROP COLUMN [Hours];

SELECT * FROM Employee WHERE Salary < (SELECT AVG(Salary) FROM Employee);


--show all
SELECT * FROM Employee
