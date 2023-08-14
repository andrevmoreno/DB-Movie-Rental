-- Las 10 peliculas mas vendidas
SELECT titulo,COUNT(cantidad) AS recaudo
FROM pagos AS p
JOIN rentas AS r ON p.renta_id = r.renta_id
JOIN inventarios AS i ON i.inventario_id = r.inventario_id
JOIN peliculas AS pe ON pe.pelicula_id = i.pelicula_id
 GROUPBY titulo
 ORDERBY recaudo DESC
 LIMIT10;
 
-- Categorias con mas ventas
 SELECT c.nombre AS nombre_categoria,COUNT(cantidad) AS recaudo
 FROM categorias as c
 JOIN peliculas_categorias as pc ON c.categoria_id = pc.categoria_id
 JOIN peliculas AS pe ON pe.pelicula_id = pc.pelicula_id
 JOIN inventarios AS i ON i.pelicula_id = pe.pelicula_id
 JOIN rentas AS r ON r.inventario_id = i.inventario_id
 JOIN pagos AS pa ON pa.renta_id = r.renta_id
 GROUPBY nombre_categoria
 ORDERBY recaudo DESC ;
 
-- Empleado con mas ventas
SELECTCOUNT(cantidad) AS ventas, CONCAT(e.nombre,'',e.apellido) AS vendedor
FROM empleados AS e
JOIN rentas AS r ON e.empleado_id = r.empleado_id
JOIN pagos AS p ON r.renta_id = p.renta_id
GROUPBY vendedor
ORDERBY ventas DESC
LIMIT1;

-- Contribución por categoría (Margen):

-- SELECT SUM(cantidad) FROM pagos; --> 61312.04 (Total vendido)
SELECT nombre, ROUND((SUM(cantidad)/(SELECTSUM(cantidad) FROM pagos))*100, 3) AS margen_porcentual_por_categoria FROM categorias
	LEFTJOIN peliculas_categorias USING(categoria_id)
	INNERJOIN peliculas USING(pelicula_id) INNERJOIN inventarios USING(pelicula_id)
	INNERJOIN rentas USING(inventario_id) INNERJOIN pagos USING(renta_id) GROUPBY nombre ORDERBY margen_porcentual_por_categoria DESC;