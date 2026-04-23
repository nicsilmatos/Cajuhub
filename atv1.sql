create table if not exists autores(
  id serial primary key,
  nome varchar(100) not null
);

create table if not exists livros (
  id serial primary key,
  titulo varchar(150) not null,
  preco numeric (10,2) not null,
  autor_id integer references autores(id) on delete restrict
);

alter table livros add constraint chk_preco check (preco > 0);
