SELECT 
DEPT_NAME,
DEP_CD,
PARENT_CD,
LEVEL
FROM "Hierarchical Query_Table2"
START WITH PARENT_CD IS NULL 
CONNECT BY PRIOR DEP_CD= PARENT_CD
ORDER SIBLINGS BY DEP_CD DESC; -- 형재 노드간에 정렬을 해준다

