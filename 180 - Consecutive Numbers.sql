select distinct(a.num) as ConsecutiveNums from Logs a
inner join Logs b on a.id = b.id + 1
inner join Logs c on a.id = c.id + 2
where a.num = b.num
and b.num = c.num
