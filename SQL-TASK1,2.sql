CREATE DATABASE Market
---------------------------------------------------------------------------------------------------------------------------------------------------
--Task1--
CREATE TABLE Products
(
Id INT,
[Name] NVARCHAR(20),
Price DECIMAL
)

ALTER TABLE Products
ADD Brand NVARCHAR(20);

 --brand sutununu silmek:
ALTER TABLE Products DROP COLUMN Brand;

INSERT INTO Products (Id,[Name],Price,Brand)
VALUES 
(1,'Milk', 1.80,'Milla'),
(2,'Pasta', 2.80,'Ankara'),
(3,'Salt', 1.10,'Salt1'),
(4,'Sugar', 2.70,'AzerSugar'),
(5,'Lemon', 0.80,'Lankaran'),
(6,'Bread', 1.00,'Bina'),
(7,'Coffee', 0.40,'Nescafe'),
(8,'Yogurt', 2.10,'Milla'),
(9,'Tea', 5.80,'AzerChay'),
(10,'Eggs', 2.20,'TEggs'),
(11,'Butter', 2.30,'ButteR'),
(12,'Apple', 0.80,'Village'),
(13,'Cheese', 1.80,'Chesy'),
(14,'Fish', 1.80,'Balig'),
(15,'Cake', 1.80,'Azza');

UPDATE Products
SET Price = 2.00
WHERE [Name] = 'Milk';

UPDATE Products
SET Brand = 'FreshBina'
WHERE [Name] = 'Bread';

UPDATE Products
SET Price = 12.70
WHERE [Name] = 'Fish';

UPDATE Products
SET Price = 4.57
WHERE [Name] = 'Cheese';

UPDATE Products
SET Price = 24.70
WHERE [Name] = 'Cake';

UPDATE Products
SET Price = 1.45
WHERE [Name] = 'Coffee';

DELETE FROM Products WHERE [Name] = 'Salt';

INSERT INTO Products ([Name], Price, Brand)
VALUES ('Salt', 1.10, 'SaltCo');

SELECT * FROM Products;

--Qiymeti Productlarin price-larinin average-den kicik olan Products datalarinin siyahisini getiren query yazin
SELECT * FROM Products WHERE Price < (SELECT AVG(Price) FROM Products);

--Qiymeti 10-dan yuxari olan Product datalarinin siyahisini getiren query yazin
SELECT * FROM Products WHERE Price > 10;

--Brand uzunlugu 5-den boyuk olan Productlarin siyahisini getiren query.
--Gelen datalarda Mehsulun adi ve Brand adi 1 columnda gorsensin ve Column adi ProductInfo olsun.
SELECT [Name] + ' - ' + Brand AS ProductInfo FROM Products WHERE LEN(Brand) > 5;
--------------------------------------------------------------------------------------------------------------------------------
--Task2--
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