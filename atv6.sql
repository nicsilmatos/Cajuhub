select
  genre_id as genero,
  round(avg(milliseconds) / 60000, 2) as duracao_media_minutos
from
  track
group by
  genero
having
  round(avg(milliseconds) / 60000, 2) > 4
order by
  duracao_media_minutos desc;

----

select
  count(track_id) as total_faixas,
  genre_id as genero
from
  track
group by
  genre_id,
  media_type_id
having
  count(track_id) > 50 
order by
  total_faixas desc; 

----

select
  sum(total) as faturamento_total,
  count(invoice_id) as total_faturas,
  round(avg(total)) as ticket_medio,
  max(total)
from
  invoice
group by
  invoice.customer_id
having
  round(avg(total))> 5
order by
  faturamento_total desc;