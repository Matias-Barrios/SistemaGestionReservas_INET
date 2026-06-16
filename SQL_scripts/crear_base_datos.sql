DROP TABLE IF EXISTS INCIDENTE;
DROP TABLE IF EXISTS RESERVA;
DROP TABLE IF EXISTS PRESTAMO;
DROP TABLE IF EXISTS ACCESORIO;
DROP TABLE IF EXISTS DISPOSITIVO_MULTIMEDIA;
DROP TABLE IF EXISTS SALA;
DROP TABLE IF EXISTS EQUIPO_INFORMATICO;
DROP TABLE IF EXISTS TELEFONO_DOCENTE;
DROP TABLE IF EXISTS RECURSO;
DROP TABLE IF EXISTS DOCENTE;

CREATE TABLE DOCENTE (
  cedula VARCHAR(20) PRIMARY KEY,
  nombre_completo VARCHAR(100),
  correo VARCHAR(100),
  dpto_academico VARCHAR(100)
);

CREATE TABLE TELEFONO_DOCENTE (
  id_telefono INT PRIMARY KEY,
  cedula_docente VARCHAR(20),
  telefono VARCHAR(30),
  FOREIGN KEY (cedula_docente) REFERENCES DOCENTE(cedula)
);

CREATE TABLE RECURSO (
  codigo INT PRIMARY KEY,
  nombre VARCHAR(100),
  estado VARCHAR(30),
  ubicacion VARCHAR(100)
);

CREATE TABLE EQUIPO_INFORMATICO (
  codigo INT PRIMARY KEY,
  procesador VARCHAR(100),
  mem_ram VARCHAR(50),
  sistema_operativo VARCHAR(100),
  FOREIGN KEY (codigo) REFERENCES RECURSO(codigo)
);

CREATE TABLE SALA (
  codigo INT PRIMARY KEY,
  piso INT,
  cap_maxima INT,
  FOREIGN KEY (codigo) REFERENCES RECURSO(codigo)
);

CREATE TABLE DISPOSITIVO_MULTIMEDIA (
  codigo INT PRIMARY KEY,
  resolucion VARCHAR(50),
  tipo_conexion VARCHAR(100),
  FOREIGN KEY (codigo) REFERENCES RECURSO(codigo)
);

CREATE TABLE ACCESORIO (
  codigo INT PRIMARY KEY,
  descripcion VARCHAR(150),
  FOREIGN KEY (codigo) REFERENCES RECURSO(codigo)
);

CREATE TABLE PRESTAMO (
  id_prestamo INT PRIMARY KEY,
  cedula_docente VARCHAR(20),
  codigo INT,
  fecha_entrega DATE,
  fecha_devolucion DATE,
  FOREIGN KEY (cedula_docente) REFERENCES DOCENTE(cedula),
  FOREIGN KEY (codigo) REFERENCES RECURSO(codigo)
);

CREATE TABLE RESERVA (
  id_reserva INT PRIMARY KEY,
  cedula_docente VARCHAR(20),
  codigo INT,
  fecha_solicitud DATE,
  fecha_inicio DATE,
  fecha_finalizacion DATE,
  estado VARCHAR(30),
  FOREIGN KEY (cedula_docente) REFERENCES DOCENTE(cedula),
  FOREIGN KEY (codigo) REFERENCES RECURSO(codigo)
);

CREATE TABLE INCIDENTE (
  id_inc INT PRIMARY KEY,
  id_prestamo INT,
  fecha DATE,
  nivel_gravedad VARCHAR(30),
  FOREIGN KEY (id_prestamo) REFERENCES PRESTAMO(id_prestamo)
);

-- Consultas de ejemplo

SELECT 
    r.codigo,
    r.nombre,
    r.estado,
    r.ubicacion,
    dm.resolucion,
    dm.tipo_conexion
FROM RECURSO r
INNER JOIN DISPOSITIVO_MULTIMEDIA dm ON r.codigo = dm.codigo;
