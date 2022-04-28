-- NULL : 값이 없음

SELECT * FROM Customers WHERE CustomerName = 'son';

-- IFNULL : NULL을 다른 값으로 변경해주는 함수
SELECT CustomerName, IFNULL(ContactName, 'NONAME') FROM Customers WHERE CustomerName = 'son';
SELECT CustomerName, IFNULL(ContactName, 'NONAME') AS ContactName FROM Customers; 

SELECT 1 + 1;
SELECT 1 + NULL;

-- Products2 테이블 만들기
CREATE TABLE Products2(
	P_Id INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(20),
    UnitPrice DEC(4, 2),
    UnitsInStock INT,
    UnitsOnOrder INT
    );

INSERT INTO Products2 (ProductName, UnitPrice, UnitsInStock, UnitsOnOrder)
VALUES ('JarlsBerg', 10.45, 16, 15),
	   ('Mascarpone', 32.56, 23, null),
       ('Gorgonzola', 15.67, 9, 20);

SELECT ProductName, UnitPrice * (UnitsInStock + UnitsOnOrder) FROM Products2;
-- 2번째 row에서 null값이 하나 존재하여 연산결과가 null이 나옴

SELECT ProductName, UnitPrice * (UnitsInStock + ifnull(UnitsOnOrder, 0)) FROM Products2;
-- NULL을 0으로 바꾸어서 해결

-- ifnull, coalesce 차이
-- ifnull : 파라미터수가 2개
-- 첫번째 파라미터가 null이면 2번째 파라미터 값을 리턴
-- 아니면 첫번째 값 리턴
  
-- coalesce : 파라미터수가 1개 이상
-- 여러 파라미터 중 null이 아닌 첫번째 값 리턴

SELECT ifnull(null, '대체값');
SELECT ifnull('널아님', '대체값');
SELECT coalesce('대체값1');
SELECT coalesce('값1', '값2');
SELECT coalesce(null, null, null, null, '값1', '값2');

