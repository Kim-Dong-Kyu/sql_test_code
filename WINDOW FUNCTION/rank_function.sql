SELECT  EMPLOYEE_ID,
             FIRST_NAME,
             LAST_NAME,
             JOB_ID,
             SALARY,
             RANK() OVER (ORDER BY SALARY DESC),
             RANK() OVER(PARTITION BY JOB_ID ORDER BY SALARY DESC)
FROM EMPLOYEES;

 
 