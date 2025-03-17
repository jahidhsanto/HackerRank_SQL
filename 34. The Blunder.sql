use HackerRank_SQL;

with actual as (
select AVG(cast(salary as float)) as actual
from employees
),
miscalculated as(
select avg(cast(REPLACE(salary, 0, '') as float)) as miscalculated
from Employees
)

select CAST(ceiling(actual.actual-miscalculated.miscalculated) as int)
from actual, miscalculated;


