IF OBJECT_ID('dbo.DL_Departamentos', 'U') IS NULL
BEGIN
	CREATE TABLE dbo.DL_Departamentos (
		COD_DPTO tinyint NULL,
		NOM_DPTO nvarchar(60) NULL,
		LATITUD float NULL,
		LONGITUD float NULL,
		GeoDepartamento nvarchar(35) NULL
	);
END;
