-- Not NULL : null을 하용하지 않음

CREATE TABLE Mytable9 (
	col1 VARCHAR(100),
    col2 VARCHAR(100) NOT NULL
    );
    
DESC Mytable9;
SELECT * FROM Mytable9;

INSERT INTO Mytable9 (col1, col2) VALUES ('a', 'b');
INSERT INTO Mytable9 (col1, col2) VALUES (null, 'b');
INSERT INTO Mytable9 (col1, col2) VALUES ('a', null); -- 에러남 (NULL을 허용 안함)
