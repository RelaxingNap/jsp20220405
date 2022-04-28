-- = : 같다
SELECT * FROM Customers
WHERE Country = 'Germany';

-- 논리 연산
-- > 크다, < 작다, >= 크거나 같다. <= 작거나 같다
-- <>, != 다르다
SELECT * FROM Customers
WHERE Country <> 'Germany';
SELECT * FROM Customers
WHERE Country != 'Germany';

-- 산술 연산
-- +, -, *, /
SELECT 3 + 5;
SELECT 3 - 5;
SELECT 3 * 5;
SELECT 3 / 5;

SELECT * FROM Products ORDER BY Price;

-- 가장 높은 가격과 가장 낮은 가격 차이
SELECT MAX(Price) - MIN(Price) 가격차
FROM Products;

-- 문자열 연결 연산
-- CONCAT 함수 사용
SELECT CustomerName, CONCAT(Country ,' ' ,City ,' ', Address) Address FROM Customers;

-- leetcode 1741번 문제
select event_day day, emp_id, Sum(out_time - in_time) total_time
from employees
group by emp_id, day