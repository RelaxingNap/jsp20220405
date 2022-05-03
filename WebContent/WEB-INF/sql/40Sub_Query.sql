USE w3schools;

-- 주문한 적 없는 고객명 조회(JOIN, Sub Query)
-- Orders, Customers
SELECT c.CustomerName
FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

SELECT CustomerName
FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);

-- 고객별 주문 수 (Join, Sub Query)
SELECT c.CustomerName, COUNT(o.OrderID)
FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
ORDER BY c.CustomerName;

SELECT CustomerName, (SELECT COUNT(OrderID) FROM Orders WHERE CustomerID = Customers.CustomerID)
FROM Customers
GROUP BY CustomerID;

-- 상품명과 카테고리명 조회
-- JOIN
SELECT p.ProductName, c.CategoryName
FROM Products p JOIN Categories c ON p.CategoryID = c.CategoryID
ORDER BY 1;

SELECT p.ProductName, (SELECT c.CategoryName FROM Categories c WHERE p.CategoryID = c.CategoryID)
FROM Products p
ORDER BY 1;

-- Suppliers, Customers
-- 고객과 공급자가 모두 있는 나라 조회(JOIN, SubQuery)
SELECT DISTINCT c.Country
FROM Customers c JOIN Suppliers s ON c.Country = s.Country;

SELECT DISTINCT Country
FROM Customers
WHERE Country IN (SELECT Country FROM Suppliers);

-- leetcode 1587번 문제
# Select u.name, SUM(t.amount) balance
# from Users u JOIN Transactions t ON u.account = t.account
# Group by u.account
# having SUM(t.amount) > 10000;

# SELECT (SELECT name FROM Users u WHERE t.account = u.account) name,
#        SUM(t.amount) balance
# FROM Transactions t -- sub query로 query로 짤 시 기준이 되는 table을 잘 지정할 것 
# GROUP BY t.account
# HAVING balance > 10000;

-- leet code 1407번 문제

# select u.name, ifnull(sum(r.distance),0) travelled_distance
# from Users u Left Join Rides r on u.id = r.user_id
# group by u.id
# order by 2 DESC, 1;

# select u.name, ifnull((select SUM(r.distance) 
#                       from Rides r 
#                       where r.user_id = u.id
#                       group by r.user_id),0) travelled_distance 
# from Users u
# order by 2 desc, 1;

-- leet code 1965번 문제
-- SELECT e.employee_id
-- FROM Employees e LEFT JOIN Salaries s
--   ON e.employee_id = s.employee_id
-- WHERE s.employee_id IS NULL

-- UNION

-- SELECT s.employee_id
-- FROM Employees e RIGHT JOIN Salaries s
--   ON e.employee_id = s.employee_id
-- WHERE e.employee_id IS NULL

-- ORDER BY 1;
 


