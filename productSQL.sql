DROP DATABASE products;
CREATE DATABASE products;
USE products;	

create table product(
	id int not null auto_increment ,
    name_product varchar(50) not null,
    price decimal(10,3) not null,
    primary key(id)
    );
    
insert into product(name_product,price) values ("Iphone 16", 2000);    
insert into product(name_product,price) values ("Samsung Galaxy", 1200);    