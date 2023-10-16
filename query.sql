 --create database aula_modelagem;
create table
  editoras (
    id serial primary key,
    nome text not null,
    cnpj text unique,
    data_cadastro timestamp default now()
  );

insert into
  editoras (nome, cnpj)
values
  ('cubos academy', '00112233445566');

create table
  livros (
    isbn integer primary key,
    editora_id integer references editoras (id),
    titulo text not null,
    data_publicacao date not null
  );

insert into
  livros (isbn, editora_id, titulo, data_publicacao)
values
  (12345, 1, 'Backend com node.js', '2023-10-14');

create table
  enderecos (
    id serial primary key,
    editora_id integer references editoras (id),
    cep text not null,
    rua text,
    bairro text,
    cidade text,
    estado char(2),
    pais text
  );

insert into
  enderecos (
    editora_id,
    cep,
    rua,
    bairro,
    cidade,
    estado,
    pais
  )
values
  (
    1,
    88.888 -888,
    'Napolitano nº3',
    'Sorvete',
    'gelateria do sul',
    'SC',
    'Brasil'
  );

create table
  categorias (id serial primary key, nome text not null);

create table
  livro_categoria (
    livro_isbn integer references livros (isbn),
    categoria_id integer references categorias (id)
  );

insert into
  categorias (nome)
values
  ('Tecnologia'),
  ('Programação'),
  ('Node.js');

insert into
  livros (isbn, editora_id, titulo, data_publicacao)
values
  (123456, 1, 'Node.js acançado', '2023-10-14');

insert into
  livro_categoria (livro_isbn, categoria_id)
values
  (12345, 1),
  (12345, 2),
  (12345, 3),
  (123456, 2),
  (123456, 3);

create table
  comentarios (
    id serial primary key,
    descricao text not null,
    comentario_id integer references comentarios (id),
    livro_isbn integer references livros (isbn)
  );

insert into
  comentarios (descricao, livro_isbn)
values
  ('livro muito bom', 12345);

insert into
  comentarios (comentario_id, descricao)
values
  (1, 'obrigado pelo elogio');

alter table
  categorias
add column
  descricao text;

alter table
  categorias
drop column
  descricao;

alter table
  categorias
alter column
  descricao
type
  varchar(100);