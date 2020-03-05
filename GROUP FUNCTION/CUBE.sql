SELECT 
CASE GROUPING(emp_no) WHEN 1 THEN '선택된 모든 emp' ELSE emp_no END AS "사원 번호",
COUNT(*) AS "판매 빈도",
SUM(salary) AS"특정emp의 매출 합계"
FROM salaries
WHERE emp_no=43624 OR emp_no= 254466 OR emp_no =47978
GROUP BY emp_no