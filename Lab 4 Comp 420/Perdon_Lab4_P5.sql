create database CIC;
use CIC;

create table PRESCRIPTION(
	pres_dosage int not null,
    pres_date int not null,
    doc_id int not null,
    pat_num int not null,
    drug_code varchar(10) not null,
    primary key(doc_id, pat_num, drug_code)
)ENGINE=INNODB;

create table DOCTOR(
	doc_id int primary key,
    doc_lname varchar(20) not null,
    doc_fname varchar(20) not null,
    doc_initial char(3) not null,
    doc_specialty varchar(20) not null,
    foreign key (doc_id) references PRESCRIPTION (doc_id)
)ENGINE=INNODB;

create table PATIENT(
	pat_num int primary key,
    pat_title char(5) not null,
    pat_lname varchar(20) not null,
    pat_fname varchar(20) not null,
    pat_initial char(3) not null,
    pat_dob varchar(8) not null,
    pat_areacode smallint(3) not null,
    pat_phone int(7) not null
    -- foreign key (pat_num) references PRESCRIPTION (pat_num)
)ENGINE=INNODB;

create table DRUG(
    drug_code varchar(10) primary key,
    drug_name varchar(20) not null,
    drug_price int not null
    -- foreign key (drug_code) references PRESCRIPTION (drug_code)
)ENGINE=INNODB;

create table HOSPITAL(
	hosp_name int not null,
    hosp_doc int not null,
    hosp_address varchar(20) not null,
    hosp_specialty varchar(20) not null,
    primary key(hosp_name, hosp_doc)
)ENGINE=INNODB;

create table APPOINTMENT(
	hosp_name int not null,
    hosp_doc int not null,
    appt_starttime varchar(5) not null,
    appt_endtime varchar(5) not null,
    appt_location varchar(20) not null,
    primary key(hosp_name, hosp_doc)
)ENGINE=INNODB;