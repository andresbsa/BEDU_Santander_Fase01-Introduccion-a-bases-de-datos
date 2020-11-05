USE tienda;

# ¿Cuál es el nombre de los empleados que realizaron cada venta?
SELECT id_venta, clave, venta.id_empleado, nombre, apellido_paterno, apellido_materno
FROM venta
JOIN empleado
	ON venta.id_empleado = empleado.id_empleado
ORDER BY clave;

# ¿Cuál es el nombre de los artículos que se han vendido?
SELECT venta.clave, articulo.id_articulo, nombre
FROM venta
JOIN articulo
	ON venta.id_articulo = articulo.id_articulo
ORDER BY clave;

# ¿Cuál es el total de cada venta?
SELECT clave, round(sum(precio),2) AS total
FROM venta
JOIN articulo
	ON venta.id_articulo = articulo.id_articulo
GROUP BY clave
ORDER BY clave;