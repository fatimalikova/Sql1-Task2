CREATE DATABASE Market

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
