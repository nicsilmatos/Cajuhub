create table if not exists artistas_caju(
  id_artista serial primary key,
  nome_artista varchar(100) unique not null,
  pais_origem varchar (50),
  data_cadastro timestamptz default current_timestamp
);

create table if not exists albuns_caju(
  id_album serial primary key,
  titulo varchar(100) not null,
  ano numeric (4,0) not null check (ano > 1850),
  preco numeric(10,2) check (preco > 0),
  id_artista integer not null references artistas_caju(id_artista)

);

create table if not exists faixas_caju(
  id_faixa serial primary key,
  nome_faixa varchar(100) not null,
  segundos numeric not null check (segundos > 0),
  id_album integer not null references albuns_caju(id_album)

);
