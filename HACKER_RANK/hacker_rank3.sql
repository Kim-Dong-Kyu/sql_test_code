-- 점수가 75점 이상인 학생의 이름을 뽑는데 뒤에 세글자를  기준으로 오름차순으로 정렬하다 
--뒤에 3글자가 같을 경우에는 id를 가지고 오름차순으로 정렬한다.
SELECT NAME
FROM STUDENTS
WHERE MARKS>75
ORDER BY SUBSTR(NAME,-3), ID;