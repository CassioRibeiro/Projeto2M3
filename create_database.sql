create database RESILIADATA;
use RESILIADATA;
-- criação tabela

CREATE TABLE Empresa (                      -- Criando tabela para cadastro da empresa
 ID INTEGER  NOT NULL PRIMARY KEY,          
 nome VARCHAR (50),
 email VARCHAR (50),
 telefone VARCHAR (100),
 endereco VARCHAR (100)
 );
 

 CREATE TABLE Tecnologias(
 ID INTEGER  NOT NULL PRIMARY KEY,
 Nome VARCHAR   (100),
 Area VARCHAR (100)
 );

CREATE TABLE Relatorios (
	ID integer not null primary key,
    ID_Empresa INTEGER,
	Data_Relatorio DATE ,
    FOREIGN KEY (ID_Empresa) REFERENCES Empresa(ID)
    );
	
CREATE TABLE Tec_Relatorios
	( id_relatorio integer not null,
	 id_tecnologia integer not null,
	primary key (id_relatorio, id_tecnologia),
	FOREIGN KEY (id_relatorio) REFERENCES Relatorios(ID),
    FOREIGN KEY (id_tecnologia) REFERENCES Tecnologias(ID));
	 