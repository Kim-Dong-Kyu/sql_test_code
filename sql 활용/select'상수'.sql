--select 쿼리를 수행할 때 해당하는 조건에대해 데이터가 존재하면 입력한 상수를 표시하는 문장을 작성할 수 있다

select 'x'
FROM  EMPLOYEES e 
WHERE DEPARTMENT_ID =90;

-- 조건에 맞는 내용이 있으면 x를 표시한다