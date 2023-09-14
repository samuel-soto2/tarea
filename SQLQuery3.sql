﻿CREATE DATABASE Portalweb
USE Portalweb

CREATE TABLE Usuarios(
Cod_Usuario int identity(1,1),
Nombre varchar(50),
Apellido varchar(50),
Correo varchar(70),
Edad int,
Usuario varchar(50),
Contraseña varchar(50)
)