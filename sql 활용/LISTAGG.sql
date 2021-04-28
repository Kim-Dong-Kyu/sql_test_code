SELECT LISTAGG(fruits, ',') WITHIN GROUP(ORDER BY fruits)
FROM (
         SELECT '사과' fruits
         FROM DUAL
         UNION ALL
         SELECT '포도' fruits
         FROM DUAL
         UNION ALL
         SELECT '바나나' fruits
         FROM DUAL
     )

---------출력결과 -----------------------/
 -- 바나나,사과,포도
 -- 특정 컬럼의 데이터만 다를경우 구분자를 통해 컬럼을 그룹으로 묶음