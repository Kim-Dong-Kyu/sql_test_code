drop table dept5;
       create table dept5
       as select * from dept;

       alter table dept5
       add constraint dept5_pk primary key (deptno);

       ------------------------------------------------
       drop table emp5;
       create table emp5
       (
          empno   number(4),
          ename   varchar2(15),
          sal     number(7,2),
          deptno  number(2)  constraint emp5_fk references dept5(deptno) on delete cascade
       );


       insert into emp5 (empno,ename,sal,deptno)
       select empno,ename,sal,deptno from emp;                

       ## 부모 테이블의 10번 부서 삭제 ##
       select count(*) from emp5;        ---> 14명 사원           
       delete from dept5 where deptno=10;   ---> 1행(10번부서) 삭제

       select count(*) from emp5;        ---> 11명 사원 (10번부서의 사원들도 함께 삭제 되었음)   

     테스트2)
       alter table emp5
       drop constraint emp5_fk;

       drop table dept5;
       create table dept5
       as select * from dept;

       alter table dept5
       add constraint dept5_pk primary key (deptno);

       ------------------------------------------------
       drop table emp5;
       create table emp5
       (
          empno   number(4),
          ename   varchar2(15),
          sal     number(7,2),
          deptno  number(2)  constraint  emp5_fk references dept5(deptno) on delete set null
       );  

       insert into emp5 (empno,ename,sal,deptno)
       select empno,ename,sal,deptno from emp;                

       ## 부모 테이블의 10번 부서 삭제 ##
       select count(*) from emp5;        ---> 14명 사원           
       delete from dept5 where deptno=10;   ---> 1행(10번부서) 삭제

       select count(*) from emp5;   ---> 14명 사원 (10번부서의 사원들의 deptno가 null로 변경됨)

    SQL> select empno, ename, sal, deptno
         from emp5
         where deptno is null;

         EMPNO ENAME                                 SAL     DEPTNO
    ---------- ------------------------------ ---------- ----------
          7782 CLARK                                2450
          7839 KING                                 5000
          7934 MILLER                               1300