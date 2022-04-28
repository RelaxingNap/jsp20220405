SELECT * FROM Employees ORDER BY BirthDate;

SELECT * FROM Employees
WHERE BirthDate >= '1960-01-01'
AND BirthDate <= '1969-12-31';

SELECT * FROM Employees
WHERE BirthDate BETWEEN '1960-01-01' AND '1969-12-31';
-- 범위 안에 값을 포함하고 싶을때 사용(쓴 기준도 포함)

SELECT * FROM Products
WHERE Price BETWEEN 20 AND 30;
