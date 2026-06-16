DELIMITER //

CREATE TRIGGER trg_validar_fechas_reserva_insert
BEFORE INSERT ON RESERVA
FOR EACH ROW
BEGIN
    -- Validar que la fecha de inicio no sea posterior a la de finalización
    IF NEW.fecha_inicio > NEW.fecha_finalizacion THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: La fecha de inicio no puede ser posterior a la fecha de finalización.';
    END IF;

    -- Validar que la fecha de solicitud no sea posterior al inicio de la reserva
    IF NEW.fecha_solicitud > NEW.fecha_inicio THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: La fecha de solicitud no puede ser posterior a la fecha de inicio.';
    END IF;
END //

DELIMITER ;
