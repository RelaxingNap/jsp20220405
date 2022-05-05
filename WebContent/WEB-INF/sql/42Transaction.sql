USE mydb1;

CREATE TABLE Bank (
	account VARCHAR(2) PRIMARY KEY,
    money INT
);

INSERT INTO Bank (account, money) VALUES ('A', 10000);
INSERT INTO Bank (account, money) VALUES ('B', 30000);
COMMIT;
SELECT * FROM Bank;

-- A가 B에게 5000원 송금
-- A의 계좌에서 -5000원
-- B의 계좌에서 +5000원
UPDATE Bank
SET money = money - 5000
WHERE account = 'A';
-- 문제 발생 시 RollBack 할 필요가 있음
ROLLBACK;
UPDATE Bank
SET money = money + 5000
WHERE account = 'B';

COMMIT;
SELECT * FROM Bank;
-- 하나의 트랜잭션이 실행 중 문제 생길경우 rollback이 필요하고 
-- 트랜잭션이 잘 수행이 되었다면 commit하여 마무리 지어야 한다. 

