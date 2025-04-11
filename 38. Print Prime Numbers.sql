DECLARE @n INT = 1000;
DECLARE @x INT = 2;
DECLARE @z INT;
DECLARE @temp TABLE (A INT)

WHILE (@x <= @n)
BEGIN
    INSERT INTO @temp
    SELECT @x

    SET @z = 2

    WHILE (@z < @x)
    BEGIN
        IF (@x % @z <> 0)
        BEGIN
            SET @z = @z + 1
        END
        ELSE
        BEGIN
            DELETE
            FROM @temp
            WHERE A = @x

            BREAK
        END
    END

    SET @x = @x + 1
END;

SELECT STRING_AGG(A, '&')
FROM @temp
