use HackerRank_SQL;

SELECT Name + '(' + LEFT(Occupation, 1) + ')' AS Result
FROM OCCUPATIONS
ORDER BY Name;

SELECT 'There are a total of ' + CAST(COUNT(*) AS VARCHAR) + ' ' + LOWER(Occupation) + 's.' AS Result
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(*), Occupation;
