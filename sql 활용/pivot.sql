WITH TEMP AS (
   SELECT DEPTNO, SAL
    FROM EMP
)
SELECT *
  FROM TEMP
 PIVOT(
        SUM(SAL) -- pivot 절 그루핑을 해줄 컬럼을 지정
        FOR DEPTNO  -- pivot for 절 : 피봇의 기준이 되는 컬럼 을 정의한다 
        IN (10, 20, 30) -- pivot in 절 : for 절에서 정의될 컬럼 내용을 필터링 한다 
      );

