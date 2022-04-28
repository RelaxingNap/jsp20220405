CREATE TABLE Mytable6 (
	col1 INT,
    col2 INT(3)
);

INSERT INTO Mytable6 (col1)
VALUES (111111111111); -- 최대, 최소값 사이만 가능하거나 안됨(설정차이)
INSERT INTO Mytable6 (col1)
VALUES (3333);

INSERT INTO Mytable6 (col2)
VALUES (123);
INSERT INTO Mytable6 (col2)
VALUES (3333);
INSERT INTO Mytable6 (col2)
VALUES (3.14); -- 소수점부분 잘림
SELECT * FROM Mytable6;
-- int타입은 jdbc로는 int로 얻어올 수 있음

-- DEC : 소수가 있는 수
-- DEC(size, d) : size = 총길이, d = 소수점이하수의 길이 

CREATE TABLE Mytable7 (
	col1 DEC(3, 2),
    col2 DEC(5, 1)
);

INSERT INTO Mytable7 (col1) VALUES (3.14);
INSERT INTO Mytable7 (col1) VALUES (13.14);
INSERT INTO Mytable7 (col1) VALUES (3.145); -- 됐는데 반올림됨(설정차이)
INSERT INTO Mytable7 (col2) VALUES (1234.5); -- 됐는데 반올림됨(설정차이)
INSERT INTO Mytable7 (col2) VALUES (1234.522); -- 됐는데 반올림됨(설정차이)
INSERT INTO Mytable7 (col2) VALUES (11234.53333); -- 안됨

SELECT * FROM Mytable7;    
-- DEC는 jdbc로는 DOUBLE이나 BIGDECIMAL로 얻어 올 수 있음
-- double로는 data손실이 발생할 수 있기때문에 
-- 정확한 data가 필요한 경우라면 BIGDECIMAL타입을 사용해야함.
