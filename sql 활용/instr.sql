-- 찾는 단어가 없기에 0을 반환
SELECT INSTR('CORPORATE FLOOR','OK') AS idx FROM DUAL; -- 0
 
-- 단어의 앞글자 인덱스를 반환
 
-- PO 단어를 찾아라
SELECT INSTR('CORPORATE FLOOR','PO') AS idx FROM DUAL; -- 4 
 
-- 6번째 부터 시작해서 해당 단어 OR 위치를 찾아라
SELECT INSTR('CORPORATE FLOOR','OR',6) AS idx FROM DUAL; -- 14
 
-- 2번째 부터 시작해서 나오는 값중에 2번째 값의 위치를 찾아라
SELECT INSTR('CORPORATE FLOOR','OR',2,2) AS idx FROM DUAL; -- 5
 
-- 우측에서 3번째 위치부터 시작해서 왼쪽방향으로 검색하고 2번째 나오는 값의 위치를 찾아라
SELECT INSTR('CORPORATE FLOOR','OR',-3,2) AS idx FROM DUAL; -- 2