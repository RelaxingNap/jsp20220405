-- Transaction
-- 하나의 업무

USE mydb1;

-- 은행의 송금
-- 1. A고객의 계좌의 출금
-- 2. B고객의 계좌의 입금
-- 이 2개의 세세한 업무를 묶은 은행의 송금을 트랜잭션이라 함.

-- COMMIT : DB에 반영
-- ROLLBACK : 이전으로 되돌림
-- AUTOCOMMIT은 웬만하면 사용하지 않음

SELECT * FROM Customers WHERE CustomerID = 1;
ALTER TABLE Customers MODIFY CustomerID INT PRIMARY KEY AUTO_INCREMENT;
UPDATE Customers
SET CustomerName = 'SON'
WHERE CustomerID = 1;

DESC Customers;
ROLLBACK;

-- disable autocommit
SET autocommit = 0;

UPDATE Customers
SET CustomerName = 'CHA'
WHERE CustomerID = 1;

SELECT * FROM Customers WHERE CustomerID = 1;

ROLLBACK;

--
UPDATE Customers
SET CustomerName = 'PARK'
WHERE CustomerID = 1;

SELECT * FROM Customers WHERE CustomerID = 1;

COMMIT;
ROLLBACK;

