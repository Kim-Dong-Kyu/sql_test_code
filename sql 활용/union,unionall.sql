/*
   UNION : 합집함과 같은 개념이며 중복을 제거한 ROW 를 호출한다 
   UNION ALL : UNION 과 같은 정의이지만 중복을 모두 표시한다 
   --조건 
   1. 합칠 SQL문들은 같은 수의 컬럼을 가져야 한다 (컬럼명이 동일 하지 않다면 WITH 사용)      
   2. 각 컬럼은 같은 데이터 타입 이여야 한다
   3. SELECT 문의 열 순서는 동일한 순서로 이루어져야 한다.
*/

SELECT DEPARTMENT_ID
FROM DEPARTMENTS d 
WHERE DEPARTMENT_NAME  IN('IT','Public Relations','Sales','Executive','Finance')
UNION 
SELECT DEPARTMENT_ID 
FROM EMPLOYEES e 
WHERE DEPARTMENT_ID  < 100


SELECT DEPARTMENT_ID
FROM DEPARTMENTS d 
WHERE DEPARTMENT_NAME  IN('IT','Public Relations','Sales','Executive','Finance')
UNION ALL
SELECT DEPARTMENT_ID 
FROM EMPLOYEES e 
WHERE DEPARTMENT_ID  < 100