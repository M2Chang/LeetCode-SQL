CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
SET N = N -1;
  RETURN (
select 
(select distinct(Salary) from Employee
order by Salary Desc
limit 1 OFFSET N) as SecondHighestSalary
      
  );
END
