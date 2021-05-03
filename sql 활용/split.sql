 SELECT distinct regexp_substr(A.TXT, '[^|]+', 1, LEVEL) TXT
   FROM (SELECT 'A|B|C|D' TXT FROM dual) A
CONNECT BY LEVEL <= length(regexp_replace(A.TXT, '[^|]+',''))+1;

/*oracle split - 구분자를 통해 일반 Text구분*/
