-- 1. Listar todos los recursos disponibles indicando 
-- código, nombre, tipo y ubicación.
SELECT 
    r.codigo,
    r.nombre,
    r.ubicacion,
    CASE 
        WHEN eq.codigo IS NOT NULL THEN 'Equipo Informático'
        WHEN sa.codigo IS NOT NULL THEN 'Sala'
        WHEN dm.codigo IS NOT NULL THEN 'Dispositivo Multimedia'
        WHEN ac.codigo IS NOT NULL THEN 'Accesorio'
        ELSE 'No especificado'
    END AS tipo_recurso
FROM RECURSO r
LEFT JOIN EQUIPO_INFORMATICO eq ON r.codigo = eq.codigo
LEFT JOIN SALA sa ON r.codigo = sa.codigo
LEFT JOIN DISPOSITIVO_MULTIMEDIA dm ON r.codigo = dm.codigo
LEFT JOIN ACCESORIO ac ON r.codigo = ac.codigo
WHERE r.estado = 'Disponible';


-- 2. Mostrar los docentes registrados pertenecientes a un departamento 
-- académico determinado.
SELECT cedula, nombre_completo, correo
FROM DOCENTE
WHERE dpto_academico = 'Informática';

-- 3. Obtener las reservas activas mostrando docente solicitante, 
-- fecha de inicio y fecha de finalización.
SELECT 
    d.nombre_completo AS docente_solicitante,
    r.fecha_inicio,
    r.fecha_finalizacion
FROM RESERVA r
INNER JOIN DOCENTE d ON r.cedula_docente = d.cedula
WHERE r.estado = 'Confirmada';


-- 4. Obtener los recursos que han participado en la mayor cantidad de préstamos, 
-- indicando la cantidad total de veces que fueron prestados.
SELECT 
    r.codigo,
    r.nombre,
    COUNT(p.id_prestamo) AS cantidad_prestamos
FROM RECURSO r
INNER JOIN PRESTAMO p ON r.codigo = p.codigo
GROUP BY r.codigo, r.nombre
ORDER BY cantidad_prestamos DESC
LIMIT 1;

-- 5. Mostrar los docentes que registraron incidentes de gravedad alta durante préstamos, 
-- indicando la cantidad de incidentes asociados a cada uno.
SELECT 
    d.cedula,
    d.nombre_completo,
    COUNT(i.id_inc) AS cantidad_incidentes_altos
FROM DOCENTE d
INNER JOIN PRESTAMO p ON d.cedula = p.cedula_docente
INNER JOIN INCIDENTE i ON p.id_prestamo = i.id_prestamo
WHERE i.nivel_gravedad = 'Alta'
GROUP BY d.cedula, d.nombre_completo;
