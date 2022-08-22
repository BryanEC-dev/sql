
select * from (
select 
fecha_incorporacion
from platzi.alumnos
	where date_part('MONTH', fecha_incorporacion) = 05
	AND date_part('YEAR', fecha_incorporacion) = 2018
) as horas where hour  > 17