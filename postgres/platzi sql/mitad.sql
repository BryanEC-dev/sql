-- traer la segunda mitad de la tabla

select * from platzi.alumnos
offset (select ( count(*) / 2) as mitad  from platzi.alumnos);


select * from (
select ROW_NUMBER() OVER() as row_id, * from platzi.alumnos
) as mitas where row_id > 500;

select * from platzi.alumnos where id > (select ( count(*) / 2) as mitad  from platzi.alumnos);




