create Database ClinicaVeterinaria

use ClinicaVeterinaria;


CREATE TABLE DueñoMascota (
Id_DueñoMascota int PRIMARY KEY identity,
Nombre_DueñoMascota varchar(50),
Apellido_DueñoMascota varchar(50),
Sexo_DueñoMascota varchar(50),
Direccion_DueñoMascota varchar(50),
Departamento_DueñoMascota varchar(50),
Municipio_DueñoMascota varchar(50),
Codigo_Postal varchar(50),
NumeroDeTelefono_DueñoMascota int,
Observaciones varchar(150)
);

CREATE TABLE Mascota (
Id_Mascota int identity,
NumeroHistorialClinico int primary key,
Nombre_Mascota varchar(50),
Sexo_Mascota varchar (50),
Raza varchar(50),
Peso int,
Tipo_de_Mascota varchar(50),
Observaciones varchar(150)
);

CREATE TABLE Veterinario (
Id_Veterinario int identity,
Codigo_Identificacion_Veterinario int primary key,
Nombre_Veterinario varchar(50),
Apellido_Veterinario varchar(50),
Sexo_Veterinario varchar (50),
Cargo varchar(50),
Telefono_Veterinario int,
);

CREATE TABLE Ingreso (
 Id_Ingreso INT PRIMARY KEY identity,
 FechaIngreso date default getdate(),
 MotivoIngreso varchar(50),
 Observaciones varchar(50),
 NumeroHistorialClinico INT,
 Id_DueñoMascota int,
 Codigo_Identificacion_Veterinario int

 FOREIGN KEY (NumeroHistorialClinico) REFERENCES Mascota(NumeroHistorialClinico),
 FOREIGN KEY (Codigo_Identificacion_Veterinario) REFERENCES Veterinario(Codigo_Identificacion_Veterinario),
 FOREIGN KEY (Id_DueñoMascota) REFERENCES DueñoMascota(Id_DueñoMascota),
);

--DATOS A INTRODUCIR--


INSERT INTO Mascota VALUES( '');
INSERT INTO Mascota VALUES( '');
INSERT INTO Mascota VALUES( '');
INSERT INTO Mascota VALUES( '');
INSERT INTO Mascota VALUES('');
INSERT INTO Mascota VALUES('');
INSERT INTO Mascota VALUES('');
INSERT INTO Mascota VALUES( '');
INSERT INTO Mascota VALUES( '');
INSERT INTO Mascota VALUES('');

INSERT INTO Veterinario VALUES('');
INSERT INTO Veterinario VALUES( '');
INSERT INTO Veterinario VALUES( '');
INSERT INTO Veterinario VALUES('');


INSERT INTO Ingreso VALUES( '');
INSERT INTO Ingreso VALUES( '');
INSERT INTO Ingreso VALUES( '');
INSERT INTO Ingreso VALUES( '');
INSERT INTO Ingreso VALUES( '');
INSERT INTO Ingreso VALUES( '');
INSERT INTO Ingreso VALUES( '');
INSERT INTO Ingreso VALUES( '');
INSERT INTO Ingreso VALUES( '');
INSERT INTO Ingreso VALUES( '');
INSERT INTO Ingreso VALUES( '');
INSERT INTO Ingreso VALUES( '');
INSERT INTO Ingreso VALUES( '');
INSERT INTO Ingreso VALUES( '');


