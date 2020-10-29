#Usando la base de datos tienda, escribe consultas que permitan responder las siguientes preguntas.
USE tienda;
SHOW TABLES;

#¿Cuál es el promedio de salario de los puestos?
SELECT *
FROM puesto;
SELECT avg(salario)
FROM puesto;

#¿Cuántos artículos incluyen la palabra Pasta en su nombre?
SELECT *
FROM articulo;
SELECT count(nombre)
FROM articulo WHERE nombre LIKE '%Pasta%'; 

#¿Cuál es el salario mínimo y máximo?
SELECT min(salario), max(salario)
FROM puesto;

#¿Cuál es la suma del salario de los últimos cinco puestos agregados?
DESCRIBE puesto;
SELECT max(id_puesto) - 5
FROM puesto;
SELECT sum(salario)
FROM puesto
WHERE id_puesto > 995;