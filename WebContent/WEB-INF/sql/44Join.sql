USE w3schools;

SELECT * FROM Orders;
-- 1996-07-04에 주문한 고객의 이름
SELECT o.OrderDate, c.CustomerName, o.EmployeeID
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-04에 주문한 고객의 이름과 처리한 직원의 이름
SELECT o.OrderDate, c.CustomerName, concat(e.FirstName, ' ' , e.LastName) EmployeeName
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
			  JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE o.OrderDate = '1996-07-04';              

-- 1996-07-04의 주문을 처리한 직원명과 배송자명 조회
SELECT s.ShipperName, concat(e.FirstName, ' ' , e.LastName) EmployeeName
FROM Orders o JOIN Employees e ON o.EmployeeID = e.EmployeeID
              JOIN Shippers s ON o.ShipperID = s.ShipperID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-08에 주문한 고객과, 처리한 직원, 배송한 배송자명

SELECT o.OrderDate, c.CustomerName, e.LastName, s.ShipperName
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
			  JOIN Employees e ON o.EmployeeID = e.EmployeeID
              JOIN Shippers s ON o.ShipperID = s.ShipperID
WHERE o.OrderDate = '1996-07-08';

-- 1996-07-04에 주문한 상품명(들)
SELECT p.ProductName, od.Quantity, p.Price, (od.Quantity * p.Price) total
FROM OrderDetails od JOIN Products p ON od.ProductID = p.ProductID
					 JOIN Orders o ON od.OrderID = o.OrderID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-08에 각 고객의 주문 총액
SELECT o.OrderDate, c.CustomerName, sum(od.Quantity * p.Price) total
FROM OrderDetails od JOIN Products p ON od.ProductID = p.ProductID
					 JOIN Orders o ON od.OrderID = o.OrderID
                     JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderDate = '1996-07-08'
GROUP BY c.CustomerID;

-- 1996년에 가장 많은 주문을 받은 직원
-- 1996년 직원별 처리 주문 총 금액을 조회(금액이 높은 -> 낮은)
SELECT concat(e.FirstName, ' ' , e.LastName) EmployeeName, sum(od.Quantity * p.Price) '총계'
FROM OrderDetails od JOIN Products p ON od.ProductID = p.ProductID
					 JOIN Orders o ON od.OrderID = o.OrderID
                     JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE o.OrderDate BETWEEN '1996-01-01' AND '1996-12-31'                     
GROUP BY e.EmployeeID                     
ORDER BY 2 DESC
;

SELECT c.CustomerName, p.ProductName, od.Quantity, p.Price
FROM OrderDetails od JOIN Products p ON od.ProductID = p.ProductID
					 JOIN Orders o ON od.OrderID = o.OrderID
                     JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderDate = '1996-07-08'
ORDER BY c.CustomerName;

-- 가장 많은 수량이 팔린 카테고리(내림차순)
SELECT c.CategoryName, sum(od.Quantity) 
FROM OrderDetails od JOIN Products p ON od.ProductID = p.ProductID
					 JOIN Categories c ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryID
ORDER BY 2 DESC
;

-- 특정기간에 팔린 물건 카테고리별로 정리(안팔린 카테고리의 물건은 0으로)
SELECT c.CategoryName, ifnull(sum(od.Quantity),0) 
FROM OrderDetails od JOIN Products p ON od.ProductID = p.ProductID
					 JOIN Orders o ON od.OrderID = o.OrderID
					 RIGHT JOIN Categories c ON c.CategoryID = p.CategoryID
                     AND o.OrderDate BETWEEN '1996-08-01' AND '1996-08-07'
GROUP BY c.CategoryID
ORDER BY 2 DESC
;
