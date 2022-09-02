-- https://school.programmers.co.kr/learn/courses/30/lessons/59414
-- 각 동물의 아이디와 이름, 들어온 날짜1를 조회하는 SQL문을 작성해주세요. 이때 결과는 아이디 순으로 조회
SELECT ANIMAL_ID, NAME, LEFT(CAST(DATETIME AS CHAR), 10) AS '날짜' 
FROM ANIMAL_INS;