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



SELECT seq "사번",
     , SUBSTR(name_h, 1, 1)||'**' AS "성명",
     , regi_date AS "입사일",
     , MONTHS_BETWEEN(SYSDATE, regi_date) AS "개월차", 무     
     , TRUNC(MONTHS_BETWEEN(SYSDATE, regi_date)/12,0) AS "년",
     , TRUNC(MOD(MONTHS_BETWEEN(SYSDATE, regi_date)/12, 1)*12,0) AS "월",
     , ROUND(MOD(MOD(MONTHS_BETWEEN(SYSDATE, regi_date)/12, 1)*12, 1)*(365/12),0) AS "일"
  FROM EMPT;

   //  두 시간 사이 년 월 일 시간 분 초 구하기
