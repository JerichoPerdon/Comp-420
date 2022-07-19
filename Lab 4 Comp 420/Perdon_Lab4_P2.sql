create database CI420;
use CI420;

create table STUDENT(
	dolphin_id int primary key,
    first_name varchar(20) not null,
    last_name varchar(20) not null
)ENGINE=INNODB;

create table PROJECT(
	project_id int primary key,
    project_name varchar(20) not null,
    project_description varchar(100) not null
)ENGINE=INNODB;

create table GROUP_MEMBER(
    dolphin_id int not null,
    project_id int not null,
    primary key (dolphin_id, project_id),
    foreign key (dolphin_id) references STUDENT (dolphin_id),
	foreign key (project_id) references PROJECT (project_id)
)ENGINE=INNODB;
