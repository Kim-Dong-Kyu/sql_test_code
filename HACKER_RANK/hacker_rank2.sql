-- city 중 글자열의 길이가 가장 짧은 것과 가장 긴 것을 순서대로 표시하는데,
-- 단 두개 이상일 경우 하나만 알파벳 순으로 하나만 출력

SELECT CITY, LENGTH(CITY) 
FROM STATION 
ORDER BY LENGTH(CITY), CITY LIMIT 1;

SELECT CITY, LENGTH(CITY) 
FROM STATION 
ORDER BY LENGTH(CITY) DESC, CITY LIMIT 1;


--CITY 이름을 출력하는데 첫 글자가 a, e, i , o, u 로 시작하는 이름만 출력, 단 중복 제거
SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(SUBSTR(CITY,1,1)) IN ('a', 'e', 'i', 'o', 'u')
ORDER BY CITY ASC;

--CITY 이름을 출력하는데 마지막 글자가 a, e, i , o, u 로 끝나는 이름만 출력, 단 중복 제거
SELECT DISTINCT CITY
FROM STATION 
WHERE SUBSTR(CITY,-1) IN ('a', 'e', 'i', 'o', 'u')
ORDER BY CITY ASC;

--CITY 이름을 출력하는데 마지막 글자와 처음 글자가 a, e, i , o, u  중 하나인 것 출력 
SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(SUBSTR(CITY,1,1)) IN ('a', 'e', 'i', 'o', 'u')
 AND SUBSTR(CITY,-1) IN ('a', 'e', 'i', 'o', 'u')
ORDER BY CITY ASC;