WITH temp AS (
  SELECT 'M' gender FROM dual UNION ALL
  SELECT 'F' gender FROM dual UNION ALL
  SELECT 'X' gender FROM dual 
)

SELECT gender
     , DECODE(gender, 'M', '남자', 'F', '여자', '기타') gender2
  FROM temp