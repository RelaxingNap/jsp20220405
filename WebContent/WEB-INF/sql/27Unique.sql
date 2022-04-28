-- UNIQUE : 해당 컬럼의 값이 중복되면 안됨

CREATE TABLE Mytable10 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) UNIQUE

);

DESC Mytable10;
SELECT * FROM Mytable10;
-- record에는 순서가 없음. 순서가 중요시 ORDER BY 사용할 것
INSERT INTO Mytable10 (col1, col2) VALUES ('a', 'b');
INSERT INTO Mytable10 (col1, col2) VALUES ('c', 'd');
INSERT INTO Mytable10 (col1, col2) VALUES ('c', 'e');
INSERT INTO Mytable10 (col1, col2) VALUES ('c', 'e'); -- 에러(중복 허용안된다는 제약조건을 설정해서)
INSERT INTO Mytable10 (col1, col2) VALUES ('c', null);
INSERT INTO Mytable10 (col1, col2) VALUES ('d', null); -- NULL은 값이 없는거라서 중복된것이라는 표현을 못함. 그래서 들어감

-- unique, not null 조합 -> 2개를 동시에 적용시키면 primary key로 적용됨.
CREATE TABLE Mytable11 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) NOT NULL UNIQUE
);

DESC Mytable11;