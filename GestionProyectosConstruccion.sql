
CREATE DATABASE GestionProyectosConstruccion;
GO

USE GestionProyectosConstruccion;
GO

CREATE TABLE Empleados (
    EmpleadoID INT IDENTITY(1,1) PRIMARY KEY,
    NumeroCarnet NVARCHAR(50) NOT NULL UNIQUE,
    Nombre NVARCHAR(100) NOT NULL,
    FechaNacimiento DATE NOT NULL,
    Categoria NVARCHAR(50) CHECK (Categoria IN ('Administrador', 'Operario', 'Peón')) NOT NULL,
    Salario DECIMAL(10,2) NOT NULL CHECK (Salario BETWEEN 250000 AND 500000) DEFAULT 250000,
    Direccion NVARCHAR(255) DEFAULT 'San José',
    Telefono NVARCHAR(15),
    Correo NVARCHAR(100) NOT NULL UNIQUE
);
GO

CREATE TABLE Proyectos (
    ProyectoID INT IDENTITY(1,1) PRIMARY KEY,
    NombreProyecto NVARCHAR(100) NOT NULL,
    Descripcion NVARCHAR(500),
    FechaInicio DATE NOT NULL,
    FechaFin DATE,
    Presupuesto DECIMAL(15,2) NOT NULL CHECK (Presupuesto > 0)
);
GO

CREATE TABLE Asignaciones (
    AsignacionID INT IDENTITY(1,1) PRIMARY KEY,
    EmpleadoID INT NOT NULL,
    ProyectoID INT NOT NULL,
    FechaAsignacion DATE NOT NULL DEFAULT GETDATE(),
    Rol NVARCHAR(50) CHECK (Rol IN ('Líder', 'Miembro', 'Consultor')) NOT NULL,
    FOREIGN KEY (EmpleadoID) REFERENCES Empleados(EmpleadoID),
    FOREIGN KEY (ProyectoID) REFERENCES Proyectos(ProyectoID)
);
GO

INSERT INTO Empleados (NumeroCarnet, Nombre, FechaNacimiento, Categoria, Salario, Direccion, Telefono, Correo)
VALUES 
('CARNET001', 'Juan Pérez', '1985-03-15', 'Administrador', 450000, 'San José', '88887777', 'juan.perez@mail.com'),
('CARNET002', 'Ana López', '1990-07-20', 'Operario', 300000, 'Heredia', '88886666', 'ana.lopez@mail.com'),
('CARNET003', 'Carlos Jiménez', '1982-11-05', 'Peón', 250000, 'Cartago', '88885555', 'carlos.jimenez@mail.com');

INSERT INTO Proyectos (NombreProyecto, Descripcion, FechaInicio, FechaFin, Presupuesto)
VALUES 
('Construcción de Puente', 'Proyecto para construir un puente vehicular.', '2024-01-01', '2024-12-31', 15000000),
('Remodelación de Escuela', 'Remodelación de infraestructura escolar.', '2024-02-15', '2024-08-30', 8000000),
('Construcción de Edificio', 'Construcción de un edificio comercial.', '2024-03-01', NULL, 20000000);

INSERT INTO Asignaciones (EmpleadoID, ProyectoID, Rol)
VALUES 
(1, 1, 'Líder'),
(2, 1, 'Miembro'),
(3, 2, 'Consultor'),
(2, 3, 'Miembro');
GO
