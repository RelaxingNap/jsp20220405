USE w3schools;

DESC Products;
SELECT * FROM Products;
DESC Categories;
SELECT * FROM Categories;

SELECT * FROM Products JOIN Categories; -- Cartesian Product
SELECT * FROM Products JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- Products 테이블과 Suppliers 테이블에서 SupplierID 컬럼이 같은 것 끼리 INNER JOIN한 결과 조회
SELECT * FROM Products JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID;

-- 별칭과 같이 사용
SELECT * FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID;

-- 필요한 컬럼만 나열
SELECT ProductName, Unit, Price, SupplierName
FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID;

-- 중복컬럼명 사용시 테이블명 작성해야함
SELECT ProductName, Unit, Price, s.SupplierID, SupplierName 
FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID;

SELECT p.ProductName, p.Unit, p.Price, s.SupplierID, s.SupplierName 
FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID;

-- 고객과, 공급자가 모두있는 나라를 조회
SELECT DISTINCT Country FROM Customers; -- 고객이 있는 나라
SELECT DISTINCT Country FROM Suppliers; -- 공급자가 있는 나라

SELECT DISTINCT * FROM Customers c JOIN Suppliers s ON c.Country = s.Country ORDER BY c.Country; -- 굳이 ID가 아니어도 같은 내용의 컬럼만 있으면 Join이 가능함.
SELECT DISTINCT c.Country FROM Customers c JOIN Suppliers s ON c.Country = s.Country ORDER BY c.Country;
SELECT DISTINCT s.Country FROM Customers c JOIN Suppliers s ON c.Country = s.Country ORDER BY 1;


