-- TASK 1
-- TASK 2
CREATE TABLE Customers(
	Cust_ID INT,
	Cust_Name varchar(10))
CREATE TABLE Sales(
	Item_ID INT,
	Item varchar(10))

-- TASK 3
INSERT INTO Customers(Cust_ID,Cust_Name)
VALUES(101,"Ahmed"),
(102,"Kamran"),
(103,"Faizan")

INSERT INTO Sales(Item_ID,Item)
VALUES(102,"Computer"),
(103,"Monitor"),
(104,"Printer"),
(104,"Camera")

-- TASK 4
SELECT *
FROM Customers, Sales;

SELECT Customers.Cust_ID,Customers.Cust_Name, Sales.Item_ID, Sales.Item
FROM Customers
JOIN Sales ON Customers.Cust_ID = Sales.cust_id;

-- TASK 5
SELECT Customers.Cust_ID, Customers.Cust_Name
FROM Customers
INTERSECT
SELECT Sales.Cust_ID, Customers.Cust_Name
FROM Sales
JOIN Customers ON Sales.Cust_ID = Customers.Cust_ID;
