SELECT * FROM employees WHERE email LIKE 'ze%';
 -- ze 로 시작하는 이메일을 조회
SELECT * FROM employees WHERE email LIKE '%com';
 -- com으로 끝나는 이메일을 조회
SELECT * FROM employees WHERE first_name LIKE '%재%'
-- '재' 글자 앞뒤로 어떤것이 와도 상관없는  이름을 조회
SELECT * FROM employees WHERE first_name  NOT LIKE '%재%'
-- '재' 라는 글자가 first_name 컬럼에 없는 경우를 모두 출력 