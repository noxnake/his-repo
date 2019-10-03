
-- VISTA PRODUCCION PERSONAL HIS_ATENCIONES

create view v_produc_Personal
as
	SELECT NUM_DOC_ATIENDE, RENAES, [Turno atención], CONVERT(date , CONCAT(Año,+'-'+Mes,+'-'+Dia)) as fecha, 
	COUNT(id_cita) as nro_atenciones FROM [dbo].[HIS_ATENCIONES]
	GROUP BY NUM_DOC_ATIENDE, RENAES, [Turno atención], Dia, Mes, Año
go
--
select* from v_produc_Personal
