-- Crear tabla de productos con campos id_zona, nom_zona.
-- Es importante definir claves primarias y restricciones de integridad para garantizar datos consistentes y facilitar las consultas.


CREATE TABLE DataWarehouse.dbo.dm_zonas (
	id_zona tinyint IDENTITY(1,1) NOT NULL,
	nom_zona nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT dm_zonas_pk PRIMARY KEY (id_zona)
);
