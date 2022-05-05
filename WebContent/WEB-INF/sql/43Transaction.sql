USE mydb2;

DELETE FROM Reply WHERE board_id = 22;
-- ROLLBACK;
DELETE FROM Board WHERE id = 22;
COMMIT;
-- 게시판에 반영