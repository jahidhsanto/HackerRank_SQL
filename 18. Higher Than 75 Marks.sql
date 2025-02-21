USE HackerRank_SQL;

select name
from STUDENTS
where marks > 75
order by RIGHT(name, 3), ID;