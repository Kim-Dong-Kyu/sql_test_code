SELECT  EMPLOYEE_ID,
             FIRST_NAME,
             LAST_NAME,
             JOB_ID,
             SALARY,
             RANK() OVER (ORDER BY SALARY DESC),            
             DENSE_RANK() OVER (ORDER BY SALARY DESC)
FROM EMPLOYEES

