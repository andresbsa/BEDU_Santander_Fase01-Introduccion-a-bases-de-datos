#Usando la base de datos tienda, escribe consultas que permitan responder las siguientes preguntas.
USE tienda;

#¿Cuántos registros hay por cada uno de los puestos?
SELECT nombre, count(*)
FROM puesto
GROUP BY nombre ORDER BY nombre;

#¿Cuánto dinero se paga en total por puesto?
SELECT nombre, sum(salario)
FROM puesto
GROUP BY nombre ORDER BY nombre;

#¿Cuál es el número total de ventas por vendedor?
SELECT id_empleado, count(*) as ventas
FROM venta
GROUP BY id_empleado;

#¿Cuál es el número total de ventas por artículo?
SELECT id_articulo, count(*) as ventas
FROM venta
GROUP BY id_articulo;