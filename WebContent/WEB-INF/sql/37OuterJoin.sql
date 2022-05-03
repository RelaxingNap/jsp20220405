USE mydb2;

-- 게시물 별 댓글 수 조회
-- (단, 댓글이 없는 게시물은 나오지 않음)
-- 특정 테이블의 컬럼을 모두 쓰고 싶을 때, table명.* 형식으로 사용
SELECT b.*, COUNT(r.id)
FROM Board b JOIN Reply r ON b.id = r.board_id
GROUP BY b.id;

-- Inner Join
SELECT * FROM Board b INNER JOIN Reply r ON b.id = r.board_id;
-- Left Outer Join
SELECT * FROM Board b LEFT OUTER JOIN Reply r ON b.id = r.board_id; -- 게시글과 덧글이 모두 존재하는 글과 게시글은 존재하지만 댓글이 없는글 찾는 Query
SELECT * FROM Board b LEFT JOIN Reply r ON b.id = r.board_id; -- OUTER 생략가능
-- Right Outer Join
SELECT * FROM Board b RIGHT OUTER JOIN Reply r ON b.id = r.board_id; -- 게시글은 없지만 댓글이 있는 글은 존재하지 않음. 그래서 inner join과 같은 결과 발생
SELECT * FROM Reply r RIGHT OUTER JOIN Board b ON b.id = r.board_id;
SELECT * FROM Reply r RIGHT JOIN Board b ON b.id = r.board_id; -- OUTER 생략가능

-- 댓글이 없는 게시물 조회
SELECT * FROM Board b LEFT JOIN Reply r ON b.id = r.board_id
WHERE r.id is NULL;

-- 전체 게시물 조회 WITH 댓글 수
SELECT b.*, COUNT(r.id) FROM Board b LEFT JOIN Reply r ON b.id = r.board_id
GROUP BY b.id
ORDER BY b.id DESC; 

