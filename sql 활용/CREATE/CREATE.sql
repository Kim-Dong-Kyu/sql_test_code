-- x테이블 복사하기
CREATE TABLE 신규테이블명 AS SELECT * FROM 복사할테이블명 [WHERE]

--테이블 구조만 복사하기

CREATE TABLE 신규테이블명 AS SELECT * FROM 복사할테이블명 WHERE 1=2

--테이블이 존재할경우, 데이터만 복사하기(구조가 같은경우)

INSERT INTO 복사대상테이블명 SELECT * FROM 원본테이블명 [WHERE]

--테이블이 존재할경우, 데이터만 복사하기(구조가 다를경우)

INSERT INTO 복사대상테이블명 (COL1, COL2) SELECT COL1, COL2 FROM 원본테이블명 [WHERE]

 