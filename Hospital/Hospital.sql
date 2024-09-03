create database hospital

Use hospital



create table patient(
id int primary key identity(1,1),
name varchar(10) not null,
DOB date,
ward_id int,
con_id int

)

create table ward(
id int primary key identity(1,1),
name varchar(20) not null,
nurse_num int,
)

create table nurse(
number int primary key identity(1,1),
name varchar(20) not null,
address varchar(30),
ward_id int references ward (id)
)

create table consultant (
id int primary key identity(1,1),
name varchar(20) not null,
)

create table patient_con(
con_id int references consultant(id),
patID int references patient(id),
primary key(con_id,patID)
)

create table drug (
code int primary key identity(100,10),
dosage dec(2,2),
)

create table drug_brand(
drug_code int references drug(code),
brand varchar(15),
primary key(drug_code,brand)
)






create table nurse_drug_patient(
nur_num int references nurse(number),
drug_code int references drug(code),
patID int references patient(id),
ndpDate date,
timing date,
dosage dec(2,2),
primary key(patID,ndpdate,timing)
)



alter table patient
add foreign key (ward_id) references ward (id)

alter table patient
add foreign key (con_id) references consultant (id)


alter table ward
add foreign key (nurse_num) references nurse (number)












