SELECT * FROM Employees;

-- LIKE : 유사한, ~~같은
-- '_' : 하나의 문자

SELECT * FROM Employees WHERE Photo LIKE 'EMPID_.pic';

-- '%' : 0개 이상의 문자
SELECT * FROM Employees WHERE LastName LIKE 'D%';
SELECT * FROM Employees WHERE LastName LIKE '%N';

SELECT * FROM Employees WHERE LastName LIKE '%N%';
-- 글자 검색, 조회할때 주로 사용

SELECT * FROM Customers WHERE CustomerName NOT LIKE 'a%' ORDER BY CustomerName;
DESC Employees;