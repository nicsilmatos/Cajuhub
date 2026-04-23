create table pedidos(
  id serial primary key,
  cliente_id integer references clientes(id),
  total double precision,
  desconto numeric(10,2),
  criado_em timestamp,
  status varchar(20) default 'pendente'
);

create table if not exists clientes(
  id serial primary key,
  nome varchar(100) not null,
  email varchar(100) unique not null
);

create table  if not exists pedidos(
  id serial primary key,
  cliente_id integer not null references clientes(id),
  total numeric(10,2),
  desconto numeric(10,2) check (desconto > 0 and desconto < 100),
  criado_em timestamptz default current_timestamp,
  status varchar(20) not null default 'pendente'
);