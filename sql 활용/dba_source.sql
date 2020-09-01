SELECT *
FROM DBA_SOURCE
WHERE TEXT LIKE '%[]%' 
-- [] 안에 문장이 있는 프로시저 / 트리거등을 조호한다