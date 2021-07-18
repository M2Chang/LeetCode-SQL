select A.name as Employee from employee AS A
inner join employee as B
on A.ManagerID = B.ID
where A.Salary > B.Salary
