USE HackerRank_SQL;

select distinct city
from station
where city like '[aeiou]%' and city like '%[aeiou]';

----------------------------------------

select distinct city
from station
where 
	left(city, 1) like '[aeiou]'
	and 
	right(city, 1) like '[aeiou]';

----------------------------------------

select distinct CITY
from station 
where 
	left(city, 1) in('a', 'e', 'i', 'o', 'u')
	and
	RIGHT(city, 1) in('a', 'e', 'i', 'o', 'u');
