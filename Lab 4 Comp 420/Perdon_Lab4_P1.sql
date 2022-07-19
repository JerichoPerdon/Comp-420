create database CIA;
use CIA;

create table ARTIST(
	artist_id int primary key,
    artist_motif varchar(32) not null,
    motif_description varchar(255) default null
)ENGINE=INNODB;


create table GALLERY(
	gallery_id int primary key,
    gallery_name varchar(32) not null,
    gallery_location char(5) not null
)ENGINE=INNODB;

create table PAINTING(
	painting_id int(6) not null,
    artist_id int(9) not null,
    gallery_id int(4) not null,
    price float(10, 7) not null,
    foreign key (artist_id) references ARTIST (artist_id),
    foreign key (gallery_id) references GALLERY (gallery_id)
)ENGINE=INNODB;
