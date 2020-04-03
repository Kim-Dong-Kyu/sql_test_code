-- 점수가 75점 이상인 학생의 이름을 뽑는데 뒤에 세글자를  기준으로 오름차순으로 정렬하다 
--뒤에 3글자가 같을 경우에는 id를 가지고 오름차순으로 정렬한다.
SELECT NAME
FROM STUDENTS
WHERE MARKS>75
ORDER BY SUBSTR(NAME,-3), ID;

-- EMPLOYEE TABLE에서 NAME 만 뽑는데  이름순으로 오름차순 정렬
SELECT NAME
FROM   Employee
ORDER BY NAME;

-- 10개월이 안된 사원들 중엥서 월급이 2000$ 보다 큰 사원의 이름을 오름차순으로 정렬
SELECT NAME 
FROM EMPLOYEE
WHERE SALARY > 2000  AND MONTHS <10;

-- 삼각형 구분
SELECT
    CASE 
        WHEN (a=b) AND (a=c) THEN 'Equilateral'
        WHEN (2*GREATEST(a,b,c)) >= (a+b+c) THEN 'Not A Triangle'
        WHEN (a=b) OR (a=c) OR (b=c) THEN 'Isosceles'
        ELSE 'Scalene'
    END
FROM triangles;

--OCCUPATIONS 테이블내 이름과 OCCUPATION의 첫글자를 합친 것을 출력하고 
--There are a total of + occupation의 개수 를 출력하라 단 occupation의 개수를 오름차순으로 정렬 
--만약 동일한 조건이 존재한다면 occupation 이름을 오름차순으로 정렬
SELECT
 CONCAT(CONCAT(CONCAT(NAME,'('),SUBSTR(OCCUPATION,1,1)),')')
FROM OCCUPATIONS
ORDER BY NAME;
SELECT 
 'There are a total of '||COUNT(OCCUPATION)||' '||LOWER(OCCUPATION)||'s.'
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(OCCUPATION), OCCUPATION;
--mysql에서 || 는 지원 하지 않습니다 
SELECT 
 NAME||'('||SUBSTR(OCCUPATION,1,1)||')'
FROM OCCUPATIONS
ORDER BY NAME;
SELECT 
 'There are a total of '||COUNT(OCCUPATION)||' '||LOWER(OCCUPATION)||'s.'
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(OCCUPATION), OCCUPATION;

--무슨 코드인지 모름 공부 필요 
SET @r1=0, @r2=0, @r3 =0, @r4=0;
SELECT MIN(Doctor), MIN(Professor), MIN(Singer), MIN(Actor) FROM
(SELECT CASE Occupation WHEN 'Doctor' THEN @r1:=@r1+1
                       WHEN 'Professor' THEN @r2:=@r2+1
                       WHEN 'Singer' THEN @r3:=@r3+1
                       WHEN 'Actor' THEN @r4:=@r4+1 END
       AS RowLine,
       CASE WHEN Occupation = 'Doctor' THEN Name END AS Doctor,
       CASE WHEN Occupation = 'Professor' THEN Name END AS Professor,
       CASE WHEN Occupation = 'Singer' THEN Name END AS Singer,
       CASE WHEN Occupation = 'Actor' THEN Name END AS Actor
       FROM OCCUPATIONS ORDER BY Name) AS t
GROUP BY RowLine;



