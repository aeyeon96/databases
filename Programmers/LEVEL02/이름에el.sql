-- https://school.programmers.co.kr/learn/courses/30/lessons/59047
-- 이름에 "EL"이 들어가는 개의 아이디와 이름을 조회하는 SQL문, 이름 순
SELECT ANIMAL_ID, NAME FROM ANIMAL_INS WHERE NAME LIKE "%el%" AND (ANIMAL_TYPE = 'Dog') ORDER BY NAME;