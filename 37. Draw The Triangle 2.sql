DECLARE @i INT = 1;
DECLARE @maxRows INT = 20;

WHILE @i <= @maxRows
BEGIN
    DECLARE @stars NVARCHAR(MAX) = REPLICATE('* ', @i);
    PRINT @stars;
    SET @i = @i + 1;
END
