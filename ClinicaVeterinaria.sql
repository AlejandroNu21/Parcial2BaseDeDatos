create Database ClinicaVeterinaria

use ClinicaVeterinaria;


CREATE TABLE Due�oMascota (
Id_Due�oMascota int PRIMARY KEY identity,
Nombre_Due�oMascota varchar(50),
Apellido_Due�oMascota varchar(50),
Sexo_Due�oMascota varchar(50),
Direccion_Due�oMascota varchar(50),
Departamento_Due�oMascota varchar(50),
Municipio_Due�oMascota varchar(50),
Codigo_Postal varchar(50),
NumeroDeTelefono_Due�oMascota int,
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
 Id_Due�oMascota int,
 Codigo_Identificacion_Veterinario int

 FOREIGN KEY (NumeroHistorialClinico) REFERENCES Mascota(NumeroHistorialClinico),
 FOREIGN KEY (Codigo_Identificacion_Veterinario) REFERENCES Veterinario(Codigo_Identificacion_Veterinario),
 FOREIGN KEY (Id_Due�oMascota) REFERENCES Due�oMascota(Id_Due�oMascota),
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


