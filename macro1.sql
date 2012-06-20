-- 1	Listar los clientes(nombre y direccion) de Andalucia o Castilla-La Mancha y las sucursales(nombre y ciudad) a los que se le ha suministrado 
---vino "Tablas de Daimiel" entre las fechas dadas
-- Lectura
accept fechaIni DATE FORMAT dd/mm/yyyy prompt 'Fecha de inicio(dd/mm/yyyy):';
accept fechaFin DATE FORMAT dd/mm/yyyy prompt 'Fecha final(dd/mm/yyyy):';
-- Consulta
SELECT c.nombre, c.direccion, s.nombre, s.ciudad
FROM
	(SELECT * FROM clientes WHERE c_autonoma IN ('Andalucia', 'Castilla-La Mancha')) c,
	sucursales s,
	(SELECT * FROM suministra WHERE cod_vino IN (SELECT codigo_vino FROM vinos WHERE marca='Tablas de Daimiel') AND (fecha BETWEEN '&fechaIni' AND '&fechaFin')) sm
WHERE
	c.codigo_cliente=sm.cod_cliente AND s.codigo_sucursal=sm.cod_sucursal;