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