USE HackerRank_SQL;

select cast(round(sum(lat_n),2) as numeric(7,2)),
       cast(round(sum(long_w),2) as numeric(7,2))
from station;
