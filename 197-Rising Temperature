select A.id from Weather AS A
join Weather AS B
on DATEDIFF(A.recordDate, B.recordDate) = 1 and A.temperature > B.temperature
