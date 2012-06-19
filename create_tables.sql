
CREATE TABLE clientes(
codigo_cliente INTEGER PRIMARY KEY NOT NULL,
dni CHAR(9) NOT NULL UNIQUE,
nombre VARCHAR2(30) NOT NULL,
direccion VARCHAR2(40) NOT NULL,
c_autonoma VARCHAR2(20) NOT NULL,
tipo CHAR(1) CHECK (tipo in ('A', 'B', 'C'))
);


CREATE TABLE sucursales(
 codigo_sucursal INT NOT NULL PRIMARY KEY,
 nombre VARCHAR2(30) NOT NULL,
 ciudad VARCHAR2(20) NOT NULL,
 c_autonoma VARCHAR2(20) NOT NULL,
 director INT UNIQUE
);

CREATE TABLE empleados (
  codigo_empleado INT NOT NULL PRIMARY KEY,
  dni CHAR(9) NOT NULL UNIQUE,
  nombre VARCHAR2(20) NOT NULL,
  fecha_in DATE NOT NULL,
  salario FLOAT NOT NULL CHECK (salario>=0),
  direccion VARCHAR2(40) NOT NULL,
  ciudad_residencia VARCHAR2(20) NOT NULL,
  sucursal_destino INT,
  FOREIGN KEY (sucursal_destino) REFERENCES sucursales(codigo_sucursal)
);

ALTER TABLE sucursales ADD (
FOREIGN KEY (director) REFERENCES empleados(codigo_empleado)
  );


CREATE TABLE productores(
 codigo_productor INTEGER NOT NULL PRIMARY KEY,
-- dni CHAR(9) NOT NULL UNIQUE,
 nombre VARCHAR2(30) NOT NULL,
 direccion VARCHAR2(40) NOT NULL
-- c_autonoma VARCHAR2(20),
-- pais VARCHAR2(20)
);


CREATE TABLE vinos(
codigo_vino INT NOT NULL PRIMARY KEY,
marca VARCHAR2(30) NOT NULL,
ano INT NOT NULL,
denominacion VARCHAR2(30),
graduacion FLOAT NOT NULL,
vinedo VARCHAR2(30) NOT NULL,
c_producida FLOAT NOT NULL CHECK (0<=c_producida),
c_stock FLOAT CHECK (0<=c_stock),
cod_productor INT NOT NULL,
c_autonoma VARCHAR2(20),
pais VARCHAR2(20),
FOREIGN KEY (cod_productor) REFERENCES productores(codigo_productor)
);

CREATE TABLE vende (
 cod_sucursal INT,
 cod_vino INT,
 PRIMARY KEY (cod_sucursal, cod_vino),
 FOREIGN KEY (cod_sucursal) REFERENCES sucursales(codigo_sucursal),
 FOREIGN KEY (cod_vino) REFERENCES vinos(codigo_vino)
);


CREATE TABLE suministra(
 cod_cliente INT,
 cod_sucursal INT,
 cod_vino INT,
 fecha DATE NOT NULL,
 cantidad FLOAT NOT NULL CHECK (cantidad>0),
 FOREIGN KEY (cod_cliente) REFERENCES clientes(codigo_cliente),
 FOREIGN KEY (cod_sucursal, cod_vino) REFERENCES vende(cod_sucursal, cod_vino),
 PRIMARY KEY (cod_cliente, cod_sucursal, cod_vino, fecha)
);

commit;
