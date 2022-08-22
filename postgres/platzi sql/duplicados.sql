
select (platzi.alumnos.*)::text, count(*)
from platzi.alumnos
group by platzi.alumnos.*

-----
select (
	platzi.alumnos.nombre,
	platzi.alumnos.apellido,
	platzi.alumnos.email,
	platzi.alumnos.colegiatura,
	platzi.alumnos.fecha_incorporacion,
	platzi.alumnos.carrera_id,
	platzi.alumnos.tutor_id

)::text, count(*)
from platzi.alumnos
group by (
			platzi.alumnos.nombre,
	platzi.alumnos.apellido,
	platzi.alumnos.email,
	platzi.alumnos.colegiatura,
	platzi.alumnos.fecha_incorporacion,
	platzi.alumnos.carrera_id,
	platzi.alumnos.tutor_id
)
having count(*) > 1

--------------------------------

select duplicados.id from (
				select  row_number() over (
								partition by 
								nombre, 
								apellido,
								email,
								colegiatura,
								fecha_incorporacion,
								carrera_id,
								tutor_id
					order by id asc
							) as row,
				* from platzi.alumnos 
) as duplicados where duplicados.row > 1

