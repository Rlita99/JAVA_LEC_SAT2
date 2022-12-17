-- 주석
/* 여러줄 주석
CREATE DATABASE dangdbguen_app;
*/

/*SHOW TABLES;
DESC USER;
SELECT HOST, USER FROM USER;
*/

/* 
1. DML(Manipulation) : 넣고, 빼고, 고치고, 삭제하기 / insert(Create), select(Read), Update, Delete (CRUD)
2. DDL(Definition) : 생성하고, 삭제하고, 변경하기  / Create, Drop, Alter (+- Rename, Trunkate)
3. DCL(Control) : 계정생성, 권한부여 / Grant, Revoke
*/

-- 5. dangguen_app 이라는 DB에 ID:dangguen, 비번:1234 생성하고 풀 권한 주기.
-- GRANT ALL PRIVILEGES ON danggeun_app TO danggeun@'%' IDENTIFIED BY'1234';

GRANT ALL PRIVILEGES ON dangguen_app.* TO danggeun@'%' IDENTIFIED BY '1234';

USE mysql;
SELECT HOST,user FROM USER

SHOW DATABASES;
 

FLUSH PRIVILEGES;