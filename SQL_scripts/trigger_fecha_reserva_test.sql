-- Debería fallar: fecha_inicio (25 de junio) es posterior a fecha_finalizacion (15 de junio)
INSERT INTO RESERVA (
    id_reserva, 
    cedula_docente, 
    codigo, 
    fecha_solicitud, 
    fecha_inicio, 
    fecha_finalizacion, 
    estado
) 
VALUES (
    99, 
    '12345678', 
    2, 
    '2026-06-10', 
    '2026-06-25', -- Inicio
    '2026-06-15', -- Fin (Incorrecto)
    'Confirmada'
);
