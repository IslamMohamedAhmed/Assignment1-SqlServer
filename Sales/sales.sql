create database sales
use sales


create table sales_office(
number int primary key identity(1,1),
location varchar(10),
emp_id int,
)

create table employee(
id int primary key identity(1,1),
name varchar(15),
off_number int references sales_office(number)

)


create table property(
id int primary key identity(1,1),
address varchar(15),
city varchar(10),
state varchar(10),
code int,
off_number int references sales_office(number)

)

create table owner(
id int primary key identity(1,1),
name varchar(15),
)

create table prop_owner(
own_id int references owner(id),
prop_id int references property(id),
propPercent dec(3,2),
primary key(own_id,prop_id)
)

alter table sales_office
add foreign key (emp_id) references employee (id)