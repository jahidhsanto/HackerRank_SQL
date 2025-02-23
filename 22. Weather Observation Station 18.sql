USE HackerRank_SQL;


select 
    cast (
        round(
            abs((select min(lat_n) from station) - (select max(lat_n) from station))
            +
            abs((select min(long_w) from station) - (select max(long_w) from station)),
            4
        ) as DECIMAL(10, 4)) AS ManhattanDistance;
