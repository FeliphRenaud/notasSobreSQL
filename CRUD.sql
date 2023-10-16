-- CRUD-- 

-- C = Create

CREATE TABLE produtos;

-- R = Read 

SELECT * FROM produtos;

SELECT NOME FROM produtos;

SELECT nome as NomeProduto from produtos;

-- U = Update 
insert into
  produtos (nome, descricao, preco, categoria)
values
  ('camisa', null, 4990, 'roupas');

insert into
  produtos (nome, descricao, preco, categoria)
values
  ('camisa', null, 4990, 'roupa'),
  ('calça', null, 11990, 'roupa'),
  ('bermuda', null, 8990, 'roupa');

insert into
  produtos (nome, descricao, preco, categoria)
values
  ('Caderno', null, 1590, 'material escolar');

select
  *
from
  produtos;

update
  produtos
set
  descricao = 'Caderno 10 materias'
where
  id = 5;
  
  -- D = Delete
  
  delete 
  from produtos 
  where id = 2; 