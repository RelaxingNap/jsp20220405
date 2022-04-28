SELECT * FROM Customers ORDER BY ContactName; -- 조회결과 ContactName으로 오름차순 정렬
SELECT * FROM Customers ORDER BY City;

-- ASC : 오름차순(기본)
-- DESC : 내림차순

SELECT * FROM Customers ORDER BY CustomerName ASC; -- 조회결과 ContactName 오름차순 정렬
SELECT * FROM Customers ORDER BY CustomerName DESC; -- 조회결과 ContactName 내림차순 정렬

-- 여려 열 기준으로 정렬
SELECT * FROM Customers ORDER BY Country, City; -- ,로 연결하여 여려열 정렬 가능. 
SELECT * FROM Customers ORDER BY Country ASC, City ASC;
SELECT * FROM Customers ORDER BY Country DESC, City;

-- 연습 1) 직원(Employees)을 생일 내림차순, LastName 오름차순 정렬로 조회
-- 연습 2) 고객이 있는 나라를 오름차순 정렬로 조회(단 한번씩만 결과로 나오도록)
-- 연습 3) 고객이 있는 도시를 오름차순 정렬로 조회(단 한번씩만 결과로 나오도록)
SELECT * FROM Employees ORDER BY BirthDate DESC, LastName;
SELECT DISTINCT Country FROM Customers ORDER BY Country;
SELECT DISTINCT City FROM Customers ORDER BY City; 

-- 컬럼번호로 정렬
SELECT * FROM Customers ORDER BY 5; -- 5번째가 뭔지 모르므로 컬럼명을 나열해줄것
SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country FROM Customers ORDER BY 5;
SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country FROM Customers ORDER BY 3;

