-- https://school.programmers.co.kr/learn/courses/30/lessons/59039
-- 동물 중, 이름이 없는 채로 들어온 동물의 ID를 조회하는 SQL 문,  ID는 오름차순 정렬
SELECT ANIMAL_ID FROM ANIMAL_INS WHERE NAME is NULL ORDER BY ANIMAL_ID;