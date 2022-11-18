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

alter table user rename column visted to visited;
alter table user rename column addr to address;

CREATE TABLE pic(
	no INT PRIMARY KEY AUTO_INCREMENT,
	tourno VARCHAR(20),
	picname VARCHAR(150),
	pos INT DEFAULT 1
);

SELECT * FROM pic;

DESC pic;


CREATE TABLE tour(
	no INT PRIMARY KEY AUTO_INCREMENT,
	tourno VARCHAR(20),	-- 카테고리 타입 - 마지막 레코드의 no+1
	cate VARCHAR(20),
	place VARCHAR(100),
	comment1 VARCHAR(1000),
	comment2 VARCHAR(1000)  
);

DESC tour;

SELECT * FROM tour;


COMMIT;

select * from tour where NO=3;

ALTER TABLE tour ADD COLUMN addr VARCHAR(200);

update tour set addr="경상북도 포항시 북구 선착로 78" WHERE tourno="B0005";

select * from tour where tourno="B0005";

-- 이용후기 테이블
CREATE TABLE impress(
	NO INT PRIMARY KEY AUTO_INCREMENT,
	cate VARCHAR(20),
	tourno VARCHAR(20),
	id VARCHAR(30),
	content VARCHAR(1000),
	star DOUBLE,
	imgSrc VARCHAR(150),
	regdate DATETIME DEFAULT NOW()
);

DESC impress;


-- 질의응답 테이블
CREATE TABLE qna(
	NO INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(100) NOT NULL,
	content VARCHAR(1000) NOT NULL,
	author VARCHAR(20) NOT NULL,
	regdate DATETIME DEFAULT NOW(),
	lev INT DEFAULT 0,					-- 깊이
	parno INT,								-- 부모글 번호
	sec CHAR(1),								-- 비밀글 여부
	visited INT DEFAULT 0
);

DESC qna;

COMMIT;

select * from qna order by parno asc, lev asc,no ASC;