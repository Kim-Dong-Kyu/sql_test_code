--dummy table 이라고 한다 
/*
   1. 오라클 자체에서 제공되는 테이블 
   2. 간단하게 함수를 이용하여 계산 결과값을 확인 할 떄 사용하는 테이블 
   3. sys 사용자가 소유하는 오라클의 표준 테이블
   4. sys 사용자가 소유하지만 어느 사용자에서 접근 가능함
*/

select 1+2+3 
from dual;

select sysdate "현재 날짜"
from dual;