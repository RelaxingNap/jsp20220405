-- CREATE TABLE : 테이블 만들기
CREATE TABLE Customers
SELECT * FROM w3schools.Customers;

SELECT * FROM Customers;

-- DROP TABLE : 테이블 삭제
DROP TABLE Customers;

-- ALTER TABLE : 테이블 수정
-- 컬럼 추가
ALTER TABLE Customers
ADD Email VARCHAR(255);

ALTER TABLE Customers
ADD Email VARCHAR(255) NOT NULL DEFAULT '이메일없음';

ALTER TABLE Customers
ADD Email VARCHAR(255) FIRST; -- COLUMN위치 지정가능. DEFAULT는 맨 마지막 (맨처음으로 지정) 

ALTER TABLE Customers
ADD Email VARCHAR(255) AFTER ContactName; -- COLUMN위치를 특정한 위치로 지정가능. 

-- 컬럼 삭제
ALTER TABLE Customers
DROP COLUMN Email; -- 위험함 웬만하면 하지 말것

-- 컬럼 수정
ALTER TABLE Customers
MODIFY COLUMN Email VARCHAR(10); -- 컬럼수정은 삭제만큼 위험한 행동인만큼 필요한때에만 사용할것.

DESC Customers;

