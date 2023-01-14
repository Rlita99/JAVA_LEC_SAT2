-- 데이터베이스 만들기(6일차)
CREATE DATABASE web06_db;

-- 데이터베이스용 계정 만들기
GRANT ALL PRIVILEGES ON web06_db.* TO web06@'%' IDENTIFIED BY '12345';
-- web06_db의 모든 권한(all privileges_을 외부 전체(%)에서 접속하는 web06이라는 아이디를 가진 계정에 부여한다.
-- ex) 172.1.1.3이라는 클라이언트에게만 접근하게 하려면 : TO web06@'171.1.1.3'

GRANT ALL PRIVILEGES ON web06_db.* TO web06@localhost IDENTIFIED BY '12345';

USE web06_db;

CREATE TABLE web06_user (
	user_no INweb06_dbweb06_dbT,
	user_name VARCHAR(50),
	user_pwd VARCHAR(50),
	insert_date DATETIME DEFAULT current_timestamp
);

-- 만들어진 테이블 확인
SHOW TABLES;

-- 테이블 구조를 확인한다
DESC web06_user;

-- 테이블 데이터 확인
SELECT * 
	FROM web06_user;
	
-- 데이터 입력
INSERT INTO web06_user 
(
	user_no,
	user_name,
	user_pwd
) VALUES (
	2,
	'뇨럐2',
	'12345'
);

INSERT INTO web06_user
(
	user_no,
	user_name,
	user_pwd
) VALUES (
	3,
	'뇨럐3',
	'12345'
);

UPDATE web06_user SET user_name='주그므킬러'  WHERE user_no=1;

-- user_no을 사용자 키로 변경(입력하지 않아도 자동으로 +1 해줄 수 있게 변경)
-- AUTO_INCREMENT

-- 테이블 수정
ALTER TABLE web06_user MODIFY user_no INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
