select Name As Customers from Customers
left outer join Orders
on Customers.Id = Orders.CustomerId
where Orders.CustomerId IS NULL
