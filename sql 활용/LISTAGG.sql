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

---------출력결과 -----------------------
 -- 바나나,사과,포도