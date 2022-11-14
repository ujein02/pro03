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

CREATE TABLE user(
	id VARCHAR(13) PRIMARY KEY, 
	pw VARCHAR(200) NOT null,
	name VARCHAR(50) NOT null,
	address VARCHAR(500),
	tel VARCHAR(14),
	regDate DATETIME DEFAULT NOW(),
	email VARCHAR(50)
);

DESC USER;

drop table user;