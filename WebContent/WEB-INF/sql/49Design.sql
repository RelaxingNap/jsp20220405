-- 1대1 관계
-- 웬만하면 나오지 않지만 특수한 경우에는 사용함

CREATE TABLE Employees (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    address VARCHAR(255),
    salary INT
);

CREATE TABLE Employees_chong (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    address VARCHAR(255)
);

CREATE TABLE Employees_insa (
	id INT PRIMARY KEY AUTO_INCREMENT,
    salary INT
);