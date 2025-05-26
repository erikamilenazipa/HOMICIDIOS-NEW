-- Crear tabla de productos con campos Annio, Mes, Dia, Semana, Trimestre, DiaSeamama, fechaDeHecho.
-- Es importante definir claves primarias y restricciones de integridad para garantizar datos consistentes y facilitar las consultas.

CREATE TABLE DataWarehouse.dbo.dim_fechas (
	Annio int NOT NULL,
	Mes tinyint NOT NULL,
	Dia tinyint NOT NULL,
	Semana tinyint NOT NULL,
	Trimestre tinyint NOT NULL,
	DiaSeamama tinyint NOT NULL,
	fechaDeHecho date NOT NULL,
	CONSTRAINT dim_fechas_pk PRIMARY KEY (fechaDeHecho),
	CONSTRAINT dim_fechas_dim_Dias_Semana_FK FOREIGN KEY (DiaSeamama) REFERENCES DataWarehouse.dbo.dim_Dias_Semana(DiaSemana),
	CONSTRAINT dim_fechas_dim_Meses_FK FOREIGN KEY (Mes) REFERENCES DataWarehouse.dbo.dim_Meses(Mes),
	CONSTRAINT dim_fechas_dim_Trimestres_FK FOREIGN KEY (Trimestre) REFERENCES DataWarehouse.dbo.dim_Trimestres(Trimestre)
);
