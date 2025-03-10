use HackerRank_SQL;

SELECT Doctor, Professor, Singer, Actor
FROM(
	SELECT Name, Occupation, ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name) as row_number
	FROM Occupations
) AS SourceTable
PIVOT (
	MAX(Name) FOR Occupation IN ([Doctor], [Professor], [Singer], [Actor])
) AS PivotTable
ORDER BY row_number;
