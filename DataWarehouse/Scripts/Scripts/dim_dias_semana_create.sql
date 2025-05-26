-- Crear tabla de productos con campos DiaSemana, NomDiaSemana, NomCortoDiaSemana.
-- Es importante definir claves primarias y restricciones de integridad para garantizar datos consistentes y facilitar las consultas.

CREATE TABLE DataWarehouse.dbo.dim_Dias_Semana (
	DiaSemana tinyint IDENTITY(1,1) NOT NULL,
	NomDiaSemana nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	NomCortoDiaSemana char(3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT DIM_Dias_Semana_PK PRIMARY KEY (DiaSemana)
);
