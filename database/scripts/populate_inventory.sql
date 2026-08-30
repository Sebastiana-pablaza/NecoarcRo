/*ahora vamos a hacer inserción de ítems en inventario de los 400 personajes de nuestras 100 cuentas:
vamos con 10 apples id 512
1 carta de valkyrie randgris (cosa mas bella) id 4407
4 cutter 1206
*/
DELIMITER $$

CREATE PROCEDURE PoblarInventarioMasivo()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE v_char_id INT;

    DECLARE cur_chars CURSOR FOR 
        SELECT `char_id` FROM `char`;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error critico al poblar inventarios. Transaccion abortada.';
    END;

    START TRANSACTION;

    OPEN cur_chars;

    read_loop: LOOP
        FETCH cur_chars INTO v_char_id;
        IF done = 1 THEN
            LEAVE read_loop;
        END IF;

        INSERT IGNORE INTO `inventory` (
            `char_id`, `nameid`, `amount`, `equip`, `identify`, `refine`, `attribute`, 
            `card0`, `card1`, `card2`, `card3`, `bound`
        ) 
        VALUES 
        (v_char_id, 512, 10, 0, 1, 0, 0, 0, 0, 0, 0, 0),
        (v_char_id, 4407, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0),
        (v_char_id, 1206, 4, 0, 1, 0, 0, 0, 0, 0, 0, 0);

    END LOOP;

    CLOSE cur_chars;
    COMMIT;
END$$

DELIMITER ;

CALL PoblarInventarioMasivo();

DROP PROCEDURE PoblarInventarioMasivo;
