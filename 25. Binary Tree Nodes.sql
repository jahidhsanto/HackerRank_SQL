USE HackerRank_SQL;
SELECT 
    N, 
    CASE
        WHEN P IS NULL THEN 'Root'  -- Node is a root if it has no parent
        WHEN N NOT IN (SELECT DISTINCT P FROM BST WHERE P IS NOT NULL) THEN 'Leaf'  -- Node is a leaf if it has no children
        ELSE 'Inner'  -- Node is inner if it has a parent and children
    END AS NodeType
FROM BST
ORDER BY N;  -- Order by the value of the node
