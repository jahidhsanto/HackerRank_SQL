WITH interviews
AS (
 SELECT con.contest_id AS contest_id
  ,con.hacker_id AS hacker_id
  ,con.name AS name
  ,ISNULL(ss.total_submissions, 0) total_submissions
  ,ISNULL(ss.total_accepted_submissions, 0) total_accepted_submissions
  ,ISNULL(vs.total_views, 0) total_views
  ,ISNULL(vs.total_unique_views, 0) total_unique_views
 FROM contests con
 JOIN colleges col ON con.contest_id = col.contest_id
 JOIN challenges cha ON col.college_id = cha.college_id
 LEFT JOIN (
  SELECT challenge_id
   ,sum(total_views) AS total_views
   ,sum(total_unique_views) AS total_unique_views
  FROM view_stats
  GROUP BY challenge_id
  ) vs ON cha.challenge_id = vs.challenge_id
 LEFT JOIN (
  SELECT challenge_id
   ,sum(total_submissions) AS total_submissions
   ,sum(total_accepted_submissions) AS total_accepted_submissions
  FROM submission_stats
  GROUP BY challenge_id
  ) ss ON cha.challenge_id = ss.challenge_id
 )
SELECT contest_id
 ,hacker_id
 ,name
 ,sum(total_submissions)
 ,sum(total_accepted_submissions)
 ,sum(total_views)
 ,sum(total_unique_views)
FROM interviews
GROUP BY contest_id
 ,hacker_id
 ,name
HAVING sum(total_submissions) + sum(total_accepted_submissions) + 
sum(total_views) + sum(total_unique_views) > 0
ORDER BY contest_id;