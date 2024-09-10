create database Empresa;

use Empresa;

IF EXISTS dbo.Empleados
   DROP TABLE dbo.Empleados;

CREATE TABLE Empleados (
    ID INT PRIMARY KEY,
    Nombre NVARCHAR(50),
    Posicion NVARCHAR(50),
    Salario money
);

INSERT INTO Empleados (ID, Nombre, Posicion, Salario)
VALUES (1, 'Alex', 'Dueño', 10000);

INSERT INTO Empleados (ID, Nombre, Posicion, Salario)
VALUES (2, 'Juan', 'Developer', 5000);

INSERT INTO Empleados (ID, Nombre, Posicion, Salario)
VALUES (3, 'Ropo', 'Developer', 3000);

INSERT INTO Empleados (ID, Nombre, Posicion, Salario)
VALUES (4, 'Jorge', 'HR', 3000);

INSERT INTO Empleados (ID, Nombre, Posicion, Salario)
VALUES (5, 'Santiago', 'Chofer', 3000);

SELECT * FROM Empleados where Salario >= 5000;

IF EXISTS dbo.Bono
   DROP FUNCTION dbo.Bono;

CREATE FUNCTION Bono (@salario MONEY)
RETURNS FLOAT
AS
BEGIN
    DECLARE @MontoBono AS FLOAT;
    IF @salario > 5000
        SET @MontoBono = 0.05;
    ELSE
        SET @MontoBono = 0.1;
    RETURN @MontoBono;
END;

-- Uso de la función
SELECT Nombre, Posicion, Salario, dbo.Bono(Salario) from Empleados;

GO

