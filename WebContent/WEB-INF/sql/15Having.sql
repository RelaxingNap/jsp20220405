SELECT Country, COUNT(CustomerID) count
FROM Customers
WHERE count = 6 -- WHERE FROM절의 테이블을 각 ROW마다 연산. 하나의 레코드만으로는 판단불가
				-- Group연산의 결과를 필요로 할때 Having절 사용
GROUP BY Country;
-- 문법 오류

SELECT Country, COUNT(CustomerID)
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 3; -- Having aggregate function결과를 조건으로 줄 수 있음

SELECT Country, COUNT(CustomerID) count
FROM Customers
GROUP BY Country
HAVING count > 3;
-- group함수의 조건은 having절에서 처리

-- 가장 적은 고객이 있는 나라들 조회
SELECT Country   
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) = 
(SELECT COUNT(CustomerID) count 
FROM Customers 
GROUP BY Country 
ORDER BY count LIMIT 1);