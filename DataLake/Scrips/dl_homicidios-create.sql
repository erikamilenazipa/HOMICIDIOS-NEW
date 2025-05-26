-- Crear tabla de productos con campos FECHA_HECHO, COD_DEPTO, DEPARTAMENTO, COD_MUNI, MUNICIPIO, ZONA, SEXO, CANTIDAD.
-- Es importante definir claves primarias y restricciones de integridad para garantizar datos consistentes y facilitar las consultas.


IF OBJECT_ID('dbo.DL_Homicidios', 'U') IS NULL
BEGIN
	CREATE TABLE dbo.DL_Homicidios (
		FECHA_HECHO date NULL,
		COD_DEPTO tinyint NULL,
		DEPARTAMENTO nvarchar(60) NULL,
		COD_MUNI int NULL,
		MUNICIPIO nvarchar(30) NULL,
		ZONA nvarchar(10) NULL,
		SEXO nvarchar(20) NULL,
		CANTIDAD tinyint NULL
	);
END;
