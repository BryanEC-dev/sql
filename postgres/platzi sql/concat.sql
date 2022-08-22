select concat (t.nombre, ' ', t.apellido) as tutor, 
	count(a.nombre) as alumnos, 
	from platzi.alumnos as a 
	inner join platzi.alumnos as t on a.tutor_id = t.id
	group by tutor
	order by alumnos
	