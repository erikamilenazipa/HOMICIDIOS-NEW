-- Crear tabla de productos con campos id_sexo, NomSexo.
-- Es importante definir claves primarias y restricciones de integridad para garantizar datos consistentes y facilitar las consultas.


CREATE TABLE DataWarehouse.dbo.dim_sexo (
	id_sexo tinyint IDENTITY(1,1) NOT NULL,
	NomSexo nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT dim_sexo_pk PRIMARY KEY (id_sexo)
);
