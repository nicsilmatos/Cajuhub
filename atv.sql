create table if not exists client (
  id serial primary key,
  name varchar(100),
  email varchar(100),
  status varchar(20), default 'ativo',
  limite numeric (10,2) check (limite >= 0),
  criado_em timestamp default now()
)