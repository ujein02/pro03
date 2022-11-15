CREATE TABLE test(NAME VARCHAR(50), POINT INT);

INSERT INTO test(NAME, POINT) VALUES ("kkk",5);
INSERT INTO test(NAME, POINT) VALUES ("김지은",5);

SELECT * FROM test;


CREATE TABLE notice(
	no INT PRIMARY KEY AUTO_INCREMENT, 
	title VARCHAR(200), 
	content VARCHAR(1000), 
	regdate DATETIME DEFAULT NOW(), 
	visited INT DEFAULT 0
);

DESC notice;

select * from notice order by regdate DESC;

INSERT INTO notice(title,content) VALUES("테스트1","테스트글입니다1");

COMMIT;

CREATE TABLE USER(
	id VARCHAR(30) PRIMARY KEY,
	pw VARCHAR(300) NOT NULL,
	NAME VARCHAR(50) NOT NULL,
	POINT INT DEFAULT 0,
	grade VARCHAR(4) DEFAULT "F",
	visted INT DEFAULT 1,
	tel VARCHAR(11),
	addr VARCHAR(150),
	email VARCHAR(100),
	birth DATE,
	regdate DATETIME DEFAULT NOW()
);

DESC USER;

drop table USER;

SELECT * FROM USER;

UPDATE user SET grade="A" WHERE id="admin";

UPDATE user SET pw="1234" WHERE id="admin";

COMMIT;

select * from user where id="admin";

delete from user where id="admin";
