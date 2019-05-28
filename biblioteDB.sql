/* 
* Allef Rodrigues
* Gabriel Granado
* Marcelo Andrade
* José Paiva
* Thais Cassiano
*/


CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE autor( 
    id          INT PRIMARY KEY AUTO_INCREMENT,
    nome        VARCHAR(50),
    sobrenome   VARCHAR(60)
);

CREATE TABLE editora(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    nome    VARCHAR(50)

);

CREATE TABLE livro(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    nome         VARCHAR(50),
    isbn         VARCHAR(30),
    data_pub     date,
    preco        DECIMAL(10,2),
    editora_id   INT,
    FOREIGN KEY (editora_id) REFERENCES editora(id) ON DELETE CASCADE ON UPDATE CASCADE,
    autor_id     INT,
    FOREIGN KEY (autor_id) REFERENCES autor(id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO autor VALUES (null,'Daniel','Barret');
INSERT INTO autor VALUES (null,'Gerald','Carter');
INSERT INTO autor VALUES (null,'Mark','Sobell');
INSERT INTO autor VALUES (null,'William','Stanek');
INSERT INTO autor VALUES (null,'Richard','Blum');


INSERT INTO editora VALUES (null,'Prentice Hall');
INSERT INTO editora VALUES (null,'O´Reilly');
INSERT INTO editora VALUES (null,'Microsoft Press');
INSERT INTO editora VALUES (null,'Wiley');


INSERT INTO livro VALUES (null,'Linux Command Line and Shell Scripting', 143856969,'2009-12-21',68.35,1,4);
INSERT INTO livro VALUES (null,'SSH, the Secure Shell',127658789,'2009-12-21',58.30,1,2);
INSERT INTO livro VALUES (null,'Using Samba',123856789,'2000-12-21',61.45,2,2);
INSERT INTO livro VALUES (null,'Fedora and Red Hat Linux',123346789,'2010-11-01',62.24,3,1);
INSERT INTO livro VALUES (null,'Windows Server 2012 Inside Out',123356789,'2004-05-17',66.80,4,3);
INSERT INTO livro VALUES (null,'Microsoft Exchange Server 2010',123366789,'2000-12-21',45.30,4,3);


SELECT nome FROM editora WHERE nome REGEXP '[y]$';

SELECT nome FROM livro WHERE nome REGEXP '^[US]';

SELECT nome FROM autor WHERE sobrenome REGEXP '^[S]|So';

SELECT nome, isbn FROM livro WHERE isbn REGEXP '^[1][2][3]';

SELECT nome FROM autor WHERE nome REGEXP '[^LM]$'

