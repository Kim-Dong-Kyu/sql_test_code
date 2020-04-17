-- 인구수가 100000 이상인 도시의 개수 구하기
SELECT COUNT(*)
FROM CITY
WHERE POPULATION > 100000;

--캘리포니아 인구수의 합계
SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT ='California';

--캘리포니아 인구수의 평균 
SELECT AVG(POPULATIOn)
FROM CITY
WHERE DISTRICT ='California';

--평균 반올림
SELECT ROUND(AVG(POPULATION))
FROM CITY;


--일본의 인구수 합계 
SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE  ='JPN';

--최대 인구수와 최소 인구수의 차이
SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY;

--문제 해석이 너무 힘들다 0키가 고장나서 안썼다는 거 같은데 0인부분을 제거 하고 에러 오차를 구하는 함수 구현
SELECT 
CEIL(AVG(Salary)-AVG(REPLACE(Salary,'0','')))
FROM EMPLOYEES;


-- 월 *판매량의 중 가장 높은 사람과  총 행의 개수를 반환하는 쿼리
SELECT 
  MAX(SALARY*MONTHS),
  COUNT(*)
FROM EMPLOYEE
WHERE (SALARY*MONTHS) = (SELECT 
                         MAX(SALARY*MONTHS)
                         FROM EMPLOYEE);