#Usando la base de datos tienda, escribe consultas que permitan responder las siguientes preguntas.
USE tienda;
SHOW TABLES;

#¿Qué artículos incluyen la palabra Pasta en su nombre?
SELECT *
FROM articulo;
SELECT *
FROM articulo
WHERE nombre LIKE '%Pasta%';

#¿Qué artículos incluyen la palabra Cannelloni en su nombre?
SELECT *
FROM articulo
WHERE nombre LIKE '%Cannelloni%';

#¿Qué nombres están separados por un guión (-) por ejemplo Puree - Kiwi?
SELECT *
FROM articulo
WHERE nombre LIKE '% - %';

#¿Qué puestos incluyen la palabra Designer?
SELECT *
FROM puesto;
SELECT *
FROM puesto
WHERE nombre LIKE '%Designer%';

#Qué puestos incluyen la palabra Developer?
SELECT *
FROM puesto
WHERE nombre LIKE '%Developer%';