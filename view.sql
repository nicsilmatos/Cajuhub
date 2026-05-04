-- Criando view
create view v_sales_by_customer as 
select 
  customer_id,
  sum(total) as total_spend,
  count(invoice_id) as total_purchases
from invoice 
group by customer_id;

select * from v_sales_by_customer;

-- Removendo a view de forma segura
drop view if exists v_sales_by_customer;

-- Editando view 
create or replace view v_sales_by_customer as 
select 
  customer_id,
  sum(total) as total_spend,
  count(invoice_id) as total_purchases,
  max(invoice_date) as last_purchase_date --Nova coluna
from invoice 
group by customer_id;