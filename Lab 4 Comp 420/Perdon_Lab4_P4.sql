create database CIDolphinPods;
use CIDolphinPods;

create table SHUTTLE(
	shuttle_id int primary key,
    shuttle_size int not null
)ENGINE=INNODB;

create table CSUCI_MEMBER(
	dolphin_id int primary key, 
    first_name varchar(20),
    last_name varchar(20),
    csuci_member_type varchar(20)
)ENGINE=INNODB;

create table SHUTTLE_TRIP(
	trip_id int not null,
    shuttle_id int not null,
    driver_id int not null,
    primary key (trip_id, shuttle_id, driver_id),
    foreign key (shuttle_id) references SHUTTLE (shuttle_id),
    foreign key (driver_id) references CSUCI_MEMBER (dolphin_id)
)ENGINE=INNODB;

create table TRIP_PASSENGER(
	passenger_id int not null,
    trip_id int not null,
    primary key (passenger_id, trip_id),
    foreign key (passenger_id) references CSUCI_MEMBER (dolphin_id),
    foreign key (trip_id) references SHUTTLE_TRIP (trip_id)
)ENGINE=INNODB;

