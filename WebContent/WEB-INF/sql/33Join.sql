-- JOIN
USE mydb2;

SELECT * FROM Board; -- 4개열, 14개행
SELECT * FROM Reply; -- 4개열, 6개행

SELECT * FROM Board, Reply; -- 결합(Cartesion Product) : 8개열(4 + 4), 84개행(14 * 6)
SELECT * FROM Reply, Board; -- 결합 : 8개열 (4 + 4), 84개행 (6 * 14)
SELECT * FROM Board JOIN Reply; -- Cartesion Product
SELECT * FROM Board JOIN Reply ON Board.id = Reply.board_id; -- INNER JOIN(주로 사용)
SELECT * FROM Board, Reply WHERE Board.id = Reply.board_id; -- INNER JOIN
SELECT * FROM Reply JOIN Board ON Reply.board_id = Board.id -- INNER JOIN

