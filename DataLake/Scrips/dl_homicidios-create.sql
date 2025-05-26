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
