DECLARE @i INT = 20;

WHILE @i >= 1
BEGIN
    DECLARE @stars NVARCHAR(MAX) = REPLICATE('* ', @i);
    PRINT @stars;
    SET @i = @i - 1;
END
