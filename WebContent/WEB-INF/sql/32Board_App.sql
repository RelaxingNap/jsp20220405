CREATE DATABASE mydb2;
USE mydb2;

 -- 자동으로 번호추가
CREATE TABLE Board (
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(100) NOT NULL,
    body VARCHAR(2000) NOT NULL,
    inserted DATETIME NOT NULL DEFAULT NOW()
);

SELECT * FROM Board;

SET SQL_SAFE_UPDATES = 0;

UPDATE Board
SET inserted = DATE_SUB(inserted, INTERVAL 1 DAY);

CREATE TABLE Reply (
	id INT PRIMARY KEY AUTO_INCREMENT, -- 댓글을 구분하기 위한 컬럼
    board_id INT, -- 다른 table의 primary key를 참조하여 사용함. 
                 -- foreign key (참조키, 외래키)
	content VARCHAR(255) NOT NULL,
    inserted DATETIME DEFAULT NOW(),
    FOREIGN KEY (board_id) REFERENCES Board(id) -- foreign key 제약사항 추가
);

SELECT * FROM Reply;

-- 테이블 관계
-- 1대1
-- 학생(이름, 생년월일...), 학력(출신학교, 졸업년도)

-- 1대다
-- 게시물(게시물번호, 내용), 댓글(댓글내용)

-- 다대다(m:n)
-- 학생(이름, 생년월일...), 회사(회사명, ...)
-- 테이블이 하나 더 생성되어야 함.