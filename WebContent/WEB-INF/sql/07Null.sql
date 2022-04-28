SELECT * FROM Employees ORDER BY EmployeeID DESC;

SELECT * FROM Employees WHERE Photo = 'pic999';
-- NULL값 있는 컬럼 조회시 IS NULL 사용
SELECT * FROM Employees WHERE Photo IS NULL;

-- NULL값 없는 컬럼 조회시 IS NOT NULL 사용
SELECT * FROM Employees WHERE Photo IS NOT NULL;

-- 그룹함수에서 보통 제외됨
SELECT count(*) FROM Employees; -- 레코드 수
SELECT count(LastName) FROM Employees;
SELECT count(Photo) FROM Employees;

SELECT * FROM Employees;

