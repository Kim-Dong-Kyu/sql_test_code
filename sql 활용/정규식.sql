WITH BASE AS (
    SELECT 'aA11'   AS ID FROM DUAL UNION ALL   
    SELECT '1qw211e' AS ID FROM DUAL UNION ALL   
    SELECT '1qwe#'  AS ID FROM DUAL UNION ALL   
    SELECT 'e*'     AS ID FROM DUAL UNION ALL   
    SELECT '@!'     AS ID FROM DUAL UNION ALL   
    SELECT '123'    AS ID FROM DUAL)
SELECT ID FROM BASE
 WHERE REGEXP_LIKE(ID, '[^[:digit:]]');

-- 하나라도 숫자가 아닌것이 있으면  선택

WITH BASE AS (
    SELECT 'aA11'   AS ID FROM DUAL UNION ALL   
    SELECT '1qw211e' AS ID FROM DUAL UNION ALL   
    SELECT '1qwe#'  AS ID FROM DUAL UNION ALL   
    SELECT 'e*'     AS ID FROM DUAL UNION ALL   
    SELECT '@!'     AS ID FROM DUAL UNION ALL   
    SELECT '123'    AS ID FROM DUAL)
SELECT ID FROM BASE
 WHERE REGEXP_LIKE(ID, '1[q]');

 -- 1 뒤에 q가 있는 경우 선택



 WITH BASE AS (
    SELECT 'aA11'   AS ID FROM DUAL UNION ALL   
    SELECT '1qw211e' AS ID FROM DUAL UNION ALL   
    SELECT '1qwe#'  AS ID FROM DUAL UNION ALL   
    SELECT 'e*'     AS ID FROM DUAL UNION ALL   
    SELECT '@!'     AS ID FROM DUAL UNION ALL   
    SELECT '123'    AS ID FROM DUAL)
SELECT ID FROM BASE
 WHERE REGEXP_LIKE(ID, '1[2q]');
-- 1 뒤에 2 나 q가 포함된 문자열이 오는  경우를 선택 



WITH BASE AS (
    SELECT 'aA11'   AS ID FROM DUAL UNION ALL   
    SELECT '1qw211e' AS ID FROM DUAL UNION ALL   
    SELECT '1qwe#'  AS ID FROM DUAL UNION ALL   
    SELECT 'e*'     AS ID FROM DUAL UNION ALL   
    SELECT '@!'     AS ID FROM DUAL UNION ALL   
    SELECT '123'    AS ID FROM DUAL)
SELECT ID FROM BASE
 WHERE REGEXP_LIKE(ID, '1qw[^2]') ;
--1qw 뒤에 2 가 없는 문자열을 선택

WITH BASE AS (
    SELECT 'aA11'   AS ID FROM DUAL UNION ALL   
    SELECT '1qw211e' AS ID FROM DUAL UNION ALL   
    SELECT '1qwe#'  AS ID FROM DUAL UNION ALL   
    SELECT 'e*'     AS ID FROM DUAL UNION ALL   
    SELECT '@!'     AS ID FROM DUAL UNION ALL   
    SELECT '123'    AS ID FROM DUAL)
SELECT ID FROM BASE
 WHERE REGEXP_LIKE(ID, '[1]?[2]') ;

-- 1 과 2 사이에 문자가 잇거나 없거나 상관없음


WITH BASE AS (
    SELECT 'aA11'   AS ID FROM DUAL UNION ALL   
    SELECT '1qw211e' AS ID FROM DUAL UNION ALL   
    SELECT '1qwe#'  AS ID FROM DUAL UNION ALL   
    SELECT 'e*'     AS ID FROM DUAL UNION ALL   
    SELECT '@!'     AS ID FROM DUAL UNION ALL   
    SELECT '123'    AS ID FROM DUAL)
SELECT ID FROM BASE
 WHERE REGEXP_LIKE(ID, '^[^0-9]*$');
-- 문자로만 조합된 문자열

WITH BASE AS (
    SELECT 'aA11'   AS ID FROM DUAL UNION ALL   
    SELECT '1qw211e' AS ID FROM DUAL UNION ALL   
    SELECT '1qwe#'  AS ID FROM DUAL UNION ALL   
    SELECT 'e*'     AS ID FROM DUAL UNION ALL   
    SELECT '@!'     AS ID FROM DUAL UNION ALL   
    SELECT '123'    AS ID FROM DUAL)
SELECT ID FROM BASE
 WHERE REGEXP_LIKE(ID, '^[0-9]*$');
 -- 숫자로만 조합된 문자열 

WITH BASE AS (
    SELECT 'aA11'   AS ID FROM DUAL UNION ALL
    SELECT '1qw211e' AS ID FROM DUAL UNION ALL
    SELECT '1qwe#'  AS ID FROM DUAL UNION ALL
    SELECT 'e*'     AS ID FROM DUAL UNION ALL
    SELECT '@!'     AS ID FROM DUAL UNION ALL
    SELECT '123'    AS ID FROM DUAL UNION ALL
    SELECT 'aa최a'    AS ID FROM DUAL UNION ALL
    SELECT '유신'    AS ID FROM DUAL
)
SELECT ID
  FROM BASE
 WHERE REGEXP_LIKE(ID, '^[A-Za-z0-9]*$')

 --영문 대문자, 소문자, 숫자로만 조합된 문자열, REGEXP_LIKE(ID, ‘^[A-Za-z0-9]*$’)
WITH BASE AS (
    SELECT 'aA11'   AS ID FROM DUAL UNION ALL
    SELECT '1qw211e' AS ID FROM DUAL UNION ALL
    SELECT '1qwe#'  AS ID FROM DUAL UNION ALL
    SELECT 'e*'     AS ID FROM DUAL UNION ALL
    SELECT '@!'     AS ID FROM DUAL UNION ALL
    SELECT '123'    AS ID FROM DUAL UNION ALL
    SELECT 'aa최a'    AS ID FROM DUAL UNION ALL
    SELECT '유신'    AS ID FROM DUAL
)
SELECT ID
  FROM BASE
 WHERE REGEXP_LIKE(ID, '^[[:alpha:]]*$');

 -- 알파벳만 조합된 문자열


 WITH BASE AS (
    SELECT 'aA11'   AS ID FROM DUAL UNION ALL
    SELECT '1qw211e' AS ID FROM DUAL UNION ALL
    SELECT '1qwe#'  AS ID FROM DUAL UNION ALL
    SELECT 'e*'     AS ID FROM DUAL UNION ALL
    SELECT '@!'     AS ID FROM DUAL UNION ALL
    SELECT '123'    AS ID FROM DUAL UNION ALL
    SELECT 'aa최a'    AS ID FROM DUAL UNION ALL
    SELECT '유신'    AS ID FROM DUAL
)
SELECT ID
  FROM BASE
 WHERE REGEXP_LIKE(ID, '[[:punct:]]');

 -- 특수문자를 포함하는 문자열

 WITH BASE AS (
    SELECT 'aA11'   AS ID FROM DUAL UNION ALL
    SELECT '1qw211e' AS ID FROM DUAL UNION ALL
    SELECT '1qwe#'  AS ID FROM DUAL UNION ALL
    SELECT 'e*'     AS ID FROM DUAL UNION ALL
    SELECT '@!'     AS ID FROM DUAL UNION ALL
    SELECT '123'    AS ID FROM DUAL UNION ALL
    SELECT 'aa최a'    AS ID FROM DUAL UNION ALL
    SELECT '유신'    AS ID FROM DUAL
)
SELECT ID
  FROM BASE
 WHERE REGEXP_LIKE(ID, '^[[:punct:]]*$');

 -- 특수문자만 존재하는 문자열

 WITH BASE AS (
    SELECT 'aA11'   AS ID FROM DUAL UNION ALL
    SELECT '1qw211e' AS ID FROM DUAL UNION ALL
    SELECT '1qwe#'  AS ID FROM DUAL UNION ALL
    SELECT 'e*'     AS ID FROM DUAL UNION ALL
    SELECT '@!'     AS ID FROM DUAL UNION ALL
    SELECT '123'    AS ID FROM DUAL UNION ALL
    SELECT 'aa최a'    AS ID FROM DUAL UNION ALL
    SELECT '유신'    AS ID FROM DUAL
)
SELECT ID
  FROM BASE
 WHERE REGEXP_LIKE(id, '[가-힝]');

 -- 한글을 포함하는 문자열 