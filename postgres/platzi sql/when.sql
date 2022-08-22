SELECT id, nombre, apellido, email,
	case 
	when colegiatura >= 3500 then 'colegiatura alta'  
	when colegiatura >= 2500 then 'colegiatura media'
	else 'colegiatura baja' 
	end, 
	fecha_incorporacion, carrera_id, tutor_id
	FROM platzi.alumnos;