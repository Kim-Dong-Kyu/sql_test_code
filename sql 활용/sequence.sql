
/*
  시퀀스 : pk 중복성을 방지하기 위해 주로 쓰이고 자동으로 insert 구분이 발생할때 index 값을 증가시켜 준다 
*/
CREATE SEQUENCE SEQ_TEST
  START WITH 8000  --시작 번호
  INCREMENT BY 1   --증가 량
  CACHE 20;

SELECT SEQ_TEST.NEXTVAL FROM DUAL;  
-- INDEX 증가를 확인할 수 있다 .
SELECT SEQ_TEST.CURRVAL FORM DUAL 
--현재 인덱스를 확인할 수 있다.
ALTER SEQUENCE SEQ_TEST INCREMENT BY [] 
-- [ ]안에 값만큼 증가량을 변경 시킬 수 있다 
