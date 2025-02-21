USE HackerRank_SQL;

select distinct city
from station
where city like '%[aeiou]';
