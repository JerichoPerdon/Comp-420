CREATE DATABASE LAB4_AIRSUPPLY;
USE LAB4_AIRSUPPLY;

CREATE TABLE VENDOR(
	Vendor_Id int primary key,
    Vendor_Name varchar(32) not null,
    Line_Number int 
)ENGINE=INNODB;

CREATE TABLE PRODUCT(
	Product_Id int primary key,
    Product_Name varchar(32) not null,
    Product_Description varchar(200) not null,
    Product_Price int not null,
    Accounts_Payable_Terms int not null
)ENGINE=INNODB;

CREATE TABLE ORDER_INFO(
	Order_Id int not null,
    Vendor_Id int not null,
    Product_Id int not null,
    Order_Quantity int not null,
    primary key (Order_Id),
    foreign key (Vendor_Id) references VENDOR (Vendor_Id),
    foreign key (Product_Id) references PRODUCT (Product_Id)
)ENGINE=INNODB;

CREATE TABLE ORDER_DATES(
	Order_Date varchar(11),
    Arrival_Date varchar(11),
    Order_Id int not null, 
    primary key(Order_Id),
    foreign key (Order_Id) references ORDER_INFO (Order_Id) 
)ENGINE=INNODB;