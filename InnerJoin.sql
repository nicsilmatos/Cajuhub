select * from album
inner join artist
on album.artist_id = artist.artist_id
limit 300

---

select * from track as t 
inner join album al 
on t.album_id = al.album_id

select 
  t.name as nome_da_musica,
  al.title as titulo_album,
  t.unit_price as preco_unitario,
  ar.name as nome_do_artista
from
  track t
  inner join album al 
  on t.album_id = al.album_id
  inner join artist ar 
  on ar.artist_id = al.artist_id
limit 5000
---
select 
 ar.artist_id as id,
 ar.name as nome_do_artista,
 count(t.track_id)
from
  track t
  inner join album al 
  on t.album_id = al.album_id
  inner join artist ar 
  on ar.artist_id = al.artist_id
group by
  id, nome_do_artista
---
select c.first_name, c.last_name
from custumer c
left join invoice i 
on c.custumer_id = i.custumer_id
where i.invoice_id is null;

---
select count(first_name, ' ', last_name) as nome_completo from customer