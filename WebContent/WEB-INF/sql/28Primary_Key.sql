USE mydb1;
CREATE TABLE Mytable12(
	col1 VARCHAR(10),
	col2 VARCHAR(10) UNIQUE NOT NULL
);
DESC Mytable12;

-- primary key : not null, unique 조합

CREATE TABLE Mytable13(
	col1 VARCHAR(10),
    col2 VARCHAR(10) PRIMARY KEY
    );
    
DESC Mytable13;

INSERT INTO Mytable13 (col1, col2) VALUES ('a', 'a');
INSERT INTO Mytable13 (col1, col2) VALUES ('a', 'b');
INSERT INTO Mytable13 (col1, col2) VALUES ('a', 'b'); -- 에러 unique조건 부합하지 못함
INSERT INTO Mytable13 (col1, col2) VALUES ('a', null); -- 에러 not null조건 부합하지 못함.

SELECT * FROM Mytable13;

-- auto_increment : 자동으로 값 증가. primary key일때만 가능.
CREATE TABLE Mytable17(
	col1 INT PRIMARY KEY AUTO_INCREMENT, -- 1부터 자동으로 1씩 증가하는 값 입력해줌.
    col2 VARCHAR(10)
);    
SELECT * FROM Mytable17;
INSERT INTO Mytable17 (col2) VALUES ('abce');

DELETE FROM Mytable17 WHERE col1 = 10; -- 10번 삭제 후 새로이 추가 되면 11번부터 추가됨.