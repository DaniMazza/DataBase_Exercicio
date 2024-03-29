create database Empresa2;
use Empresa2;

create table if not exists Departamento(
id int primary key auto_increment,
nome varchar(70) not null
);
create table if not exists Funcionario(
id int primary key auto_increment,
nome varchar(100) not null,
sobrenome varchar(100) not null,
cpf varchar(16) not null,
rg varchar(15) not null,
data_nascimento date,
salario float(14,2),
id_departamento int,
constraint FK_FUNCIONARIO_DEPARTAMENTO foreign key(id_departamento)
references Departamento(id)
);

create table if not exists Endereco(
id int primary key auto_increment,
cep varchar(12) not null,
logradouro varchar(80) not null,
numero int not null,
complemento varchar(50),
cidade varchar(60) not null,
id_funcionario int,
constraint FK_ENDERECO_FUNCIONARIO foreign key(id_funcionario)
references Funcionario(id)
);

create table if not exists Contatos(
id int primary key auto_increment,
telefone varchar(20) not null,
id_funcionario int,
constraint FK_Contatos_FUNCIONARIO foreign key(id_funcionario)
references Funcionario(id)
);

insert into Departamento 
(nome)
values
('atendimento ao cliente'),
('financeiro'),
('contábil'),
('marketing e vendas'),
('produção'),
('logística'),
('TI(tecnologia da informação)'),
('jurídico'),
('pesquisa'),
('compras'),
('administração'),
('recursos humanos');

insert into Funcionario
(nome, sobrenome, cpf, rg,
 data_nascimento, salario, id_departamento)
values

('Sol', 'Guilloux', '212.215.845-22', '1145.121-55', '2005-01-15', '8000.50', 6),

('Zira', 'Beber', '125.355.845-72', '4545.458-55',  '2005-01-15','8000.50', 9),

('Nica', 'Da Silva', '856.125.845-42', '4545.158-55', '2005-01-15', '8000.50', 1),

('Gab', 'Souza', '789.215.858-22', '4785.758-22', '2005-01-15', '1420.50', 8),

('Welly', 'De Assis', '985.225.821-42', '1255.148-12', '2005-01-15', '2221.50', 7),

('Sol', 'Mazzarolo', '212.111.845-23', '4040.111-55', '2005-01-15', '1420.50', 2),

('Susha', 'Dom Martinz', '112.255.825-21', '0045.418-15', '2005-01-15', '8568.50', 4),

('Mila', 'Pires', '812.715.745-22', '0213.458-12', '2005-01-15', '7800.50', 4),

('Ziru', 'Tenas', '712.275.745-22', '7845.488-00',  '2005-01-15', '8700.50', 2),

('Lilla', 'Torronte','888.215.845-77', '7845.458-55', '2005-01-15', '8500.50', 5);

insert into Endereco 
(logradouro, numero, complemento, cidade, cep, id_funcionario)
values
('Rua dos apaixonados', 33, null,'Jardim tocanos', '89895-222', 1),
('Rua do Milharal', 33, null, 'Jardim Tocantins', '87875-727', 2),
('Rua dos apaixonados', 44, 'Apto 221', 'Jardim Boulevard', '71195-111', 3),
('Rua dos Motoristas', 993, 'Predio Azul, Apto 222', 'Palmas', '21195-111', 3),
('Estrada da Desesperança', 113, 'Predio Verde, Apto 012', 'Jardim do Recentimento', '01195-122', 4),
('Avenida do Amor', 25, 'casa colorida', 'Jardim da Alegria', '12111-110', 1),
('Rua da Paixão', 22, 'Apto 222', 'Jardim do Sentimento', '43235-122', 6),
('Rua do René', 19, 'Apto 012, prédio vermelho', 'Jardim da Triste', '12125-120', 7),
('Rua do Sol', 9, null, 'Jardim da Ansiedade', '11295-922', 8),
('Avenida Sol Mazzarolo', 10, 'Apto 010', 'Jardim da Depressão', '80000-022', 9);

insert into Contatos
(telefone, id_funcionario)
values
('(54) 98632-8896', 1),
('(51) 98621-1244', 2),
('(11) 96321-5235', 3),
('(12) 97451-4652', 5),
('(13) 91023-8562', 6),
('(24) 90045-3632', 1),
('(55) 98553-6531', 8),
('(74) 90451-1454', 9),
('(88) 92321-1245', 2),
('(15) 99325-1547', 7),
('(14) 99325-4852', 1),
('(12) 99232-4457', 7),
('(41) 92222-3333', 3),
('(44) 91111-1111', 4),
('(47) 99878-2222', 6),
('(51) 98888-1111', 8);
