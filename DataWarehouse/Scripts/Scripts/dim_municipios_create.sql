-- Crear tabla de productos con campos CodMpio, CodDpto, NomMpio, Latitud, Longitud.
-- Es importante definir claves primarias y restricciones de integridad para garantizar datos consistentes y facilitar las consultas.


CREATE TABLE DataWarehouse.dbo.dim_Municipios (
	CodMpio int NOT NULL,
	CodDpto tinyint NOT NULL,
	NomMpio nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Latitud float NOT NULL,
	Longitud float NOT NULL,
	CONSTRAINT DIM_Municipios_PK PRIMARY KEY (CodMpio),
	CONSTRAINT DIM_Municipios_DIM_Departamentos_FK FOREIGN KEY (CodDpto) REFERENCES DataWarehouse.dbo.dim_Departamentos(CodDpto)
);
