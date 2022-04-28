SELECT * FROM Employees;
SELECT FirstName FROM Employees;
SELECT CustomerName FROM Customers;
SELECT Address, CustomerName FROM Customers;

-- WHERE : 어떤 Row(record)를 선택할 지 결정하는 키워드

-- 예제1) 나라가 멕시코인 고객들 조회

SELECT * FROM Customers 
WHERE Country = 'Mexico';

-- 예제2 나라가 독일인 고객들 조회

SELECT * FROM Customers
WHERE Country = 'germany';

-- 작은 따옴표 : 문자열 값

-- 예제 3) 고객ID가 1번인 고객조회
SELECT * FROM Customers 
WHERE CustomerID = 1; -- 숫자 형식은 작은 따옴표 안씀, 근데 써도 됨.

SELECT * FROM Customers
WHERE CustomerID = 90;

SELECT * FROM Customers
WHERE CustomerID = '1';

SELECT * FROM Customers
WHERE Country = germany; -- 문자 형식은 작은 따옴표 꼭 써야함

SELECT CustomerName, Country, City, PostalCode 
FROM Customers
WHERE CustomerID = 2;

SELECT * FROM Employees;
SELECT FirstName, LastName, BirthDate 
FROM Employees;

SELECT CustomerName, City, Country, PostalCode FROM Customers
WHERE City = '' OR '1'='1';
-- sql 주입공격을 받을 수 있으니 주의할것
