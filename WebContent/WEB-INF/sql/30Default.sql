-- Default : 값이 명시되지 않았을 때 기본값을 설정하여 넣어주는 명령어

CREATE TABLE Mytable16 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) DEFAULT 'hello'
);

DESC Mytable16;
SELECT * FROM Mytable16;
INSERT INTO Mytable16 (col1, col2) VALUES ('abc', 'def'); -- col2값을 명시하여 넣어서 'def'가 들어감.
INSERT INTO Mytable16 (col1, col2) VALUES ('abc', null); -- null을 넣을 수 있음. DEFAULT값 삽입 안됨.
INSERT INTO Mytable16 (col1) VALUES ('hi'); -- col2에 무엇을 넣을지 명시하지 않으면 'hello'가 자동 삽입됨.