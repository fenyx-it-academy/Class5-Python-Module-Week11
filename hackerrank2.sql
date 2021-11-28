select ci.city_name,p.product_name,round(ii.price*ii.quantity,2) from 
city ci, product p,invoice_item ii,invoice i,customer cu 
where ci.id=cu.city_id and i.customer_id=cu.id 
and i.id=ii.invoice_id and ii.product_id=p.id
order by ii.price*ii.quantity DESC, ci.city_name ASC, p.product_name ASC


select c.customer_name,round(i.total_price,6)
from customer c, invoice i 
where c.id=i.customer_id 
and i.total_price<(select AVG(total_price)/4 from invoice)
order by i.total_price DESC
