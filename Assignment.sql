#  order count with total quantity and total amount selling based on Categories
SELECT productid,count(1) as orders_count,sum(quantity) as total_qty,(unitprice*quantity) as total_amt
FROM 'Order Details' where productid in (
SELECT productid FROM Products where categoryid in 
(SELECT categoryid FROM Categories) 
) group by productid
