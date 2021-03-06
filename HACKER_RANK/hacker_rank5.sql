-- where 절 equi join  문제
SELECT SUM(CITY.POPULATION) 
FROM CITY, COUNTRY
WHERE CITY.COUNTRYCODE = COUNTRY.CODE AND COUNTRY.CONTINENT = 'Asia';

SELECT A.Name
FROM CITY A, COUNTRY B
WHERE B.Code = A.CountryCode
AND B.Continent = 'Africa';

-- where 절 equi join 문제
SELECT COUNTRY.CONTINENT, FLOOR(AVG(CITY.POPULATION))
FROM CITY , COUNTRY 
WHERE COUNTRY.CODE = CITY.COUNTRYCODE
GROUP BY COUNTRY.CONTINENT;


-- form 절 inner join과 가상칼럼 을 사용한 문제 
SELECT
  CASE
    WHEN G.GRADE < 8 THEN NULL
    ELSE S.NAME
  END,
  G.GRADE,
  S.MARKS
FROM STUDENTS S INNER JOIN GRADES  G
ON S.MARKS >= G.MIN_MARK AND S.MARKS <= G.MAX_MARK
ORDER BY G.GRADE DESC, S.NAME ASC; 

--  inner join과  그룹 함수 문제
SELECT H.HACKER_ID, H.NAME
FROM HACKERS H
INNER JOIN SUBMISSIONS S
ON H.HACKER_ID = S.HACKER_ID
INNER JOIN CHALLENGES C
ON S.CHALLENGE_ID = C.CHALLENGE_ID
INNER JOIN DIFFICULTY D
ON C.DIFFICULTY_LEVEL = D.DIFFICULTY_LEVEL
WHERE S.SCORE = D.SCORE AND C.DIFFICULTY_LEVEL = D.DIFFICULTY_LEVEL
GROUP BY H.HACKER_ID, H.NAME
HAVING COUNT(S.HACKER_ID) > 1
ORDER BY COUNT(S.HACKER_ID) DESC, S.HACKER_ID ASC;











