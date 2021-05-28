drop database if exists nba;
create database nba;
use nba;

create table klub(
	id int not null primary key auto_increment,
	naziv varchar(100),
	igrac int,
	trener int
);

create table igrac(
	id int not null primary key auto_increment,
	ime varchar(50),
	prezime varchar(50),
	klub int,
	statistika int
);

create table trener(
	id int not null primary key auto_increment,
	ime varchar(50),
	prezime varchar(50),
	klub int
);

create table statistika(
	id int not null primary key auto_increment,
	poeni int,
	skokovi int,
	assisti int,
	stealovi int,
	blokovi int,
	turnovers int,
	postotakSutaIzIgre int,
	postotakSutaSlobodnaBacanja int,
	igrac int
);	
	
create table utakmica(
	id int not null primary key auto_increment,
	datumPocetka datetime,
	domacaMomcad int,
	gostujucaMomcad int,
	nazivDvorane varchar(100),
	rezultat int,
	igrac int
);

alter table trener add foreign key(klub) references klub(id);
alter table igrac add foreign key(klub) references klub(id);
alter table statistika add foreign key(igrac) references igrac(id);
alter table utakmica add foreign key(igrac) references igrac(id);
 