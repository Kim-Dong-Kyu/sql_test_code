SELECT 
  (  
    SYSDATE-
     to_date('2020-07-29 10:00', 'yyyy-mm-dd hh24:mi')) *24 *60 *60 
  AS min_di+ff
FROM DUAL
-- 초
SELECT 
  (  
     SYSDATE 
    - to_date('2020-07-29 10:00', 'yyyy-mm-dd hh24:mi')) *24 *60 
  AS min_diff
FROM DUAL
-- 분 
SELECT 
  (  
     SYSDATE 
    - to_date('2020-07-29 10:00', 'yyyy-mm-dd hh24:mi')) *24  
  AS min_diff
FROM DUAL
-- 시

SELECT EXTRACT( DAY    FROM difference ) AS days,
       EXTRACT( HOUR   FROM difference ) AS hours,
       EXTRACT( MINUTE FROM difference ) AS minutes,
       EXTRACT( SECOND FROM difference ) AS seconds
FROM   (
  SELECT NUMTODSINTERVAL(
           TO_DATE( '2016-01-02 01:01:12', 'YYYY-MM-DD HH24:MI:SS' )
             - TO_DATE( '2016-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ),
           'DAY'
         ) AS difference
  FROM   DUAL
);// 일 시분 초 예제