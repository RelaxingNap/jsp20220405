SELECT * FROM Customers
WHERE City = 'Berlin' OR City = 'London';

SELECT * FROM Customers
WHERE City IN ('Berlin', 'London');

SELECT * FROM Customers
WHERE City IN (SELECT City FROM Suppliers);
-- 쿼리문도 사용 가능

SELECT * FROM Customers
WHERE City NOT IN ('Berlin', 'London');

SELECT * FROM Customers
WHERE City NOT IN (SELECT City FROM Suppliers);