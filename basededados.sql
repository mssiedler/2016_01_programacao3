CREATE TABLE apoiador
(
  nome character varying,
  cnpj character varying,
  idade int,
  id_apoio serial NOT NULL
);

CREATE TABLE despesas
(
  descricao character varying,
  valor numeric(8,2),
  localdogasto character varying,
  id_despesas serial NOT NULL
)

CREATE TABLE pergunta
(
  titulo character varying,
  dica character varying,
  niveldificuldade int,
  id_etapa serial NOT NULL
);

