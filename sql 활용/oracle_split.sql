SELECT distinct regexp_substr(A.TXT, '[^|]+', 1, LEVEL) TXT
   FROM (SELECT 'A|B|C|D' TXT FROM dual) A
CONNECT BY LEVEL <= length(regexp_replace(A.TXT, '[^|]+',''))+1
;


 --Oracle 8i 이상에서
 SELECT substr(A.TXT,
              instr(A.TXT, '|', 1, LEVEL) + 1,
              instr(A.TXT, '|', 1, LEVEL + 1) - instr(A.TXT, '|', 1, LEVEL) - 1) TXT
   FROM (SELECT '|' || 'A|B|C|D' || '|' TXT FROM dual) A
CONNECT BY LEVEL <= length(A.TXT) - length(REPLACE(A.TXT, '|')) - 1