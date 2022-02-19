select name as results
from (
select mr.user_id, name, count(rating) from movierating mr
inner join Users u 
on mr.user_id = u.user_id
group by user_id
order by count(rating) desc, name
limit 1
) a


union 

select title as results
from (
select m.movie_id, title, avg(rating) from movierating mr
inner join movies m
on mr.movie_id = m.movie_id
where month(created_at) = 2
group by m.movie_id
order by avg(rating) desc , title 
limit 1
) b
