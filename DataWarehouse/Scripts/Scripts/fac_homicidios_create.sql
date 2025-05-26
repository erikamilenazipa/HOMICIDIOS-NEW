-- Crear tabla de productos con campos idHomicidio, fechaHecho, COD_MPIO, id_zona, id_sexo, Cantidad, Trimestre, Mes, DiaSemana.
-- Es importante definir claves primarias y restricciones de integridad para garantizar datos consistentes y facilitar las consultas.


CREATE TABLE DataWarehouse.dbo.fac_homicidios (
	idHomicidio int IDENTITY(1,1) NOT NULL,
	fechaHecho date NOT NULL,
	COD_MPIO int NOT NULL,
	id_zona tinyint NOT NULL,
	id_sexo tinyint NOT NULL,
	Cantidad tinyint NOT NULL,
	Trimestre tinyint NULL,
	Mes tinyint NULL,
	DiaSemana tinyint NULL,
	CONSTRAINT fac_homicidios_pk PRIMARY KEY (idHomicidio),
	CONSTRAINT fac_homicidios_dim_Dias_Semana_FK FOREIGN KEY (DiaSemana) REFERENCES DataWarehouse.dbo.dim_Dias_Semana(DiaSemana),
	CONSTRAINT fac_homicidios_dim_Meses_FK FOREIGN KEY (Mes) REFERENCES DataWarehouse.dbo.dim_Meses(Mes),
	CONSTRAINT fac_homicidios_dim_Municipios_FK FOREIGN KEY (COD_MPIO) REFERENCES DataWarehouse.dbo.dim_Municipios(CodMpio),
	CONSTRAINT fac_homicidios_dim_Trimestres_FK FOREIGN KEY (Trimestre) REFERENCES DataWarehouse.dbo.dim_Trimestres(Trimestre),
	CONSTRAINT fac_homicidios_dim_fechas_FK FOREIGN KEY (fechaHecho) REFERENCES DataWarehouse.dbo.dim_fechas(fechaDeHecho),
	CONSTRAINT fac_homicidios_dim_sexo_FK FOREIGN KEY (id_sexo) REFERENCES DataWarehouse.dbo.dim_sexo(id_sexo),
	CONSTRAINT fac_homicidios_dm_zonas_FK FOREIGN KEY (id_zona) REFERENCES DataWarehouse.dbo.dm_zonas(id_zona)
);
