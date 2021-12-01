select item_category as CATEGORY,
sum( case when WEEKDAY(order_date) = 0 then quantity else 0 end) as MONDAY ,
sum( case when WEEKDAY(order_date) = 1 then quantity else 0 end) as TUESDAY,
sum( case when WEEKDAY(order_date) = 2 then quantity else 0 end) as WEDNESDAY,
sum( case when WEEKDAY(order_date) = 3 then quantity else 0 end) as THURSDAY,
sum( case when WEEKDAY(order_date) = 4 then quantity else 0 end) as FRIDAY ,
sum( case when WEEKDAY(order_date) = 5 then quantity else 0 end) as SATURDAY ,
sum( case when WEEKDAY(order_date) = 6 then quantity else 0 end) as SUNDAY
from items a
left join orders b on a.item_id = b.item_id
group by item_category
order by item_category
