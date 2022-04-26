SELECT * FROM Employees;
DELETE FROM Employees; -- 모든 레코드 삭제. 위험하므로 where절 꼭 넣어서 작성

SELECT * FROM Customers;
DELETE FROM Customers WHERE Country = 'Mexico';


DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

DESC Customers;