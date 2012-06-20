--3 Recibo el codigo de una sucursal, muestro codigo, nombre de sus clientes, su tipo, 
-- la cantidad media de vinos de importacion que se le ha suministrado a cada uno de ellos.

-- Lectura
accept cod_sucur INT prompt 'Introduzca el codigo de la sucursal:';
-- Consulta
SELECT
	c.codigo_cliente, c.nombre, c.tipo, avg(sm.cantidad)
FROM
	clientes c,
	(SELECT * FROM suministra WHERE (cod_sucursal = &cod_sucur AND cod_vino IN 
           (SELECT codigo_vino FROM vinos WHERE (vinos.pais <> 'Espana')))) sm
WHERE c.codigo_cliente=sm.cod_cliente
GROUP BY c.codigo_cliente, c.nombre, c.tipo;