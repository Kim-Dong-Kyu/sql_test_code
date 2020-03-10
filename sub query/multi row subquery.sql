SELECT * 
FROM EMPLOYEES  
WHERE MANAGER_ID =(SELECT MANAGER_ID
                   FROM DEPARTMENTS 
                   WHERE MANAGER_ID = 114)
                   