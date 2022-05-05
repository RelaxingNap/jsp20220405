
-- 제2정규형(Second Normal Form, 2NF) 
-- 제1정규형이어야 하고, 
-- 부분적 함수의존이 없다.
	-- 부분적 함수 종속은 키가 아닌 열이 합성키의 일부에 종속되는 경우
    
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

-- 제3정규형(Third Normal Form, 3NF)
-- 제2정규형이어야 하고, 
-- 이행적 종속이 없다.
	-- 키가 아닌 열이 키가 아닌 다른열에 종속되는 경우
    
CREATE TABLE course(
	course_id INT PRIMARY KEY,
    course_name VARCHAR(255),
    instructor VARCHAR(255),
    instructor_phone VARCHAR(255)
);
-- 아래와 같이 변경

CREATE TABLE course(
	course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(255),
    instructor_id INT,
    FOREIGN KEY (instructor_id) REFERENCES instructor(instructor_id)
);
CREATE TABLE instructor(
	instructor_id INT PRIMARY KEY AUTO_INCREMENT,
    instructor_name VARCHAR(255),
    instructor_phone VARCHAR(255)
);
