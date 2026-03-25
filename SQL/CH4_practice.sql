create database Market;
use Market;
create table customers
(
c_num int unique not null primary key auto_increment,
c_name varchar(50),
c_contact varchar(50),
c_city varchar(50),
c_birth datetime not null
);
desc customers_info;
alter table customers modify c_contact varchar(50) after c_birth;
alter table customers modify c_name varchar(70);
alter table customers change c_contact c_phone varchar(50);
alter table customers add c_gender varchar(1);
alter table customers rename customers_info;
alter table customers_info drop c_city;
alter table customers_info engine InnoDB;
show create table customers_info;
show create table orders;
create table orders
(
o_num int primary key not null unique auto_increment,
o_date date,
c_id int
);
desc orders;
alter table orders add constraint forkey1 foreign key(c_id) references customers_info(c_num);
alter table orders drop constraint forkey1;

drop table customers_info;