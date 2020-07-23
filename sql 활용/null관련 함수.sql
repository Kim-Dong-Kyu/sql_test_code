SELECT NVL(NULL, 'NVL-OK') NVL_TEST FROM DUAL;
-- NVL 인수의 값이 NULL 인경우 두번째 인수를 반환한다 

SELECT COALESCE(@age, NULL, NULL, NULL, NULL, NULL, 10) AS age,
       COALESCE(@name, NULL, NULL, NULL, NULL, '홍길동') AS name;
-- COALESCE 안에 파라미터중 첫번쨰로  NULL 이 아닌 값을 ㅡ반환한다 우선순위는 왼쪽 

SELECT empno, NVL2(mgr, 1, 0) mgr
  FROM emp  
 WHERE deptno = 10;
 
 -- NVL2 NVL과 DECODE의 개념을 병합했다고 생각하면 된다 

  NULLIF(exp1, exp2)

-- exp1 과  exp2 의 값이 동일하면 NULL 아니면 exp1을 반환한다 





