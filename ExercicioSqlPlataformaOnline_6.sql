CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
campi VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT,
nome_curso VARCHAR(255) NOT NULL,
duracao VARCHAR(255) NOT NULL,
coordenador VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(tipo, campi) VALUES 
("Curta duração","Sorocaba"),
("Graduação","Santana de Parnaíba"),
("Graduação","Lapa"),
("Extensão","Sorocaba"),
("Extensão","Campinas");

INSERT INTO tb_cursos(nome_curso, duracao, coordenador, preco) VALUES 
("Algoritmos","32 horas", "Silvio Martins", 230.00),
("Análise e Desenvolvimento de Sistemas","2 anos", "Thiago Faccipieri", 1100.00),
("Sistemas da Informação","2 anos", "Thiago Faccipieri", 1000.00),
("IA para DEVS","610 horas", "Jacqueline Hernandes", 880.00),
("JavaScript","95 horas", "Silvio Martins", 320.00
);

ALTER TABLE tb_cursos ADD categoriaid BIGINT;

SELECT * FROM tb_cursos;

ALTER TABLE tb_cursos ADD CONSTRAINT fk_cursos_categorias
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id);

UPDATE tb_cursos SET categoriaid = 1 WHERE id = 1;
UPDATE tb_cursos SET categoriaid = 2 WHERE id = 2;
UPDATE tb_cursos SET categoriaid = 2 WHERE id = 3;
UPDATE tb_cursos SET categoriaid = 4 WHERE id = 4;
UPDATE tb_cursos SET categoriaid = 1 WHERE id = 5;

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco > 599.99 AND preco < 1000.01;

SELECT * FROM tb_cursos WHERE nome_curso LIKE "%j%";

SELECT nome_curso, duracao, coordenador, preco, tb_categorias.tipo, tb_categorias.campi
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoriaid = tb_categorias.id;

SELECT nome_curso, duracao, coordenador, preco, tb_categorias.tipo, tb_categorias.campi
FROM tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.categoriaid = tb_categorias.id
WHERE tb_categorias.tipo = 'Graduação';

