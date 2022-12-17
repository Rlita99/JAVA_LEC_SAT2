USE dangguen_app;

SHOW TABLES;

CREATE TABLE users(
	user_no INT NOT NULL AUTO_INCREMENT,
	user_id VARCHAR(50),
	user_name VARCHAR(50),
	user_pwd VARCHAR(50),
	PRIMARY KEY(user_no)
 );
 
 DESC users;
-- 1. R(Select)
SELECT * FROM users;

-- 2. C(Insert)
INSERT users(
 user_id,
 user_name,
 user_pwd
) VALUES(
 'nyorae',
 '뇨럐',
 '1234'
);

-- 3. U(Update) : nyorae2의 이름과 비밀번호를 뇨샤먀, 1111로 바꾸고 싶다.
UPDATE users SET user_name='뇨샤먀' , user_pwd='1111' WHERE user_id='nyorae2';

