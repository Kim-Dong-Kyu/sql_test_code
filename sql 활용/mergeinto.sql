

/* \
   merge into 는  오라클 의 내장 함수로서 insert 문과 유사 하지만 해당 
   자료가 이미 있으면 update 없으면 insert 문장을 수행한다 

*/

MERGE INTO TB_SCORE S

    USING TMP_SCORE T

       ON (S.COURSE_ID = T.COURSE_ID AND S.STUDENT_ID = T.STUDENT_ID)

    WHEN MATCHED THEN

        UPDATE SET S.SCORE = T.SCORE

    WHEN NOT MATCHED THEN

        INSERT (S.COURSE_ID, S.STUDENT_ID, S.SCORE) 

        VALUES (T.COURSE_ID, T.STUDENT_ID, T.SCORE)

/*
 WHEN MATCHED THEN =이미 데이터가 존재할 경우 update 구문이 위치하는 곳 
  WHEN NOT MATCHED THEN = insert 구문이 위히 하는곳
  merge into 문은 update만 작성해도 구문 오류가 없다 
  
*/

