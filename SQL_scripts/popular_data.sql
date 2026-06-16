-- INSERCIÓN DE DATOS DE PRUEBA EXTENDIDO
INSERT INTO DOCENTE VALUES
('12345678', 'Juan Pérez', 'juan.perez@utu.edu.uy', 'Informática'),
('23456789', 'Ana Rodríguez', 'ana.rodriguez@utu.edu.uy', 'Matemática'),
('34567890', 'Carlos Silva', 'carlos.silva@utu.edu.uy', 'Física'),
('45678901', 'María Laura Espinoza', 'maria.espinoza@utu.edu.uy', 'Química'),
('56789012', 'Diego Nández', 'diego.nandez@utu.edu.uy', 'Historia');

INSERT INTO TELEFONO_DOCENTE VALUES
(1, '12345678', '099111111'),
(2, '12345678', '098222222'),
(3, '23456789', '097333333'),
(4, '34567890', '096444444'),
(5, '45678901', '095555555'),
(6, '56789012', '094666666');

INSERT INTO RECURSO VALUES
(1, 'Laptop Ceibal', 'Disponible', 'Laboratorio 1'),
(2, 'Sala Multimedia', 'Disponible', 'Piso 2'),
(3, 'Proyector Epson', 'Prestado', 'Depósito'),
(4, 'Mouse Inalámbrico', 'Disponible', 'Laboratorio 2'),
(5, 'PC de Escritorio Exo', 'Mantenimiento', 'Biblioteca'),
(6, 'Laboratorio de Idiomas', 'Disponible', 'Piso 1'),
(7, 'Parlante JBL', 'Disponible', 'Sala de Profesores'),
(8, 'Teclado USB Genius', 'Disponible', 'Depósito'),
(9, 'Cámara Web Logitech', 'Prestado', 'Dirección');

INSERT INTO EQUIPO_INFORMATICO VALUES
(1, 'Intel i5', '8 GB', 'Windows 11'),
(5, 'AMD Ryzen 3', '16 GB', 'Ubuntu Linux 24.04');

INSERT INTO SALA VALUES
(2, 2, 30),
(6, 1, 20);

INSERT INTO DISPOSITIVO_MULTIMEDIA VALUES
(3, '1920x1080', 'HDMI'),
(7, 'Stereo 2.0', 'Bluetooth'),
(9, '1080p 30fps', 'USB-C');

INSERT INTO ACCESORIO VALUES
(4, 'Mouse inalámbrico Logitech'),
(8, 'Teclado mecánico español');

INSERT INTO PRESTAMO VALUES
(1, '12345678', 1, '2026-06-11', '2026-06-18'),
(2, '23456789', 3, '2026-06-12', '2026-06-19'),
(3, '12345678', 4, '2026-06-15', '2026-06-20'),
(4, '45678901', 9, '2026-06-14', '2026-06-16');

INSERT INTO RESERVA VALUES
(1, '12345678', 2, '2026-06-10', '2026-06-20', '2026-06-20', 'Confirmada'),
(2, '34567890', 1, '2026-06-11', '2026-06-25', '2026-06-25', 'Pendiente'),
(3, '56789012', 6, '2026-06-12', '2026-06-22', '2026-06-22', 'Confirmada');

INSERT INTO INCIDENTE VALUES
(1, 1, '2026-06-12', 'Media'),
(2, 2, '2026-06-13', 'Alta'),
(3, 4, '2026-06-15', 'Baja');

