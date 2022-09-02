-- https://school.programmers.co.kr/learn/courses/30/lessons/59409
-- 보호소의 동물이 중성화되었는지 아닌지 파악하려 합니다. 중성화된 동물은 SEX_UPON_INTAKE 컬럼에 'Neutered' 또는 'Spayed'라는 단어가 들어있습니다. 동물의 아이디와 이름, 중성화 여부를 아이디 순으로 조회하는 SQL문
SELECT ANIMAL_ID, NAME, IF (INSTR(SEX_UPON_INTAKE, 'Neutered') != 0 OR INSTR(SEX_UPON_INTAKE, 'Spayed') != 0, 'O', 'X') AS '중성화' 
FROM ANIMAL_INS 
ORDER BY ANIMAL_ID;