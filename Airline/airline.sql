create database airline
use airline

create table aircraft(
id int primary key identity(1,1),
capacity int,
model varchar(10),
maj_pilot varchar(10),
assistant varchar(10),
host1 varchar(10),
host2 varchar(10),
al_id int,
)

create table airline(
id int primary key identity(1,1),
name varchar(10) not null,
address varchar(10),
cont_person varchar(10),
)

create table airline_phones(
al_id int references airline(id),
phones varchar(11),
primary key (al_id, phones)
)

create table airline_transaction(
id int primary key identity(1,1),
description varchar(100),
amount int,
transDate date,
al_id int references airline(id)
)

create table employee(
id int primary key identity(1,1),
name varchar(10) not null,
address varchar(10),
position varchar(10),
gender varchar(1),
bd_year date,
bd_month date,
bd_day date,
al_id int references airline(id)
)

create table emp_qualifications(
emp_id int references employee(id),
qualifications varchar(30),
primary key(emp_id,qualifications)
)

create table route(
id int primary key identity(1,1),
destination varchar(10),
distance dec(3,3),
origin int,
classification varchar(15)
)

create table aircraft_routes(
ac_id int references aircraft(id),
route_id int references route(id),
departure varchar(20),
arrival varchar(20),
num_of_pass int,
price dec(2,2)
primary key(ac_id,route_id,departure)
)


alter table aircraft
add foreign key (al_id) references airline(id)