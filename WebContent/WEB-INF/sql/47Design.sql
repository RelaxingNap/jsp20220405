USE mydb3;
-- 1대다 관계
CREATE TABLE Products (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(id)
);

CREATE TABLE Categories(
	id INT PRIMARY KEY AUTO_INCREMENT,
	categoryName VARCHAR(255),
    description VARCHAR(255)
);