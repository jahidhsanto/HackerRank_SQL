use HackerRank_SQL;

create table CITY
(
	ID int not null,
	NAME varchar(17),
	COUNTRYCODE varchar(3),
	DISTRICT varchar(20),
	POPULATION int,
	primary key (ID)
)

select *
from CITY
where countrycode = 'USA';