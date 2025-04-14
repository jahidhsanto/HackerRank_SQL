with MaxSubEachDay as (
    select submission_date,
           hacker_id,
           RANK() OVER(partition by submission_date order by SubCount desc, hacker_id) as Rn
    FROM
    (select submission_date, hacker_id, count(1) as SubCount 
     from submissions
     group by submission_date, hacker_id
     ) subQuery
), DayWiseRank as (
    select submission_date,
           hacker_id,
           DENSE_RANK() OVER(order by submission_date) as dayRn
    from submissions
), HackerCntTillDate as (
select outtr.submission_date,
       outtr.hacker_id,
       case when outtr.submission_date='2016-03-01' then 1
            else 1+(select count(distinct a.submission_date)
			from submissions a where a.hacker_id = outtr.hacker_id and
				 a.submission_date<outtr.submission_date)
        end as PrevCnt,
        outtr.dayRn
from DayWiseRank outtr
), HackerSubEachDay as (
    select submission_date,
    count(distinct hacker_id) HackerCnt
from HackerCntTillDate
  where PrevCnt = dayRn
group by submission_date
)
select HackerSubEachDay.submission_date,
       HackerSubEachDay.HackerCnt,
       MaxSubEachDay.hacker_id,
       Hackers.name
from HackerSubEachDay
inner join MaxSubEachDay
 on HackerSubEachDay.submission_date = MaxSubEachDay.submission_date
inner join Hackers
 on Hackers.hacker_id = MaxSubEachDay.hacker_id
where MaxSubEachDay.Rn=1