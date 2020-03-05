SELECT emp_no, SUM(salary) AS "43624의 매출 합계"
FROM salaries 
WHERE emp_no=43624 OR emp_no= 254466 OR emp_no =47978
GROUP BY emp_no WITH ROLLUP 

