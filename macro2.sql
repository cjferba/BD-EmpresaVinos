--2 Recibo el cod_productor y muestro: codigo, marca, año cosecha de los vinos que el produce,
-- y tambien la cantidad total suministrada de cada vino a clientes de Extremadura, Baleares, Pais Vasco
-- Lectura
accept cod_product INT prompt 'Diga el codigo del productor:';

-- Consulta
SELECT v.codigo_vino, v.marca, v.ano, cantidad_total
FROM (SELECT cod_vino, SUM(cantidad) cantidad_total FROM suministra WHERE cod_cliente IN (SELECT codigo_cliente FROM clientes WHERE c_autonoma IN 
            ('Extremadura', 'Pais Valenciano', 'Baleares')) GROUP BY cod_vino) sm, 
     (SELECT * FROM vinos WHERE cod_productor = &cod_product) v
WHERE
     sm.cod_vino=v.codigo_vino;

