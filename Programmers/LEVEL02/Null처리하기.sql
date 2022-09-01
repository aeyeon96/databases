-- https://school.programmers.co.kr/learn/courses/30/lessons/59410
-- 입양 게시판에 동물 정보를 게시하려 합니다. 동물의 생물 종, 이름, 성별 및 중성화 여부를 아이디 순으로 조회하는 SQL문을 작성, 결측치는 no name으로 대체
SELECT ANIMAL_TYPE, (CASE WHEN NAME IS NULL THEN 'No name' ELSE NAME END) AS NAME, SEX_UPON_INTAKE FROM ANIMAL_INS;