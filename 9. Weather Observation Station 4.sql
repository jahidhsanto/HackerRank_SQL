USE HackerRank_SQL;

select (COUNT (city)) - count(distinct city)
from station;