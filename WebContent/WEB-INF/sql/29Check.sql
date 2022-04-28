-- CHECK : 입력되는 값을 검사 (맞으면 입력해주고, 틀리면 입력 안해줌)
CREATE TABLE Mytable14(
	col1 INT,
    col2 INT CHECK (col2 > 0)
    );
    
DESC Mytable14;

INSERT INTO Mytable14 (col1, col2) VALUES (3, 3);
INSERT INTO Mytable14 (col1, col2) VALUES (-3, 3);
INSERT INTO Mytable14 (col1, col2) VALUES (3, -3); -- CHECK에서 검사 당해서 조건에 맞지 않으므로 삽입이 안됨.

SELECT * FROM Mytable14;
SHOW CREATE TABLE Mytable14; -- 테이블 만들때 어떤 명령어를 사용하였는지 확인 할 수 있음
-- CREATE TABLE `Mytable14` (
--  `col1` int(11) DEFAULT NULL,
--  `col2` int(11) DEFAULT NULL CHECK (`col2` > 0)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
-- 실제로 사용된 명령어

-- backtick : 명령어 키워드를 컬럼명으로 사용하고 싶을때 ``을 사용하여 가능하게 함. 잘 사용 안함.
CREATE TABLE Mytable15(
	`unique` varchar(10)
);   
DESC Mytable15;


