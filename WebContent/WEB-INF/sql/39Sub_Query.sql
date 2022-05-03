USE mydb2;

-- 댓글이 있는 게시물
-- JOIN
SELECT DISTINCT b.* FROM Board b JOIN Reply r ON b.id = r.board_id;

-- SubQuery
SELECT id, title
FROM Board
WHERE id IN -- (20, 22)
(SELECT board_id FROM Reply);

-- 댓글이 없는 게시물
SELECT b.id, b.title FROM Board b LEFT JOIN Reply r ON b.id = r.board_id
WHERE r.id IS NULL;

-- SubQuery
SELECT id, title
FROM Board
WHERE id NOT IN -- (20, 22)
(SELECT board_id FROM Reply);

-- 게시글 별 댓글 수
SELECT b.*, COUNT(r.id)
FROM Board b LEFT JOIN Reply r ON b.id = r.board_id
GROUP BY b.id
ORDER BY b.id DESC;

-- 게시글 별 댓글 수 (Sub Query)
SELECT b.*, (SELECT COUNT(r.id) FROM Reply r WHERE board_id = b.id) NumOfReply
FROM Board b
ORDER BY b.id DESC;