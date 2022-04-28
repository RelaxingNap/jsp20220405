SELECT * FROM Products;
SELECT * FROM Products ORDER BY Price;

SELECT MIN(Price) FROM Products; 
SELECT MAX(Price) FROM Products;

SELECT MIN(LastName) FROM Employees;
SELECT MAX(LastName) FROM Employees;
-- 문자형식도 알파벳 순으로 min(), max()도 사용 가능

SELECT MIN(BirthDate) FROM Employees;
SELECT MAX(BirthDate) FROM Employees;
-- 날짜 형식도 사용 가능

SELECT * FROM Employees
WHERE BirthDate = (SELECT MIN(BirthDate) FROM Employees);

SELECT * FROM Employees ORDER BY BirthDate LIMIT 1;
-- 문제) 가장 가격이 비싼 상품의 이름을 조회

DESC Products;
SELECT ProductName FROM Products WHERE Price = (SELECT MAX(Price) FROM Products);
SELECT ProductName FROM Products ORDER BY Price DESC LIMIT 1;



