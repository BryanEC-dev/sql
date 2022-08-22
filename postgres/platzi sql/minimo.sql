select min(nombre) from platzi.alumnos

select tutor_id, min(nombre) from platzi.alumnos
group by tutor_id
order by tutor_id