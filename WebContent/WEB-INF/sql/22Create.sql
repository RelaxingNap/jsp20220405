-- 데이터베이스 만들기

CREATE DATABASE mydb1;
USE mydb1;

-- 테이블 만들기
-- 회사마다 다르지만 snake_case사용하는곳 있음.
CREATE TABLE MyTable1 (
	colName1 INT,
    colName2 INT
);

-- 테이블 구조보기
DESC MyTable1;
DESCRIBE MyTable1;
DESC mydb1.MyTable1;

DESC w3schools.Customers; -- 다른 데이터베이스의 테이블을 볼때는 DB명.table명으로 적어야함

-- 새로만든 테이블에 데이터 넣기
INSERT INTO MyTable1 (colName1, colName2)
VALUES (300, 500);

SELECT * FROM MyTable1;

-- 이미 있는 데이터 사용해서 새 테이블 만들기
CREATE TABLE MyTable2 -- AS 키워드 생략됨
SELECT * FROM w3schools.Employees;

DESC MyTable2;
SELECT * FROM w3schools.Employees;

CREATE TABLE MyTable3 AS
SELECT CustomerID, CustomerName AS Name, City, Country
FROM w3schools.Customers;

DESC MyTable3;
SELECT * FROM MyTable3;

DESC MyTable1;
INSERT INTO MyTable1(colName1, colName2)
VALUES ('111', '222'); -- 따옴표 처리해도 안의 내용이 숫자형식이면 int타입으로 들어감.

SELECT * FROM MyTable1;

INSERT INTO MyTable1(colName1, colName2)
VALUES ('abc', '333'); -- 문자가 들어가서 에러

