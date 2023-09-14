﻿CREATE DATABASE Portalweb
USE Portalweb

CREATE TABLE Usuarios(
Id_Usuario int identity(1,1),
Nombre varchar(50),
Apellido varchar(50),
Correo varchar(80),
Edad int,
Usuario varchar(50),
Contraseña varchar(50)
)

Alter table Usuarios add Id_rol int 

select * from Usuarios

Create table Permisos(
Id_Permisos int identity(1,1),
Nombre_Permiso varchar (50)
)

create table Roles(
Id_rol int identity(1,1),
Nombre_Rol varchar(50)
)

create table Roles_Permisos(
Id_rol_permiso int identity (1,1),
Id_Rol int,
Id_permiso int,
Estado bit
)

drop table Roles_Permisos;


insert into Roles values ('Admin')
insert into Roles values ('User')

select * from Roles

