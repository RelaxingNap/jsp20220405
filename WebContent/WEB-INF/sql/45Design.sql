CREATE DATABASE mydb3;
USE mydb3;

-- 중복되는 값이 없도록, NULL로 남지 않도록
-- Table을 다듬는 과정 - 정규화(Normal Form)
-- 갱신이상, 삽입이상, 삭제이상을 일으키지 않기 위해서 필요
-- 제1정규화 (First Normal Form) 1NF
-- 제2정규화 (Second Normal Form) 2NF
-- 제3정규화 (Third Normal Form) 3NF

-- 제1정규화
-- 1. 열은 원자적 값(Atomic Data)만 저장 -> 주관적임.
-- 2. 같은 데이터 반복 안되게

-- 이름, 주소
CREATE TABLE Person1 (
	name VARCHAR(200) PRIMARY KEY,
    address VARCHAR(200)
);

INSERT INTO Person1 (name, address) VALUES ('A', '서울시 강남구 역삼동 111');

CREATE TABLE toy(
	toy_id INT PRIMARY KEY,
    toy VARCHAR(255)
);

CREATE TABLE toy_color(
	toy_id INT,
    color VARCHAR(255),
    FOREIGN KEY (toy_id) REFERENCES toy(toy_id),
    PRIMARY KEY (toy_id, color)
);

CREATE TABLE toy_color(
	toy_color_id INT PRIMARY KEY AUTO_INCREMENT, 
    -- 구분하기 힘들게 되어 2정규화를 만족시키지 못하는 경우 인위적으로 만든 PRIMARY KEY를 추가하고 합성키를 없애면 해결 
    toy_id INT,
    color VARCHAR(255),
    FOREIGN KEY (toy_id) REFERENCES toy(toy_id)
);