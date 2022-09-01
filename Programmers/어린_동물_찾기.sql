-- https://school.programmers.co.kr/learn/courses/30/lessons/59037
-- 동물 중 젊은 동물1의 아이디와 이름을 조회하는 SQL 문, 아이디 순
SELECT ANIMAL_ID, NAME FROM ANIMAL_INS WHERE NOT INTAKE_CONDITION IN ('Aged') ORDER BY ANIMAL_ID;