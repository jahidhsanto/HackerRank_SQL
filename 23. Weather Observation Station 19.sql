use HackerRank_SQL;

select cast( 
    SQRT(
        power((min(LAT_N)-MAX(LAT_N)), 2) + power((min(LONG_W)-MAX(LONG_W)), 2)
    ) as decimal(10, 4))
from STATION;