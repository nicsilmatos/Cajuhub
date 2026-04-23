create table consultas(
  id integer,
  paciente varchar(100),
  medico varchar(100),
  data_consulta timestamp,
  valor real,
  status varchar(50)
);

create table if not exists cadastro(
  paciente serial primary key,
  nome varchar(100) not null,
  email varchar(100) unique not null,
  telefone numeric check (telefone > 0)
)

create table if not exists consultas(
  id_consulta serial primary key,
  paciente integer not null,
  medico varchar(100) not null,
  data_consulta timestamptz default current_timestamp,
  valor numeric(10,2) check (valor >= 0),
  status varchar(50) default 'ativo',

  constraint fk_paciente,
  foreign key (paciente)
  references pacientes(paciente)

);
