SELECT  EMPLOYEE_ID,
             FIRST_NAME,
             LAST_NAME,
             JOB_ID,
             SALARY,
             RANK() OVER (ORDER BY SALARY DESC),            
             DENSE_RANK() OVER (ORDER BY SALARY DESC)
FROM EMPLOYEES

SELECT  EMPLOYEE_ID,
             FIRST_NAME,
             LAST_NAME,
             JOB_ID,
             SALARY,
             RANK() OVER (ORDER BY SALARY DESC),            
             DENSE_RANK() OVER (ORDER BY SALARY DESC),
             ROW_NUMBER () OVER (ORDER BY SALARY DESC)
FROM EMPLOYEES;

SELECT  EMPLOYEE_ID,
             FIRST_NAME,
             LAST_NAME,
             JOB_ID,
             SALARY,
             SUM(SALARY) OVER (PARTITION BY JOB_ID)
 FROM EMPLOYEES;


SELECT  EMPLOYEE_ID,
             FIRST_NAME,
             LAST_NAME,
             JOB_ID,
             SALARY,
             AVG(SALARY) OVER (PARTITION BY JOB_ID)
 FROM EMPLOYEES;


SELECT  EMPLOYEE_ID,
             FIRST_NAME,
             LAST_NAME,
             JOB_ID,
             SALARY,
             COUNT(*) OVER(ORDER BY SALARY
             RANGE BETWEEN 50 PRECEDING AND 150 FOLLOWING) 
             AS "-50~150 수"
 FROM EMPLOYEES e 
 
 
 SELECT  EMPLOYEE_ID,
             FIRST_NAME,
             LAST_NAME,
             JOB_ID,
             SALARY,
             ROUND(RATIO_TO_REPORT(SALARY) OVER(),2)  AS "판매량 비율"
 FROM EMPLOYEES e 
 WHERE JOB_ID ='IT_PROG'

  SELECT  EMPLOYEE_ID,
             FIRST_NAME,
             LAST_NAME,
             JOB_ID,
             SALARY,
             CUME_DIST() OVER (PARTITION BY  JOB_ID ORDER  BY SALARY  DESC) 
 FROM EMPLOYEES e 
 
 
 SELECT  EMPLOYEE_ID,
             FIRST_NAME,
             LAST_NAME,
             JOB_ID,
             SALARY,
             CUME_DIST() OVER (PARTITION BY  JOB_ID ORDER  BY SALARY  DESC) 
 FROM EMPLOYEES e 
 
  SELECT  EMPLOYEE_ID,
             FIRST_NAME,
             LAST_NAME,
             JOB_ID,
             SALARY,        
             NTILE(4) OVER (ORDER BY SALARY DESC) AS "4분할 파티션"
 FROM EMPLOYEES e 
 
 SELECT  EMPLOYEE_ID,
             FIRST_NAME,
             LAST_NAME,
             JOB_ID,
             SALARY,
             PERCENT_RANK() OVER(PARTITION BY JOB_ID ORDER BY SALARY DESC) 
 FROM EMPLOYEES e 
     