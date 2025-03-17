use HackerRank_SQL;

SELECT
CAST(CEILING(AVG(CAST(salary AS float)) -
AVG(CAST(REPLACE(salary, 0, '') AS float))) AS int)
FROM employees