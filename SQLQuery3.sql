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

insert into Permisos values ('Create')
insert into Permisos values ('Read')
insert into Permisos values ('Update')
insert into Permisos values ('Delete')

select * from Permisos

select * from Roles_Permisos

insert into Roles_Permisos values (1,1,1)
insert into Roles_Permisos values (1,2,1)
insert into Roles_Permisos values (1,3,1)
insert into Roles_Permisos values (1,4,1)

insert into Roles_Permisos values (2,1,0)
insert into Roles_Permisos values (2,2,1)
insert into Roles_Permisos values (2,3,0)
insert into Roles_Permisos values (2,4,0)

create procedure sp_registrar
@Nombre varchar(50),
@Apellido varchar(50),
@Correo varchar(70),
@Edad int,
@Usuario varchar(50),
@Contraseña varchar(max),
@Cod_Rol int,
@Patron varchar (50)
as begin
insert  into Usuarios values (@Nombre , @Apellido , @Correo, @Edad , @Usuario , ENCRYPTBYPASSPHRASE (@Patron , @Contraseña) , @Cod_Rol)
end

create procedure sp_login
@Usuario varchar(50),
@Contraseña varchar(max),
@Patron varchar (50)
as begin
select * from Usuarios where Usuario=@Usuario and CONVERT(varchar(50) , DECRYPTBYPASSPHRASE(@Patron , Contraseña))= @Contraseña
end







