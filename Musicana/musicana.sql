create database musicana
Use musicana



create table musician(
id int primary key identity(1,1),
name varchar(10) not null,
ph_number varchar(11) not null,
city varchar(15) default 'Cairo',
street varchar(20)
)

create table instrument(
name varchar(15) primary key,
insKey varchar(1),

)

create table album(
id int primary key identity(7,7),
title varchar(10) not null,
albDate date,
mus_id int references musician(id)
)


create table song(
title varchar(15) primary key,
author varchar(15) not null
)

create table album_song(
alb_id int references album(id),
song_title varchar(15) references song(title),
primary key(song_title)
)

create table mus_song(
mus_id int references musician(id),
song_title varchar(15) references song(title),
primary key(mus_id,song_title)
)

create table mus_instrument(
mus_id int references musician(id),
inst_name varchar(15) references instrument(name),
primary key(mus_id,inst_name)
)