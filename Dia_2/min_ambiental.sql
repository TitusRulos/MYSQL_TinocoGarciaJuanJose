create database min_ambiental;
use min_ambiental;

create table tipoPersonal(
    tipo_id int primary key,
    nombre varchar(30)
);

create table personal(
    personal_id int primary key,
    nombre varchar(30),
    direccion varchar(30),
    telefono varchar(20),
    sueldo varchar(20),
    tipo_personal_id int,
    foreign key (tipo_personal_id) references tipoPersonal(tipo_id)
);

create table visitante(
    visitante_id int primary key,
    nombre varchar(30),
    direccion varchar(30),
    profesion varchar(30)
);

create table tipo_especie(
    tipo_id int primary key,
    nombre varchar(30)
);

create table especie(
    especie_id int primary key,
    deno_cliente varchar(30),
    deno_vulgar varchar(30),
    num_invt int,
    tipo_id int,
    area_id int,
    foreign key (tipo_id) references tipo_especie(tipo_id)
);

create table area(
    area_id int primary key,
    nombre varchar(30),
    extension varchar(8),
    parque_id int,
    especie_id int,
    foreign key (especie_id) references especie(especie_id)
);

create table parque(
    Parque_id int primary key,
    nombre varchar(30),
    dia_declarado datetime,
    extension varchar(8),
    area_id int,
    departamento_id int,
    foreign key (area_id) references area(area_id)
);

create table departamento(
    departamento_id int primary key,
    parques_id int,
    nombre varchar(30),
    foreign key (parques_id) references parque(Parque_id)
);

show tables;
