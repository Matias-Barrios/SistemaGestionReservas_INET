
-- INSERCIÓN DE DATOS DE PRUEBA
INSERT INTO DOCENTE VALUES
('12345678', 'Juan Pérez', 'juan.perez@utu.edu.uy', 'Informática'),
('23456789', 'Ana Rodríguez', 'ana.rodriguez@utu.edu.uy', 'Matemática'),
('34567890', 'Carlos Silva', 'carlos.silva@utu.edu.uy', 'Física');

INSERT INTO TELEFONO_DOCENTE VALUES
(1, '12345678', '099111111'),
(2, '12345678', '098222222'),
(3, '23456789', '097333333'),
(4, '34567890', '096444444');

INSERT INTO RECURSO VALUES
(1, 'Laptop Ceibal', 'Disponible', 'Laboratorio 1'),
(2, 'Sala Multimedia', 'Disponible', 'Piso 2'),
(3, 'Proyector Epson', 'Prestado', 'Depósito'),
(4, 'Mouse Inalámbrico', 'Disponible', 'Laboratorio 2');

INSERT INTO EQUIPO_INFORMATICO VALUES
(1, 'Intel i5', '8 GB', 'Windows 11');

INSERT INTO SALA VALUES
(2, 2, 30);

INSERT INTO DISPOSITIVO_MULTIMEDIA VALUES
(3, '1920x1080', 'HDMI');

INSERT INTO ACCESORIO VALUES
(4, 'Mouse inalámbrico Logitech');

INSERT INTO PRESTAMO VALUES
(1, '12345678', 1, '2026-06-11', '2026-06-18'),
(2, '23456789', 3, '2026-06-12', '2026-06-19'),
(3, '12345678', 4, '2026-06-15', '2026-06-20');

INSERT INTO RESERVA VALUES
(1, '12345678', 2, '2026-06-10', '2026-06-20', '2026-06-20', 'Confirmada'),
(2, '34567890', 1, '2026-06-11', '2026-06-25', '2026-06-25', 'Pendiente');

INSERT INTO INCIDENTE VALUES
(1, 1, '2026-06-12', 'Media'),
(2, 2, '2026-06-13', 'Alta');
