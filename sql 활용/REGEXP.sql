SELECT REGEXP_SUBSTR('ABCD>EFG', '[^>]+',1,1)
FROM DUAL 

--  '>' 기호의 앞까지만 추출한다 

SELECT  REGEXP_SUBSTR('ABCD>EFG', '[^>]+',1,2)
FROM DUAL

--  '>' 기호의 뒤의 내용을 출력한다 (DEFAULT는 1이기 때문에 2를 명시!)