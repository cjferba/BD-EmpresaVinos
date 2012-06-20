--1 Dar de alta a un empleado

CREATE OR REPLACE PROCEDURE alta_empleado (cod_empleado IN INT, dni IN CHAR, nombre IN VARCHAR2, fecha_in IN DATE, salario IN FLOAT, direccion IN VARCHAR2, ciudad IN VARCHAR2, cod_sucursal IN INT)
IS
BEGIN
    INSERT INTO empleados VALUES (cod_empleado, dni, nombre, fecha_in, salario, direccion, ciudad, cod_sucursal);

END;
/

--2 Dar de baja a un empleado
--Si el empleado es el director de una sucursal entonces pongo el director de la sucursal a NULL
CREATE OR REPLACE PROCEDURE baja_empleado (cod_empleado IN INT)
IS
BEGIN
    UPDATE sucursales SET director=NULL WHERE director=cod_empleado;
    DELETE FROM empleados WHERE codigo_empleado=cod_empleado;
END;
/

--3 Modificar el salario de un empleado
CREATE OR REPLACE PROCEDURE salario_empleado (cod_empleado IN INT, salario_nuevo IN FLOAT)
IS
BEGIN
    UPDATE empleados SET salario=salario_nuevo WHERE codigo_empleado=cod_empleado;
END;
/

--4 Dar de alta una nueva sucursal
CREATE OR REPLACE PROCEDURE alta_sucursal (cod_sucursal IN INT, nombre IN VARCHAR2, ciudad IN VARCHAR2, comunidad IN VARCHAR2)
IS
BEGIN
    INSERT INTO sucursales VALUES (cod_sucursal, nombre, ciudad, comunidad, NULL);
END;
/

--5 Cambiar director de una sucursal
CREATE OR REPLACE PROCEDURE director_sucursal (cod_sucursal IN INT, cod_director IN INT)
IS
BEGIN
    UPDATE sucursales SET director=cod_director WHERE  (codigo_sucursal=cod_sucursal);
END;
/

--6 Dar de alta a un nuevo cliente
CREATE OR REPLACE PROCEDURE alta_cliente (cod_cliente IN INT, dni IN CHAR, nombre IN VARCHAR2, direccion IN VARCHAR2, tipo IN CHAR, comunidad IN VARCHAR2)
IS
BEGIN
   INSERT INTO clientes VALUES (cod_cliente, dni, nombre, direccion, comunidad, tipo);

END;
/

--7 Dar de alta o actualizar un suministro
CREATE OR REPLACE PROCEDURE alta_suministro (cliente IN INT, sucursal IN INT, vino IN INT, fecha_nueva IN DATE, cantidad_nueva IN FLOAT)
IS
    cont INT;
BEGIN
        INSERT INTO suministra VALUES (cliente, sucursal, vino, fecha_nueva, cantidad_nueva);
END;
/

--8 Devolver suministro
--Si no se especifica la fecha se borraran todo los suministros
CREATE OR REPLACE PROCEDURE devolver_suministro (cliente IN INT, sucursal IN INT, vino IN INT, fecha_opcional IN DATE DEFAULT NULL)
IS
BEGIN
      IF(fecha_opcional IS NULL) THEN
          DELETE FROM suministra WHERE (cod_cliente=cliente AND cod_sucursal=sucursal AND cod_vino=vino);
      ELSE
          DELETE FROM suministra WHERE (cod_cliente = cliente AND cod_sucursal=sucursal AND cod_vino=vino AND fecha=fecha_opcional);
      END IF;
END;
/


--9 Dar de alta un nuevo vino
create or replace
PROCEDURE alta_vino (vino IN INT, marca IN VARCHAR2, ano_nuevo IN INT, denominacion in VARCHAR2 DEFAULT NULL, grado IN FLOAT, vinedo_pro IN VARCHAR2, c_autonoma IN VARCHAR2, pais IN VARCHAR2, c_producida IN FLOAT, productor IN INT)
IS
BEGIN
    INSERT INTO vinos VALUES (vino, marca, ano_nuevo, denominacion, grado, vinedo_pro, c_producida, c_producida, productor, c_autonoma, pais);
END;

/


--10 Dar de baja un vino

CREATE OR REPLACE PROCEDURE baja_vino (cod_vino IN INT)
IS
BEGIN
     DELETE FROM vinos WHERE codigo_vino=cod_vino;
END;
/

--11 Dar de alta un productor
CREATE OR REPLACE PROCEDURE alta_productor(productor IN INT, nombre IN VARCHAR, direccion IN VARCHAR)
IS
BEGIN
    INSERT INTO productores VALUES (productor, nombre, direccion);
END;
/


--12 Dar de baja un productor
--Si se puede dar de baja al productor, elimina todos sus vinos
CREATE OR REPLACE PROCEDURE baja_productor(productor IN INT)
IS
BEGIN
    DELETE FROM vinos WHERE (cod_productor = productor);
    DELETE FROM productores WHERE (codigo_productor=productor);
END;
/

commit;