USE w3schools;

-- Orders : 주문
-- Customers : 고객
-- 주문한 적 없는 고객 명 조회

SELECT c.CustomerName 
FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL
ORDER BY 1
;

-- 고객별 주문 건수 with 0건도 나와야 함
-- ORDER BY시 SELECT문에 적은 컬럼명을 순서대로 숫자로 적어서 적용 시킬 수 있음
SELECT c.CustomerName, COUNT(o.OrderID) 
FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
ORDER BY 2 DESC , 1
;

               
				
