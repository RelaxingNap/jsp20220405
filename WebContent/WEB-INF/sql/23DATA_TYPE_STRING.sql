-- CHAR : 고정길이 문자열
CREATE TABLE MyTable4 (
	col1 CHAR,
    col2 CHAR(1),
    col3 CHAR(2),
    col4 CHAR(5)
);

DESC MyTable4;

INSERT INTO MyTable4(col1)
VALUES ('a');
INSERT INTO MyTable4(col1)
VALUES ('ab'); -- 고정길이이기때문에 에러남
INSERT INTO MyTable4(col3)
VALUES ('ab');
INSERT INTO MyTable4(col3)
VALUES ('b'); -- 고정길이라서 공간을 2개 차지함.
INSERT INTO MyTable4(col4)
VALUES ('abcde');
INSERT INTO MyTable4(col4)
VALUES ('abcdef'); -- 안됨
INSERT INTO MyTable4(col4)
VALUES ('abc'); -- 되지만 5개 공간 차지
INSERT INTO MyTable4(col4)
VALUES ('가나다라마');

SELECT * FROM MyTable4;

-- VARCHAR : 가변길이
CREATE TABLE MyTable5 (
	col1 CHAR(10),
    col2 VARCHAR(10)
);

-- 테이블 지우기 (주의해서 사용할것 회사에서는 안쓴다고 생각할것)
DROP TABLE MyTable5;

INSERT INTO MyTable5 (col1, col2)
VALUES ('a','a');
-- a
-- a
INSERT INTO MyTable5 (col2)
VALUES ('0123456789');
INSERT INTO MyTable5 (col2)
VALUES ('01234567890'); -- 되는데 짤리거나 안됨. (설정차이)
INSERT INTO MyTable5
VALUES ('abcdefghijklmn'); -- 되는데 짤리거나 안됨. (설정차이)

SELECT * FROM MyTable5;
-- jdbc연결시 char나 varchar는 string으로 얻어오면 됨 
