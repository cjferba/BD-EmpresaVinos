CREATE OR REPLACE TRIGGER salario_empleado
 BEFORE UPDATE OF salario ON empleados FOR EACH ROW
BEGIN 
 IF(:old.salario > :new.salario) THEN
  dbms_output.put_line('Estas intentando reducirle el sueldo a tu empleado en tiempos de crisis, accion no permitida');
  raise_application_error(-20008, 'No le puede reducir el sueldo al empleado');
 END IF;
EXCEPTION
 WHEN NO_DATA_FOUND THEN
  dbms_output.put_line('No se encontro el empleado que quiere modificar');
END;
/
--4 El director de una sucursal debe ser un empleado de esa sucursal
CREATE OR REPLACE TRIGGER director_sucursal
 BEFORE UPDATE OF director OR INSERT ON sucursales FOR EACH ROW
DECLARE
  cont INT;
BEGIN
  IF INSERTING THEN
      SELECT COUNT(*) INTO cont FROM empleados WHERE (:new.codigo_sucursal = empleados.sucursal_destino AND :new.director = empleados.codigo_empleado);
      IF (cont = 0 AND :new.director IS NOT NULL) THEN
           raise_application_error(-20009, 'El director de la sucursal debe ser un empleado de esa sucursal');        
      END IF;
  ELSE
      SELECT COUNT(*) INTO cont FROM empleados WHERE (:old.codigo_sucursal = empleados.sucursal_destino AND :new.director = empleados.codigo_empleado);
      IF (cont = 0 AND :new.director IS NOT NULL) THEN
           raise_application_error(-20009, 'El director de la sucursal debe ser un empleado de esa sucursal');        
      END IF;
  END IF;
END;
/

--8 La sucursal donde trabaja un empleado debe existir
CREATE OR REPLACE TRIGGER insertar_empleado
 BEFORE INSERT ON empleados FOR EACH ROW
DECLARE
 cont INT;
BEGIN
   SELECT COUNT(*) INTO cont FROM sucursales WHERE (codigo_sucursal=:new.sucursal_destino);
   IF (cont = 0) THEN
           raise_application_error(-20029, 'Para introducir un empleado, este debe trabajar en una sucursal que exista, y no existe la sucursal indicada');   
   END IF;
END;
/

--17 PARA BORRAR UN VINO ESTE NO PUEDE HABER SIDO SUMINISTRADO NUNCA
--Al insertar un vino pongo su c_stock= c_producida

CREATE OR REPLACE TRIGGER borrar_vino
 BEFORE DELETE OR INSERT ON vinos FOR EACH ROW
DECLARE
 cont INT;
BEGIN
  IF DELETING THEN
     SELECT count(*) INTO cont FROM suministra WHERE (suministra.cod_vino = :old.codigo_vino);
     IF (cont > 0) THEN
        raise_application_error(-20020, 'No puede borrar este vino, porque ha sido suministrado');
     END IF;
     delete from vende where cod_vino=:old.codigo_vino; 
  ELSE
     :new.c_stock := :new.c_producida;
     SELECT count(*) INTO cont FROM productores WHERE (productores.codigo_productor = :new.cod_productor);
     IF (cont = 0) THEN
        raise_application_error(-20020, 'No puede insertar este vino porque el productor de este vino no exite.');
     END IF;     
  END IF;
EXCEPTION
 WHEN NO_DATA_FOUND THEN
  dbms_output.put_line('No se encontro el empleado que quiere modificar');
END;
/

--18 PARA BORRAR UN PRODUCTOR ESTE NO PUEDE HABER SUMINISTRADO NUNCA NINGUN VINO SUYO

CREATE OR REPLACE TRIGGER borrar_productor
 BEFORE DELETE ON productores FOR EACH ROW
DECLARE
 cont INT;
BEGIN
  SELECT COUNT(*) INTO cont FROM suministra, vinos WHERE (vinos.cod_productor = :old.codigo_productor AND suministra.cod_vino = vinos.codigo_vino);
  IF (cont > 0) THEN
     raise_application_error(-20021, 'No puede borrar este productor, porque ha realizado suministros');
  END IF;
EXCEPTION
 WHEN NO_DATA_FOUND THEN
  dbms_output.put_line('No se encontro el empleado que quiere modificar');
-- WHEN OTHERS THEN
--   SHOW ERROR TRIGGER borrar_vino;
END;
/

--TRIGGER PARA SUMINISTROS

create or replace
TRIGGER suministro_posible
 BEFORE INSERT OR UPDATE OR DELETE ON suministra FOR EACH ROW
DECLARE
   cont INT;
   stock_futuro vinos.c_stock%TYPE;
   suma_suministros suministra.cantidad%TYPE;
   s_comunidad sucursales.c_autonoma%TYPE;
   c_comunidad clientes.c_autonoma%TYPE;   
   permitido BOOLEAN;
BEGIN
   IF INSERTING THEN
       --Para suministrar un vino este debe existir
       SELECT COUNT(*) INTO cont FROM vinos WHERE (:new.cod_vino = vinos.codigo_vino);
       IF (cont = 0) THEN
            raise_application_error(-20022, 'El vino que quiere suministrar no exite.');          
       END IF;       
   
       --compruebo que ese cliente no tenga suministros mas actuales
       SELECT COUNT(*) INTO cont FROM suministra WHERE (:new.cod_cliente = suministra.cod_cliente AND :new.fecha < suministra.fecha);
       IF (cont > 0) THEN
            raise_application_error(-20022, 'Este cliente tiene suministros mas actuales, introduzca una fecha valida');          
       END IF;

       --Resto al stock de vinos la cantidad suministrada, y compruebo si hay suficiente stock para el suministro
       SELECT (c_stock) INTO stock_futuro FROM vinos WHERE (vinos.codigo_vino = :new.cod_vino);
       stock_futuro:= stock_futuro - :new.cantidad;
       IF (stock_futuro < 0) THEN
            raise_application_error(-20022, 'NO hay suficiente vino en el stock para tramitar este suministro'); 
       END IF;
       
       -- Compruebo si ese cliente esta comprando en una de las sucursales que pertenecen a la delegacion de su comunidad
		   SELECT c_autonoma INTO c_comunidad FROM clientes WHERE (clientes.codigo_cliente = :new.cod_cliente); 
		   SELECT c_autonoma INTO s_comunidad FROM sucursales WHERE ( sucursales.codigo_sucursal = :new.cod_sucursal); 

       permitido := FALSE;
		   IF ((c_comunidad = 'Andalucia' OR c_comunidad = 'Canarias' OR c_comunidad = 'Ceuta' OR c_comunidad = 'Extremadura' OR c_comunidad = 'Melilla') AND (s_comunidad = 'Andalucia' OR s_comunidad = 'Canarias' OR s_comunidad = 'Ceuta' OR s_comunidad = 'Extremadura' OR s_comunidad = 'Melilla')) THEN
          permitido := TRUE;
       ELSIF ((c_comunidad = 'Aragon' OR c_comunidad = 'Castilla-Leon' OR c_comunidad = 'Castilla-La Mancha' OR c_comunidad = 'La Rioja' OR c_comunidad = 'Madrid') AND (s_comunidad = 'Aragon' OR s_comunidad = 'Castilla-Leon' OR s_comunidad = 'Castilla-La Mancha' OR s_comunidad = 'La Rioja' OR s_comunidad = 'Madrid')) THEN
			    permitido := TRUE;
		   ELSIF ((c_comunidad = 'Asturias' OR c_comunidad = 'Cantabria' OR c_comunidad = 'Galicia' OR c_comunidad = 'Navarra' OR c_comunidad = 'Pais Vasco') AND (s_comunidad = 'Asturias' OR s_comunidad = 'Cantabria' OR s_comunidad = 'Galicia' OR s_comunidad = 'Navarra' OR s_comunidad = 'Pais Vasco')) THEN
			    permitido := TRUE;
		   ELSIF ((c_comunidad = 'Cataluna' OR c_comunidad = 'Baleares' OR c_comunidad = 'Murcia' OR c_comunidad = 'Pais Valenciano') AND (s_comunidad = 'Cataluna' OR s_comunidad = 'Baleares' OR s_comunidad = 'Murcia' OR s_comunidad = 'Pais Valenciano')) THEN
			    permitido := TRUE;
		   ELSIF (permitido = FALSE) THEN
         raise_application_error(-20012,'El cliente esta intentando comprar en una sucursal que no pertenece a la delegacion que le corresponde.');
		   END IF;
       
       --compruebo si ese cliente tiene otro suministro de ese mismo vino en esa misma sucursal ese mismo dia
       SELECT COUNT(*) INTO cont FROM suministra WHERE (:new.cod_cliente = suministra.cod_cliente AND :new.fecha = suministra.fecha AND :new.cod_sucursal = suministra.cod_sucursal AND :new.cod_vino = suministra.cod_vino);
       IF (cont > 0) THEN  --si esto ocurre, sumo las cantidades de ambos suministros y pongo esa cantidad en la tupla que vamos a insertar, y elimino la tupla que habia
            SELECT (cantidad) INTO suma_suministros FROM suministra WHERE (:new.cod_cliente = suministra.cod_cliente AND :new.fecha = suministra.fecha AND :new.cod_sucursal = suministra.cod_sucursal AND :new.cod_vino = suministra.cod_vino);
            suma_suministros:=suma_suministros + :new.cantidad;
            DELETE FROM suministra WHERE (:new.cod_cliente = suministra.cod_cliente AND :new.fecha = suministra.fecha AND :new.cod_sucursal = suministra.cod_sucursal AND :new.cod_vino = suministra.cod_vino);   
            :new.cantidad := suma_suministros;
       END IF;
       --Le resto al stock del vino la cantidad que hemos suministrado
       UPDATE vinos SET c_stock=stock_futuro WHERE (vinos.codigo_vino = :new.cod_vino);

   ELSIF UPDATING THEN
       --Si cambia la cantidad del suministro, resto al stock de vino la nueva cantidad y le sumo la cantidad que tenía el suministro
       suma_suministros:= :new.cantidad - :old.cantidad;
       SELECT (c_stock) INTO stock_futuro FROM vinos WHERE (vinos.codigo_vino = :new.cod_vino);
       --Compruebo si hay suficiente stock
       IF ( suma_suministros > stock_futuro ) THEN
            raise_application_error(-20022, 'NO hay suficiente vino en el stock para tramitar este suministro (update)');       
       END IF;  
       stock_futuro:= stock_futuro - suma_suministros;
       UPDATE vinos SET c_stock=stock_futuro WHERE (vinos.codigo_vino = :new.cod_vino);
  ELSE
      --Si borro un suministro, entonces tengo que sumar al stock de vinos la cantidad que se habia suministrado
      SELECT (c_stock) INTO stock_futuro FROM vinos WHERE (vinos.codigo_vino = :old.cod_vino);     
      stock_futuro:= stock_futuro + :old.cantidad;
      UPDATE vinos SET c_stock=stock_futuro WHERE (vinos.codigo_vino = :old.cod_vino);

   END IF;
END;
/

commit;
 
 
 
 
 
 