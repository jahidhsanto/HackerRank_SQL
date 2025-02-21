USE HackerRank_SQL;

select distinct city
from station
where ID % 2 = 0;