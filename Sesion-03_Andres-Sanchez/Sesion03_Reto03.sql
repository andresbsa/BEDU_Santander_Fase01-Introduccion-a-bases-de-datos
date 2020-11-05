USE tienda;

# Obtener el puesto de un empleado.
CREATE VIEW puestos AS
	SELECT e.id_empleado, e.nombre, e.apellido_paterno, e.id_puesto, p.nombre AS puesto
    FROM empleado AS e
    JOIN puesto AS p
	  ON e.id_puesto = p.id_puesto;

SELECT *
FROM puestos;

# Saber qué artículos ha vendido cada empleado.
CREATE VIEW empleado_articulos AS
	SELECT v.clave, e.nombre AS empleado, e.apellido_paterno, a.nombre AS articulo
    FROM venta AS v
    JOIN empleado AS e
      ON v.id_empleado = e.id_empleado
	JOIN articulo AS a
      ON v.id_articulo = a.id_articulo
	ORDER BY v.clave;

SELECT *
FROM empleado_articulos;

# Saber qué puesto ha tenido más ventas.
CREATE VIEW puesto_ventas AS
	SELECT p.nombre AS puesto, count(v.clave) AS ventas
    FROM empleado AS e
    JOIN venta AS v
      ON e.id_empleado = v.id_empleado
	JOIN puesto AS p
	  ON e.id_puesto = p.id_puesto
	GROUP BY p.nombre;

SELECT *
FROM puesto_ventas
ORDER BY ventas DESC LIMIT 1;
