-- Crear tabla de productos con campos CodDpto, NomDpto, Latitud , Longitud. 
-- Es importante definir claves primarias y restricciones de integridad para garantizar datos consistentes y facilitar las consultas.

CREATE TABLE DataWarehouse.dbo.dim_Departamentos (
	CodDpto tinyint NOT NULL,
	NomDpto nvarchar(60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Latitud float NOT NULL,
	Longitud float NOT NULL,
	CONSTRAINT DIM_Departamentos_PK PRIMARY KEY (CodDpto)
);
