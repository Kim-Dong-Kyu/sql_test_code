SELECT 
DEPT_NAME,
DEP_CD,
PARENT_CD,
LEVEL
FROM "Hierarchical Query_Table2"
START WITH PARENT_CD IS NULL 
CONNECT BY PRIOR DEP_CD= PARENT_CD