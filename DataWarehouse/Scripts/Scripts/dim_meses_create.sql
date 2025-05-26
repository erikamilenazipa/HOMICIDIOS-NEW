-- Crear tabla de productos con campos Mes, NomMes, NomCortoMes.
-- Es importante definir claves primarias y restricciones de integridad para garantizar datos consistentes y facilitar las consultas.

CREATE TABLE DataWarehouse.dbo.dim_Meses (
	Mes tinyint IDENTITY(1,1) NOT NULL,
	NomMes nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	NomCortoMes char(3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT DIM_Meses_PK PRIMARY KEY (Mes)
);
