CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_funcionarios(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cpf VARCHAR(255) NOT NULL,
dataNascimento DATE NOT NULL,
dataAdmissao DATE NOT NULL,
funcao VARCHAR(255) NOT NULL,
salario DECIMAL(8,2) NOT NULL,
PRIMARY KEY (id)
);

SELECT * FROM tb_funcionarios;

INSERT INTO tb_funcionarios(nome, cpf, dataNascimento, dataAdmissao, funcao, salario) VALUES 
("Maria Fernanda Ferrari","008.234.145.07", "1985-12-15", "2004-12-01", "Analista Senior", 9825.00),
("Antonio Alves","048.111.254.03", "1992-02-23", "2019-05-01", "Analista Pleno", 6430.00),
("Marcos Vinicius Souza","457.358.745.09", "2001-01-03", "2022-04-10", "Atendente", 1420.00),
("Tatiana Rodrigues","229.345.117.05", "1988-01-03", "2020-03-15", "Gerente", 12000.00),
("Aline Farias","456.221.185.008", "1998-10-12", "2022-06-15", "Assistente Administrativa", 1800.00);

SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

 UPDATE tb_funcionarios SET salario = 11500.00 WHERE id = 1;
 
 

