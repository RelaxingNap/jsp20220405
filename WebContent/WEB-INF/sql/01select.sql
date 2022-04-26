-- --는 한 줄 주석
-- select : 테이블에 있는 데이터 가져오는 명령문
-- from : 어떤 테이블
-- ; : 명령문 종료
select * from Customers;

-- data : table의 한 줄(row, record, entry)

-- 8개 테이블 조회
select * from Categories;
select * from Employees;
select * from OrderDetails;
select * from Orders;
select * from Products;
select * from Shippers;
select * from Suppliers;

-- 특정 속성(attribute, column, field)만 조회
-- select 키워드 다음에 column명 나열
-- * : 모든 column
-- select키워드 다음에 작성된 순서로 조회 결과가 나옴
select CustomerName, Address from Customers;

-- Employees 테이블에서 firstName과 BirthDate만 조회
select firstName, BirthDate from Employees;
-- Employees 테이블에서 firstName과 LastName을 조회하는데
-- firstName이 왼쪽에 위치하도록 조회 쿼리 작성
select firstName, LastName from Employees;
select LastName, firstName from Employees;

-- 대소문자 구분 안함(데이터베이스 vender, version마다 다름)
-- 작성 관습 : 키워드는 대문자
-- column명 : 회사마다 다름. lowerCamelCase, snake_case, SNAKE_CASE
