select customer_id, total
from invoice
where total > (
  select avg(total)
  from invoice
);

select track_id, name
from track
where track_id not in(
  select distinct track_id
  from invoice_line
);

select avg(total_por_cliente)
from (
  select customer_id, sum(total) as total_por_cliente
  from invoice 
  group by invoice.customer_id
) as totais;

with total as (
  select customer_id, sum(total) as total_gasto
  from invoice 
  group by customer_id
)
select c.first_name, ' ', c.last_name, t.total_gasto
from total t 
inner join customer c on c.customer_id = t.customer_id;