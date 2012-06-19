
INSERT INTO sucursales(codigo_sucursal, nombre, ciudad, c_autonoma) VALUES (1,'Santa Cruz', 'Sevilla', 'Andalucia');
INSERT INTO sucursales(codigo_sucursal, nombre, ciudad, c_autonoma) VALUES (2,'Palacios Nazaries','Granada','Andalucia');
INSERT INTO sucursales(codigo_sucursal, nombre, ciudad, c_autonoma) VALUES (3,'Tacita de plata','Cadiz','Andalucia');
INSERT INTO sucursales(codigo_sucursal, nombre, ciudad, c_autonoma) VALUES (4,'Almudena','Madrid','Madrid');
INSERT INTO sucursales(codigo_sucursal, nombre, ciudad, c_autonoma) VALUES (5,'El Cid','Burgos','Castilla-Leon');
INSERT INTO sucursales(codigo_sucursal, nombre, ciudad, c_autonoma) VALUES (6,'Puente de la Reina','Logrono','La Rioja');
INSERT INTO sucursales(codigo_sucursal, nombre, ciudad, c_autonoma) VALUES (7,'Catedral del Mar','Barcelona','Cataluna');
INSERT INTO sucursales(codigo_sucursal, nombre, ciudad, c_autonoma) VALUES (8,'Dama de Elche','Alicante','Pais Valenciano');
INSERT INTO sucursales(codigo_sucursal, nombre, ciudad, c_autonoma) VALUES (9,'La Cartuja','Palma de Mallorca','Baleares');
INSERT INTO sucursales(codigo_sucursal, nombre, ciudad, c_autonoma) VALUES (10,'Meigas','La Coruna','Galicia');
INSERT INTO sucursales(codigo_sucursal, nombre, ciudad, c_autonoma) VALUES (11,'La Concha','San Sebastian','Pais Vasco');
INSERT INTO sucursales(codigo_sucursal, nombre, ciudad, c_autonoma) VALUES (12,'Don Pelayo','Oviedo','Asturias');



INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (01, '11111111', 'Raul', TO_DATE('21-09-1990','DD-MM-YYYY'), 'Sierpes 37', 'Sevilla', 2000, 1);
INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (02, '22222222', 'Federico', TO_DATE('25-08-1989','DD-MM-YYYY'), 'Emperatriz 25', 'Sevilla', 1800, 1);
INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (03, '33333333', 'Natalia', TO_DATE('30-01-1992','DD-MM-YYYY'), 'Ronda 126', 'Granada', 2000, 2);
INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (04, '44444444', 'Amalia', TO_DATE('13-02-1993','DD-MM-YYYY'), 'San Matias 23', 'Granada', 1800, 2);
INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (05, '55555555', 'Susana', TO_DATE('01-10-1998','DD-MM-YYYY'), 'Zoraida 5', 'Cadiz', 2000, 3);
INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (06, '66666666', 'Gonzalo', TO_DATE('01-01-1987','DD-MM-YYYY'), 'Tartesos 9', 'Cadiz', 1800, 3);
INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (07, '77777777', 'Agustin', TO_DATE('05-05-1999','DD-MM-YYYY'), 'Pablo Neruda 84', 'Madrid', 2000, 4);
INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (08, '88888888', 'Eduardo', TO_DATE('06-06-1999','DD-MM-YYYY'), 'Alcala 8',  'Madrid', 1800, 4);
INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (09, '99999999', 'Alberto', TO_DATE('05-09-2000','DD-MM-YYYY'), 'Las Huelgas 15', 'Burgos', 2000, 5);
INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (10, '10101010', 'Soraya', TO_DATE('04-10-1997','DD-MM-YYYY'), 'Jimena 2',  'Burgos', 1800, 5);
INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (11, '01010101', 'Manuel', TO_DATE('06-07-1996','DD-MM-YYYY'), 'Estrella 26', 'Logrono', 2000, 6);
INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (12, '12121212', 'Emilio', TO_DATE('05-11-1998','DD-MM-YYYY'), 'Constitucion 3', 'Logrono', 1800, 6);
INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (13, '13131313', 'Patricia', TO_DATE('04-12-1999','DD-MM-YYYY'), 'Diagonal 132', 'Barcelona', 2000, 7);
INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (14, '14141414', 'Ines', TO_DATE('07-03-1998','DD-MM-YYYY'), 'Colon 24',  'Barcelona', 1800, 7);
INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (15, '15151515', 'Carlos', TO_DATE('16-06-1999','DD-MM-YYYY'), 'Palmeras 57', 'Alicante', 2000, 8);
INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (16, '16161616', 'Dolores', TO_DATE('14-05-1998','DD-MM-YYYY'), 'Calatrava 9', 'Alicante', 1800, 8);
INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (17, '17171717', 'Elias', TO_DATE('13-06-1999','DD-MM-YYYY'), 'Arenal 17', 'P.Mallorca', 2000, 9);
INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (18, '18181818', 'Concepcion', TO_DATE('18-08-2000','DD-MM-YYYY'), 'Campastilla 14', 'P.Mallorca', 1800, 9);
INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (19, '19191919', 'Gabriel', TO_DATE('19-09-1995','DD-MM-YYYY'), 'Hercules 19', 'La Coruna', 2000, 10);
INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (20, '20202020', 'Octavio', TO_DATE('20-10-1997','DD-MM-YYYY'), 'Maria Pita 45', 'La Coruna', 1800, 10);
INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (21, '21212121', 'Cesar', TO_DATE('13-11-2001','DD-MM-YYYY'), 'Las Penas 41', 'San Sebastian',2000, 11);
INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (22, '23232323', 'Julia', TO_DATE('24-03-2000','DD-MM-YYYY'), 'San Cristobal 5', 'San Sebastian',1800, 11);
INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (23, '24242424', 'Claudia', TO_DATE('13-02-2002','DD-MM-YYYY'), 'Santa Cruz 97', 'Oviedo', 2000, 12);
INSERT INTO empleados(codigo_empleado, dni, nombre, fecha_in, direccion, ciudad_residencia, salario, sucursal_destino) VALUES
 (24, '25252525', 'Mario', TO_DATE('23-04-1997','DD-MM-YYYY'), 'Naranco 21', 'Oviedo', 1800, 12);


UPDATE sucursales SET director = 1 WHERE codigo_sucursal = 1;
UPDATE sucursales SET director = 3 WHERE codigo_sucursal = 2;
UPDATE sucursales SET director = 5 WHERE codigo_sucursal = 3;
UPDATE sucursales SET director = 7 WHERE codigo_sucursal = 4;
UPDATE sucursales SET director = 9 WHERE codigo_sucursal = 5;
UPDATE sucursales SET director = 11 WHERE codigo_sucursal = 6;
UPDATE sucursales SET director = 13 WHERE codigo_sucursal = 7;
UPDATE sucursales SET director = 15 WHERE codigo_sucursal = 8;
UPDATE sucursales SET director = 17 WHERE codigo_sucursal = 9;
UPDATE sucursales SET director = 19 WHERE codigo_sucursal = 10;
UPDATE sucursales SET director = 21 WHERE codigo_sucursal = 11;
UPDATE sucursales SET director = 23 WHERE codigo_sucursal = 12;



INSERT INTO clientes(codigo_cliente,dni,nombre,direccion,tipo,c_autonoma) VALUES
 (1,'26262626A','Hipercor','Virgen de la Capilla 32, Jaen','A','Andalucia');
INSERT INTO clientes(codigo_cliente,dni,nombre,direccion,tipo,c_autonoma) VALUES
 (2,'27272727B','Restaurante Cacereno','San Marcos 41, Caceres','B','Extremadura');
INSERT INTO clientes(codigo_cliente,dni,nombre,direccion,tipo,c_autonoma) VALUES
 (3,'28282828C','Continente','San Francisco 37, Vigo','A','Galicia');
INSERT INTO clientes(codigo_cliente,dni,nombre,direccion,tipo,c_autonoma) VALUES
 (4,'29292929D','Restaurante El Asturiano', 'Covadonga 24, Luarca','B','Asturias');
INSERT INTO clientes(codigo_cliente,dni,nombre,direccion,tipo,c_autonoma) VALUES
 (5,'30303030E','Restaurante El Payes', 'San Lucas 33, Mahon','B','Baleares');
INSERT INTO clientes(codigo_cliente,dni,nombre,direccion,tipo,c_autonoma) VALUES
 (6,'31313131F','Mercadona','Desamparados 29, Castellon','A','Pais Valenciano');
INSERT INTO clientes(codigo_cliente,dni,nombre,direccion,tipo,c_autonoma) VALUES
 (7,'32323232G','Restaurante Candido', 'Acueducto 1, Segovia','B','Castilla-Leon');
INSERT INTO clientes(codigo_cliente,dni,nombre,direccion,tipo,c_autonoma) VALUES
 (8,'34343434H','Restaurante Las Vidrieras', 'Cervantes 16, Almagro','B','Castilla-La Mancha');



INSERT INTO productores VALUES (1,'Justiniano Brinon','Ramon y Cajal 9, Valladolid');
INSERT INTO productores VALUES (2,'Marcelino Pena','San Francisco 7, Pamplona');
INSERT INTO productores VALUES (3,'Paloma Riquelme','Antonio Gaudi 23, Barcelona');
INSERT INTO productores VALUES (4,'Amador Laguna','Juan Ramon Jimenez 17, Cordoba');
INSERT INTO productores VALUES (5,'Ramon Garbajosa','Gran Via de Colon 121, Madrid');
INSERT INTO productores VALUES (6,'Carlota Fuentes','Cruz de los angeles 29, Oviedo');

INSERT INTO vinos(codigo_vino,marca,ano,denominacion,graduacion,vinedo,c_producida,cod_productor,c_autonoma,pais) VALUES
 (01, 'Vega Sicilia',1990,'Ribera del Duero',12.5,'Castillo Blanco',200,1,'Castilla-Leon','Espana');
INSERT INTO vinos(codigo_vino,marca,ano,denominacion,graduacion,vinedo,c_producida,cod_productor,c_autonoma,pais) VALUES
 (02, 'Vega Sicilia',1995,'Ribera del Duero',12.5,'Castillo Blanco',100,1,'Castilla-Leon','Espana');
INSERT INTO vinos(codigo_vino,marca,ano,denominacion,graduacion,vinedo,c_producida,cod_productor,c_autonoma,pais) VALUES
 (03, 'Marques de Caceres',1999,'Rioja',11,'Santo Domingo',200,2,'La Rioja','Espana');
INSERT INTO vinos(codigo_vino,marca,ano,denominacion,graduacion,vinedo,c_producida,cod_productor,c_autonoma,pais) VALUES
 (04, 'Marques de Caceres',2002,'Rioja',11.5,'Santo Domingo',250,2,'La Rioja','Espana');
INSERT INTO vinos(codigo_vino,marca,ano,denominacion,graduacion,vinedo,c_producida,cod_productor,c_autonoma,pais) VALUES
 (05, 'Rene Barbier',2005,'Penedes',11.5,'Virgen de Estrella',200,3,'Cataluna','Espana');
INSERT INTO vinos(codigo_vino,marca,ano,denominacion,graduacion,vinedo,c_producida,cod_productor,c_autonoma,pais) VALUES
 (06, 'Rene Barbier',2006,'Penedes',11,'Virgen de Estrella',250,3,'Cataluna','Espana');
INSERT INTO vinos(codigo_vino,marca,ano,denominacion,graduacion,vinedo,c_producida,cod_productor,c_autonoma,pais) VALUES
 (07, 'Rias Baixas',2005,'Albarino',9.5,'Santa Compana',150,4,'Galicia','Espana');
INSERT INTO vinos(codigo_vino,marca,ano,denominacion,graduacion,vinedo,c_producida,cod_productor,c_autonoma,pais) VALUES
 (08, 'Rias Baixas',2006,'Albarino',9,'Santa Compana',100,4,'Galicia','Espana');
INSERT INTO vinos(codigo_vino,marca,ano,denominacion,graduacion,vinedo,c_producida,cod_productor,c_autonoma,pais) VALUES
 (09, 'Cordoba Bella',2003,'Montilla',12,'Mezquita Roja',200,4,'Andalucia','Espana');
INSERT INTO vinos(codigo_vino,marca,ano,denominacion,graduacion,vinedo,c_producida,cod_productor,c_autonoma,pais) VALUES
 (10, 'Tio Pepe',2001,'Jerez',12.5,'Campo Verde',200,4,'Andalucia','Espana');
INSERT INTO vinos(codigo_vino,marca,ano,denominacion,graduacion,vinedo,c_producida,cod_productor,c_autonoma,pais) VALUES
 (11, 'Bella Italia',2004,'Lambrusco',10,'Rosa de Bulgaria',150,1,'Calabria','Italia');
INSERT INTO vinos(codigo_vino,marca,ano,denominacion,graduacion,vinedo,c_producida,cod_productor,c_autonoma,pais) VALUES
 (12, 'Cataro',2000,'Borgona',12.5,'Aquitania',150,2,'Languedoc','Francia');
INSERT INTO vinos(codigo_vino,marca,ano,denominacion,graduacion,vinedo,c_producida,cod_productor,c_autonoma,pais) VALUES
 (13, 'Vega Murciana',2003,'Jumilla',11.5,'Vega Verde',250,5,'Murcia','Espana');
INSERT INTO vinos(codigo_vino,marca,ano,denominacion,graduacion,vinedo,c_producida,cod_productor,c_autonoma,pais) VALUES
 (14, 'Tablas de Daimiel',2000,'Valdepenas',11.5,'Laguna Azul',300,5,'Castilla-La Mancha','Espana');
INSERT INTO vinos(codigo_vino,marca,ano,denominacion,graduacion,vinedo,c_producida,cod_productor,c_autonoma,pais) VALUES
 (15, 'Santa Maria',2005,null,10,'Monte Astur',200,6,'Asturias','Espana');
INSERT INTO vinos(codigo_vino,marca,ano,denominacion,graduacion,vinedo,c_producida,cod_productor,c_autonoma,pais) VALUES
 (16, 'Freixenet',2004,'Cava',7.5,'Valle Dorado',250,6,'Cataluna','Espana');
INSERT INTO vinos(codigo_vino,marca,ano,denominacion,graduacion,vinedo,c_producida,cod_productor,c_autonoma,pais) VALUES
 (17, 'Estela',2002,'Carinena',10.5,'San Millan',200,3,'Aragon','Espana');
INSERT INTO vinos(codigo_vino,marca,ano,denominacion,graduacion,vinedo,c_producida,cod_productor,c_autonoma,pais) VALUES
 (18, 'Uva dorada',2004,'Malaga',13,'Axarquia',200,5,'Andalucia','Espana');
INSERT INTO vinos(codigo_vino,marca,ano,denominacion,graduacion,vinedo,c_producida,cod_productor,c_autonoma,pais) VALUES
 (19, 'Meigas Bellas',2006,'Riveiro',8.5,'Mayor Santiago',250,6,'Galicia','Espana');
INSERT INTO vinos(codigo_vino,marca,ano,denominacion,graduacion,vinedo,c_producida,cod_productor,c_autonoma,pais) VALUES
 (20, 'Altamira',2004,null,9.5,'Cuevas',300,1,'Cantabria','Espana');
INSERT INTO vinos(codigo_vino,marca,ano,denominacion,graduacion,vinedo,c_producida,cod_productor,c_autonoma,pais) VALUES
 (21, 'Virgen negra',2005,null,10.5,'Guanche',300,3,'Canarias','Espana');

INSERT INTO vende (cod_vino, cod_sucursal) VALUES (4, 1);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (5, 2);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (14, 3);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (2, 2);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (7, 1);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (6, 2);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (16, 3);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (3,10);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (6,10);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (13,11);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (20,12);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (8,12);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (17,12);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (11,10);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (12, 7);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (16, 7);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (18, 9);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (15, 8);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (9, 8);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (19, 9);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (21, 7);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (1, 4);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (7, 5);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (10, 4);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (12, 5);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (14, 6);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (4, 6);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (6, 4);
INSERT INTO vende (cod_vino, cod_sucursal) VALUES (11, 5);

INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (1, 4, 1,100,TO_DATE('12-06-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (1, 5, 2,150,TO_DATE('11-07-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (1,14, 3,200,TO_DATE('15-07-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (2, 2, 2, 20,TO_DATE('03-04-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (2, 7, 1, 50,TO_DATE('04-05-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (2, 6, 2, 40,TO_DATE('15-09-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (2,16, 3,100,TO_DATE('20-10-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (3, 3,10,100,TO_DATE('21-02-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (3, 6,10, 90,TO_DATE('02-08-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (3,13,11,200,TO_DATE('03-10-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (3,20,12,150,TO_DATE('04-11-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (4, 8,12, 50,TO_DATE('01-03-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (4,17,12, 70,TO_DATE('03-05-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (4,11,10, 30,TO_DATE('05-07-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (5,12, 7,100,TO_DATE('23-06-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (5,16, 7, 50,TO_DATE('14-08-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (5,18, 9,100,TO_DATE('03-12-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (6,15, 8,100,TO_DATE('13-01-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (6, 9, 8,150,TO_DATE('19-02-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (6,19, 9,160,TO_DATE('27-06-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (6,21, 7,200,TO_DATE('17-09-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (7, 1, 4, 80,TO_DATE('15-02-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (7, 7, 5, 50,TO_DATE('17-04-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (7,10, 4, 70,TO_DATE('21-06-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (7,12, 5, 40,TO_DATE('23-07-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (8,14, 6, 50,TO_DATE('11-01-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (8, 4, 6, 60,TO_DATE('14-03-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (8, 6, 4, 70,TO_DATE('21-05-2009','DD-MM-YYYY'));
INSERT INTO suministra(cod_cliente, cod_vino, cod_sucursal, cantidad, fecha) VALUES (8, 11, 5, 40,TO_DATE('17-09-2009','DD-MM-YYYY'));


commit;
