select int4range(1,20) @>31

-- existen valores iguales entre estos rangos
select numrange(11.1, 22.2) && numrange(20.0, 30.0)

select upper(int8range(15,25));
select lower(int8range(15,25));

select int4range(10,20) * int4range(15,25);

select isEmpty(numrange(1,5));


select * from platzi.alumnos 
where int4range(10,20) @> tutor_id;


select numrange(
	(select min(tutor_id) from platzi.alumnos),
	(select max(tutor_id) from platzi.alumnos)
) * numrange(
	(select min(carrera_id) from platzi.alumnos),
	(select max(carrera_id) from platzi.alumnos)
	);