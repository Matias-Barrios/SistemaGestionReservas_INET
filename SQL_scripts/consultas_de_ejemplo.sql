-- CONSULTAS DE VERIFICACIÓN
SELECT * FROM DOCENTE;
SELECT * FROM TELEFONO_DOCENTE;
SELECT * FROM RECURSO;
SELECT * FROM EQUIPO_INFORMATICO;
SELECT * FROM SALA;
SELECT * FROM DISPOSITIVO_MULTIMEDIA;
SELECT * FROM ACCESORIO;
SELECT * FROM PRESTAMO;
SELECT * FROM RESERVA;
SELECT * FROM INCIDENTE;


-- ### Consultas de ejemplo ###

-- Mostrar un recurso pos su estado
SELECT codigo, nombre, ubicacion 
FROM RECURSO 
WHERE estado = 'Disponible';

-- Mostrar un recurso de tipo Dispositivo Multimedia
SELECT 
    r.codigo,
    r.nombre,
    r.estado,
    r.ubicacion,
    dm.resolucion,
    dm.tipo_conexion
FROM RECURSO r
INNER JOIN DISPOSITIVO_MULTIMEDIA dm ON r.codigo = dm.codigo;

-- Total de docentes registrados
SELECT COUNT(*) AS total_docentes 
FROM DOCENTE;

-- Incidentes de alta gravedad
SELECT id_inc, id_prestamo, fecha 
FROM INCIDENTE 
WHERE nivel_gravedad = 'Alta';

-- Listas reservas por fecha de inicio
SELECT id_reserva, codigo, fecha_inicio, estado 
FROM RESERVA 
ORDER BY fecha_inicio ASC;

