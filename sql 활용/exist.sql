/*
  where 절에서 in 과 exist의 사용법은 유사하다
  1. in wehre 절에서 특정 값에 내용이 in 안에 있을 경우 조건을 만족한다 
  2. exist in 과 같은 내용이지만 서브쿼리만 들어올 수 있다 

   -> exist 와 같은 경우는 서브쿼리만 가능하지만 실행 결과를 분석해 봤을 때 더 접근이 빠른 것을 확인 할 수 있다고 한다 

*/

SELECT DEPARTMENT_NAME 
FROM DEPARTMENTS d
WHERE DEPARTMENT_ID  IN(70,80,90,100)

SELECT DEPARTMENT_NAME 
FROM DEPARTMENTS d 
WHERE   EXISTS (
			     SELECT DEPARTMENT_ID 
				 FROM   DEPARTMENTS d2 
			     WHERE  DEPARTMENT_ID = 70 OR 
						DEPARTMENT_ID = 80 OR
						DEPARTMENT_ID = 90 OR
						DEPARTMENT_ID = 100 
)