--Query all columns for all American cities in CITY with populations larger than 100000. The CountryCode for America is USA.
--테이블 구조가 주워지고 population이 1000000 보다 크고 countrycode가 usa인 칼럼 조회
SELECT *
FROM CITY
WHERE POPULATION >=100000 AND COUNTRYCODE ='USA';

SELECT *
FROM CITY

SELECT *
FROM CITY
WHERE ID= 1661;

SELECT *
FROM CITY
WHERE COUNTRYCODE ='JPN';

SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN';

--STATION 테이블에서 조건에 맞게 SELECT 문 날리기
SELECT CITY ,STATE
FROM STATION;

-- CITY 이름을 출력하는데 CITY ID 만 사용해서 (중복제거 옵션)
SELECT DISTINCT CITY
FROM STATION
WHERE MOD(ID, 2) = 0;

