/*NOME DO BANCO*/
use Escola;

/*TABELA ALUNOS*/
create table Alunos(
Id int not null auto_increment,
Matricula int,
Nome varchar(30),
Idade int,
Sexo varchar(20),
Cidade varchar(20),
Primary key(id)
);

/*DADOS DA TABELA ALUNOS*/
insert into Alunos(Matricula,Nome, Idade, Sexo, Cidade)
values (202400001,"Amanda", 19 , "Feminino", "Serra"),(202400002,"Carlos", 18 , "Masculino", "Serra"),
	   (202400003,"Diogo", 17 , "Masculino", "Vitoria"),(202400004 ,"Jessica",21, "Feminino", "Serra"),
       (202400005,"Cassia", 18 , "Feminino", "Vitoria"),(202400006,"Mateus", 18 , "Masculino", "Vitoria"),
	   (202400007,"Pedro", 18 , "Masculino", "Serra"),(202400008,"Julia", 17 , "Feminino", "Serra"),
       (202400009,"Larissa", 20 , "Feminino", "Vitoria"),(202400010,"Jhonatan", 18 , "Masculino", "Vitoria"),
       (202400011,"Caio", 17 , "Masculino", "Serra"),(202400012,"Barbara",21, "Feminino", "Vitoria"),
	   (202400013,"Adriano", 18 , "Masculino", "Serra"),(202400014,"Bruno", 17 , "Masculino", "Vitoria"),
       (202400015,"Denis", 19 , "Masculino", "Serra"),(202400016,"Helena", 19 , "Feminino", "Vitora"),
       (202400017,"Carol", 18 , "Feminino", "Vitora"),(202400018,"Patrck", 20 , "Masculino", "Vitoria"),
       (202400019,"Yuri", 19 , "Masculino", "Serra"),(202400020,"Ingrid", 20 , "Feminino", "Vitoria");
       
/*TABELA NOME DA ESCOLA*/
create table Escola (
Nome varchar(30),
Cidade varchar(30)
);

/*DADOS DA TABELA ESCOLA*/
insert into Escola(Nome, Cidade)
Values("Doctum", "Serra"),("Faesa", "Vitoria");

/*TABELE NOTA_FINAL DOS ALUNOS*/
create table Nota_final(
Id int not null auto_increment,
Nota int,
primary key (id)
);

/*DADOS DAS NOTAS FINAIS DOS ALUNOS*/
insert into Nota_Final(Nota)
values (79),(86),(69),(75),(51),(60),(45),(62),(63),(65),(73),(55),(58),(90),(87),(76),(72),(53),(57),(65);

/*TABELA GRADUAÇÃO*/
create table Graduacao(
id int not null auto_increment,
Curso varchar(30),
primary key(id)
);

/*DADOS DA TABELA GRADUAÇÃO*/
insert into Graduacao(Curso)
values
("Pedagogia"),("Arquitetura"),("Computacao"),("Engenharia_civil"),("Administracao"),
("Logistica"),("Medicina"),("Farmacia"),("Letras"),("Direito"),("Jornalismo"),
("Odontologia"),("Psicologia"),("Engenharia_eletrica"),("ciencia contabeis"),
("Medicina_veterinaria"),("Publicidade_e_propaganda"),("Engenharia_Ambiental"),("Arqueologia"),("Biblioteconomia");

/*TABELA DE TURNO DE ESTUDOS DOS ALUNOS*/
create table turno(
id int not null auto_increment,
Horario varchar(10),
primary key(id) 
);

/*DADOS DO TUNO DE ESTUDO*/
insert into turno(horario) values ("Matutino"), ("Vespertino"), ("Noturno");


/*
COMANDOS DE CONSULTAS UTILIZADOS NO PROJETO ESCOLA.
*/

select * from turno;

 update Alunos set Nome ="Patrick" where id = 18;

select * from alunos join Nota_final on Nota_final.id = Alunos.id ;

select * from Alunos join Graduacao on Alunos.id = Graduacao.id  join Escola ;

select * from Alunos join Graduacao on Alunos.id = Graduacao.id;

select * from Nota_Final;

select * from Alunos;

select count(Nome) from Alunos;

select Matricula, nome from Alunos;

select Nome from Alunos;

update Alunos set nome = "Amanda" where id = 1; 

select nome from Alunos order by Nome;

select Nome from Alunos where Idade >= 10 order by Nome;

select * from Alunos join Nota_final on Nota_final.id = Alunos.id where Nota>=90;

select Matricula from Alunos where Matricula > 202400015;

select sum(Idade) from Alunos;

select count(Idade) from Alunos;

select count(Nome) from Alunos;

alter table escola drop id;

select * from escola;


