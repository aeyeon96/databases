-- 행 단위로 데이터 삽입
INSERT INTO company (ID, Name, Age, Address, Salary) 
VALUES ('1', '이애연', 27, '연대', 700)
;

SELECT * FROM company;

-- 특정 열 제외하고 데이터 삽입
INSERT INTO company (ID, Name, Salary) 
VALUES ('2', '이애연', 700)
;
SELECT * FROM company;

INSERT INTO company (ID, Name, Salary) 
VALUES ('3', '이애연', 200)
;
SELECT * FROM company;

INSERT INTO company (ID, Name, Age, Address, Salary) 
VALUES ('4', '이애연', 27, '연대', 300)
;
INSERT INTO company (ID, Name, Age, Address, Salary) 
VALUES ('5', '이애연', 27, '연대', 600)
;
SELECT * FROM Company;

-- 특정 조건을 만족하는 행 삭제
DELETE FROM Company WHERE  




