--Query all columns for all American cities in CITY with populations larger than 100000. The CountryCode for America is USA.
--테이블 구조가 주워지고 population이 1000000 보다 크고 countrycode가 usa인 칼럼 조회
SELECT *
FROM CITY
WHERE POPULATION >=100000 AND COUNTRYCODE ='USA';

