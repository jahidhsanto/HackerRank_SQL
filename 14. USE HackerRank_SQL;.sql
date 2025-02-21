USE HackerRank_SQL;

select distinct city
from station
where city not like '[aeiou]%';
