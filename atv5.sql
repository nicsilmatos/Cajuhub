select
  count(*)
from
  customer
where
  state = 'SP';

select
  count(*)
from
  invoice_line
where
  unit_price <= 1
select
  count(*)
from
  track
where
  milliseconds between 200000 and 300000
select
  first_name,
  last_name,
  country
from
  customer
where
  country in ('Brazil', 'France')
select
  first_name,
  last_name
from
  customer
where
  first_name like '____'
select
  first_name,
  last_name,
  company
from
  customer
where
  company is not null
  -- Data: 27/04
  -- select sum(total) as total_faturado, billing_address from invoice, count(*) as total_de_faturas from invoice
select
  first_name as nome,
  last_name as sobrenome,
  country as pais
from
  customer
where
  country in ('Brazil', 'Canada', 'France')
order by
  sobrenome;

select
  total
from
  invoice
order by
  total desc;

select
  milliseconds,
  name
from
  track
where
  milliseconds between 864000 and 1296000
order by
  milliseconds asc;

select
  name,
  composer
from
  track
where
  composer is null
order by
  name asc;

select
  billing_country as pais_de_origem,
  sum(total) as faturamento_total,
  count(invoice_id) as total_faturas,
  round(avg(total)) as ticket_medio,
  max(total)
from
  invoice
where
  billing_country in ('France', 'Germany', 'Italy', 'Portugal')
group by
  pais_de_origem 
having
  sum(total) > 100 
order by faturamento_total desc;

select
  genre_id as genero,
  count(track_id) as total_de_faixas
from
  track
group by
  genero
having
  count(*)
order by
  genero