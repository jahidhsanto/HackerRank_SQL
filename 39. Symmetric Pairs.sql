WITH CTE AS (
    SELECT
        X,
        Y,
        ROW_NUMBER() OVER(ORDER BY X) [rn]
    FROM Functions
)
SELECT DISTINCT
    f1.X,
    f1.Y
FROM CTE f1 JOIN CTE f2 ON f1.X = f2.Y AND f1.Y = f2.X
WHERE f1.X <= f1.Y
    AND f1.rn != f2.rn
ORDER BY f1.X
