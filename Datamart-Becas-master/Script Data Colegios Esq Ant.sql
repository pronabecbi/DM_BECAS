SELECT top 100 * FROM db_pronabec..pos_rendimiento_academico
SELECT top 100 * FROM db_pronabec..pos_siagie_alumno_nota

SELECT top 100 * 
FROM pos_rendimiento_academico acaren
inner join Postulacion pos on pos.Id_Persona = acaren.Id_Persona

select *
from Postulacion

select * 
from pos_rendimiento_academico
where Id_Concurso is null

-- DIFERENCIAS ENTRE TABLA pos_rendimiento_academico Y QUERY siguiente.

select pos.Id_Postulacion
from Convocatoria con
inner join Postulacion pos on pos.Id_Convocatoria = con.Id_Convocatoria
inner join pos_rendimiento_academico acaren on acaren.Id_Concurso = con.Id_Concurso and acaren.Id_Persona = pos.Id_Persona
order by Anio desc
