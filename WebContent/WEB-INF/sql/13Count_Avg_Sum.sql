SELECT COUNT(ProductID) FROM Products; -- NULL은 카운트 하지 않음
INSERT INTO Employees (LastName, BirthDate, Photo, Notes)
VALUES ('Son', '1999-01-01', 'pic1', 'soccer');

SELECT COUNT(LastName) FROM Employees;
SELECT COUNT(FirstName) FROM Employees; -- NULL이 있어서 하나 적게 나옴

SELECT DISTINCT LastName FROM Employees;
SELECT COUNT(DISTINCT LastName) FROM Employees; 
SELECT COUNT(DISTINCT LastName) num_of_last_name FROM Employees;

-- avg : 평균, NULL은 무시
SELECT AVG(Price) FROM Products;
SELECT AVG(Price) avg_price FROM Products;

-- sug : 합, NULL은 무시
SELECT SUM(Price) FROM Products;
SELECT SUM(Price) sum_price FROM Products;
SELECT SUM(Price) 가격합계 FROM Products; 