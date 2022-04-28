SELECT * FROM Customers;
SELECT * FROM Customers WHERE Country = 'Brazil';
SELECT * FROM Customers WHERE Country = 'Brazil' AND City = 'Rio de janeiro';
-- 91개의 data를 모두 체크해서 조건에 모두 맞는 결과만 table에서 조회함

SELECT * FROM Customers WHERE Country = 'Germany' OR City = 'London';
-- 91개의 data를 모두 체크해서 조건이 하나라도 맞는 경우의 결과만 table에서 조회함

SELECT * FROM Customers WHERE NOT Country = 'Germany';
-- 우선순위는 not, and, or 순임
-- ()로 우선순위 설정 가능함
SELECT * FROM Customers WHERE 1 = 1;
SELECT * FROM Customers WHERE Country = 'Germany' OR 1 = 1;

-- 나라명 ' OR '1' = '1 넣을 경우 모든데이터를 보여줌.
-- sql주입 공격이 가능하므로 조심할것
SELECT * FROM Customers WHERE Country = 'Germany';