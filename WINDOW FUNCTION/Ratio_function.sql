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
             PERCENT_RANK() OVER(PARTITION BY JOB_ID ORDER BY SALARY DESC) 
 FROM EMPLOYEES e 