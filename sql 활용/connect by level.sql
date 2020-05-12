/*
connect by level은 레벨을 지정할 수 있습니다 
*/

select level lvl
from dual
connect by level < 13;
-- 12개의 row를 가진 테이블을 만들 수 있음

with month as
(
 select level lvl 
 connect by level < 13
)
이런식으로 with 절을 통해 해당 레블은 다른 테이블에서도 참조할 수 있다.