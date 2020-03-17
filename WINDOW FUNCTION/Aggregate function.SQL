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

