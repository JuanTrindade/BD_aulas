CREATE DATABASE BD_biblioteca;

USE BD_biblioteca;

CREATE TABLE tb_livros
(
numero int(5) auto_increment primary key,
titulo varchar(20) not null,
genero varchar(10),
edicao int(2),
ano_publicacao int(4),
cod_editora int(4),
cpf_func varchar(11),
cpf_usu varchar(11)
);

CREATE TABLE tb_editora
(
cod_editora int(4) auto_increment primary key,
nome varchar(100),
endereco varchar(200),
contato int(12)
);

CREATE TABLE tb_funcionario
(
cpf varchar(11) not null primary key,
nome varchar(100),
endereco varchar(200),
telefone int(12),
Funcao varchar(50),
salario decimal(5)
);

CREATE TABLE tb_usuario
(
cpf varchar(11) primary key,
nome varchar(100),
endereco varchar(200),
telefone varchar(12)
);

INSERT INTO tb_usuario(cpf, nome, endereco, telefone) VALUES (12345678910, "Wagner Gusmão","Rua quatro, 15",12345678910);
INSERT INTO tb_usuario(cpf, nome, endereco, telefone) VALUES (51354854851, "Pedrin da Massa","Rua cinco, 16",45465401688);
INSERT INTO tb_usuario(cpf, nome, endereco, telefone) VALUES (45684548646, "Juan Pablo Silva","Rua seis, 17",56987453214);
INSERT INTO tb_usuario(cpf, nome, endereco, telefone) VALUES (45645646546, "Nicolas Carvalho","Rua sete, 18",12345678541);
INSERT INTO tb_usuario(cpf, nome, endereco, telefone) VALUES (89488484255, "Gustavo Dias","Rua oito, 19",45454684212);
INSERT INTO tb_usuario(cpf, nome, endereco, telefone) VALUES (21287887813, "Marcelo Pelaes","Rua nove, 20",45421541858);
INSERT INTO tb_usuario(cpf, nome, endereco, telefone) VALUES (88849849499, "Cristiano Professor","Rua dez, 21",99999999999);
INSERT INTO tb_usuario(cpf, nome, endereco, telefone) VALUES (74354935923, "Rodolfo Votto","Rua onze, 22",99999999998);
INSERT INTO tb_usuario(cpf, nome, endereco, telefone) VALUES (11434664363, "Barth da Silva","Rua doze, 23",55555555555);
INSERT INTO tb_usuario(cpf, nome, endereco, telefone) VALUES (12345343433, "Natalia professora","Rua treze, 24",78945612345);
INSERT INTO tb_usuario(cpf, nome, endereco, telefone) VALUES (12375454644, "Vanessa Zerefino","Rua quatorze, 25",98765432123);
INSERT INTO tb_usuario(cpf, nome, endereco, telefone) VALUES (12334534534, "Dayane Trindade","Rua quinze, 26",56465465465);

/*deletar (dropar) uma tabela ou base de dados
/*drop table TB_usuario;*/

CREATE TABLE tb_autores
(
cod_autor int(4) auto_increment primary key,
nome varchar(100),
nacionalidade varchar(20)
);

CREATE TABLE tb_Livros_Autores
(
numero int(5) not null,
cod_autor int(4)not null
);

ALTER TABLE tb_Livros_Autores
ADD CONSTRAINT fk_Numero FOREIGN KEY (numero) REFERENCES tb_livros(numero);

ALTER TABLE tb_Livros_Autores
ADD CONSTRAINT fk_Cod_Autor FOREIGN KEY (cod_autor) REFERENCES tb_autores(cod_autor);

Alter TABLE tb_livros
ADD CONSTRAINT fk_CodEditora FOREIGN KEY (cod_editora) REFERENCES tb_editora(cod_editora);

Alter TABLE tb_livros
ADD CONSTRAINT fk_CpfFunc FOREIGN KEY (cpf_func) REFERENCES tb_funcionario(cpf);

Alter TABLE tb_livros
ADD CONSTRAINT fk_CpfUsuario FOREIGN KEY (cpf_usu) REFERENCES tb_usuario(cpf);

select endereco from tb_usuario;