




Create DataBase ITI
Use ITI


Create table student(
id int primary key identity(1,1),
FName varchar(10) not null,
LName varchar(10),
age smallint,
Address varchar(10) default 'cairo',
dep_id int

)

create table department(
id int primary key identity(10,10),
name varchar(10) not null,
hiringDate date,
ins_id int

)


create table instructor(
id int primary key identity(1,1),
name varchar(10) not null,
Address varchar(10) default 'cairo',
bonus money,
salary money,
hour_rate money,
depID int references department (id)
)
create table course(
id int primary key identity(1,1),
name varchar(30) not null,
duration varchar(20),
description varchar(100),
topID int,
)

create table topic(
id int primary key identity(1,1),
name varchar(30) not null,
)

create table stud_course(
stud_id int references student (id),
course_id int references course (id),
grade float
)

drop table stud_course

create table stud_course(
stud_id int references student (id),
course_id int references course (id),
grade float
primary key(stud_id,course_id)
)

create table course_instructor(
inst_id int references instructor (id),
course_id int references course (id),
evaluation float
primary key(inst_id,course_id)
)


alter table student
add foreign key (dep_id) references department(id)


alter table department
add foreign key (ins_id) references instructor(id)

alter table course
add foreign key (topID) references topic(id)

