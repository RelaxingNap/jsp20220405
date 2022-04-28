CREATE TABLE Mytable8 (
	col1 DATE,
    col2 DATETIME
);

INSERT INTO Mytable8 (col1) VALUES ('2022-04-28');
SELECT * FROM Mytable8;
INSERT INTO Mytable8 (col1, col2) VALUES ('2022-04-28', '11:12:13');
-- 현재시간 NOW();

SELECT now();
INSERT INTO Mytable8 (col1, col2) VALUES (now(),now());
-- col1의 시, 분, 초는 잘림
-- jdbc에서는 jdbc에서는 Date타입으로 받아올 수 있고, DATETIME은 Timestamp타입으로 받아 올 수 있다.
-- java.util에서 쓰이는 데이터 타입을 상속받아서 쓰는 java.sql에서 타입을 이용하기 때문에 형변환이 필요한 경우가 생김
-- 회사가서 타입처리는 다시 배워야함(회사마다 기준이 다름)
