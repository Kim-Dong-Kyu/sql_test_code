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