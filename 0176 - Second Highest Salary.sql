select MAX(Salary) SecondHighestSalary from Employee 
where Salary < (select MAX(Salary) from Employee)
