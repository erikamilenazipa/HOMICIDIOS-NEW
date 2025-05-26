-- Crear tabla de productos con campos COD_DPTO, NOM_DPTO, COD_MPIO, NOM_MPIO, TIPO, LATITUD, LONGITUD, GeoMunicipio.
-- Es importante definir claves primarias y restricciones de integridad para garantizar datos consistentes y facilitar las consultas.


IF OBJECT_ID('dbo.DL_Municipios', 'U') IS NULL
BEGIN
	CREATE TABLE dbo.DL_Municipios (
		COD_DPTO tinyint NULL,
		NOM_DPTO nvarchar(60) NULL,
		COD_MPIO int NULL,
		NOM_MPIO nvarchar(30) NULL,
		TIPO nvarchar(25) NULL,
		LATITUD float NULL,
		LONGITUD float NULL,
		GeoMunicipio nvarchar(40) NULL
	);
END;
