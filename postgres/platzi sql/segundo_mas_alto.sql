-- La segunda colegiatura más alta 

select * from (
	select distinct colegiatura from platzi.alumnos order by colegiatura desc
) as colegiatura limit 1 offset 1

select distinct colegiatura from platzi.alumnos  order by colegiatura desc
limit 1 offset 1

select * from platzi.alumnos where tutor_id = 20 order by colegiatura desc


SELECT *
FROM platzi.alumnos AS datos_alumnos
INNER JOIN (
	SELECT DISTINCT colegiatura
	FROM platzi.alumnos
	WHERE tutor_id = 20
	ORDER BY colegiatura DESC
	LIMIT 1 OFFSET 1
) AS segunda_mayor_colegiatura
ON datos_alumnos.colegiatura  = segunda_mayor_colegiatura.colegiatura;


select * from platzi.alumnos  where colegiatura = 
(
	select distinct colegiatura from platzi.alumnos  order by colegiatura desc
limit 1 offset 1
)


select * from platzi.alumnos where tutor_id = 20 and colegiatura = 4800
select count(*) from platzi.alumnos where  colegiatura = 4800


select distinct colegiatura from platzi.alumnos  order by colegiatura desc
limit 3 

