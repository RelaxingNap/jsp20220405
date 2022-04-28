SELECT COUNT(CustomerID) FROM Customers;
SELECT COUNT(CustomerID) FROM Customers GROUP BY Country;
SELECT Country, COUNT(CustomerID) FROM Customers GROUP BY Country;
SELECT Country, COUNT(CustomerID) FROM Customers GROUP BY Country ORDER BY Country;
SELECT Country, COUNT(CustomerID) count 
FROM Customers 
GROUP BY Country
ORDER BY count, Country;
-- 각 그룹(부분)별로 쿼리를 실행

INSERT INTO Customers (CustomerName, City)
VALUES('SON', 'Seoul');

SELECT City, COUNT(CustomerID) count FROM Customers
GROUP BY City
HAVING count = 
(
SELECT COUNT(CustomerID) count 
FROM Customers 
GROUP BY City
ORDER BY count DESC
LIMIT 1
); 

-- GROUP BY : 2개 이상의 컬럼 사용 가능

SELECT * FROM Orders ORDER BY OrderDate;

-- 날짜별 몇개의 주문이 있는지?
SELECT OrderDate, COUNT(OrderID)
FROM Orders
GROUP BY OrderDate
ORDER BY OrderDate;

-- 날짜별, 직원별로 몇개의 주문이 있는지?
SELECT OrderDate, EmployeeID, COUNT(OrderID)
FROM Orders
GROUP BY OrderDate, EmployeeID
ORDER BY OrderDate, EmployeeID;

-- leetcode 1693번 문제
select date_id,
       make_name, 
       COUNT(DISTINCT lead_id) unique_leads, 
       COUNT(DISTINCT partner_id) unique_partners
from DailySales
group by date_id, make_name;