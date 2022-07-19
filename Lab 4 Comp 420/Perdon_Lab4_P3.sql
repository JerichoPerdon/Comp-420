create database CIMajors;
use CIMajors;

create table STUDENT(
	dolphin_id int primary key,
    first_name varchar(20),
    last_name varchar(20)
)ENGINE=INNODB;

create table PROGRAM(
	program_id int primary key,
    program_name varchar(20)
)ENGINE=INNODB;

create table MAJOR(
	program_id int not null,
    major_id int primary key,
    major_name varchar(20),
    foreign key (program_id) references PROGRAM (program_id)
)ENGINE=INNODB;

create table STUDENT_MAJOR(
	dolphin_id int not null,
    major_id int not null,
    primary key (dolphin_id, major_id),
    foreign key (dolphin_id) references STUDENT (dolphin_id),
    foreign key (major_id) references MAJOR (major_id)
)ENGINE=INNODB;
