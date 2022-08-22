---- el primero: consultar el primer registro 
select * from platzi.alumnos 
fetch first 5 rows only;

select * from platzi.alumnos
limit 1;

-- windown function 

select * from 
(
	select row_number() over() as row_id,  * from platzi.alumnos
) as alumnos_with_row_nums where row_id <= 5 

