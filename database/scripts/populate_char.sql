DELIMITER $$

CREATE PROCEDURE GenerarPersonajesDummySeguros()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE v_account_id INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error en la insercion masiva de personajes. Transaccion cancelada.';
    END;

    START TRANSACTION;

    WHILE i <= 4 DO
        SELECT `account_id` INTO v_account_id FROM `login` WHERE `userid` LIKE 'usu_%' ORDER BY `account_id` LIMIT 1, 1;

        INSERT INTO `char` (
            `account_id`,
            `char_num`,
            `name`,
            `class`,
            `base_level`,
            `job_level`,
            `zeny`,
            `str`, `agi`, `vit`, `int`, `dex`, `luk`,
            `max_hp`, `hp`, `max_sp`, `sp`,
            `last_map`, `save_map`,
            `sex`,
            `inventory_slots`
        ) 
        VALUES (
            v_account_id,
            0,
            CONCAT('Heroe_', i),
            0,
            1,
            1,
            10000,
            10, 10, 10, 10, 10, 10,
            500, 500, 100, 100,
            'prontera', 'prontera',
            IF(i MOD 2 = 1, 'M', 'F'),
            100
        );
        
        SET i = i + 1;
    END WHILE;

    COMMIT;
END$$

DELIMITER ;

CALL GenerarPersonajesDummySeguros();

DROP PROCEDURE GenerarPersonajesDummySeguros;

--de esta forma solo creamos 4 personajes en las primeras cuentas que encontró 
MariaDB [rathena]> SELECT `char_id`, `account_id`, `name`, `class`, `base_level`, `zeny` FROM `char`;
/*
+---------+------------+---------+-------+------------+-------+
| char_id | account_id | name    | class | base_level | zeny  |
+---------+------------+---------+-------+------------+-------+
|  150000 |    2000000 | Mishu   |     0 |         99 |     0 |
|  150001 |    2000000 | mishu1  |     0 |          1 |     0 |
|  150002 |    2000002 | Heroe_1 |     0 |          1 | 10000 |
|  150003 |    2000002 | Heroe_2 |     0 |          1 | 10000 |
|  150004 |    2000002 | Heroe_3 |     0 |          1 | 10000 |
|  150005 |    2000002 | Heroe_4 |     0 |          1 | 10000 |
+---------+------------+---------+-------+------------+-------+*/
--funcionó bien, así que vamos a realizarlo a escala mayor

DELIMITER $$

CREATE PROCEDURE Generar4PersonajesPorCuentaSegura()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE v_acc_id INT;
    DECLARE v_sex ENUM('M','F');
    
    DECLARE v_slot INT;
    DECLARE v_char_name VARCHAR(30);

    DECLARE cur_cuentas CURSOR FOR 
        SELECT `account_id`, `sex` FROM `login` WHERE `userid` LIKE 'usu_%';
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error critico en la generacion masiva de personajes. Transaccion abortada.';
    END;

    START TRANSACTION;

    OPEN cur_cuentas;

    read_loop: LOOP
        FETCH cur_cuentas INTO v_acc_id, v_sex;
        IF done = 1 THEN
            LEAVE read_loop;
        END IF;

        SET v_slot = 0;
        WHILE v_slot < 4 DO

            SET v_char_name = CONCAT('P_', v_acc_id, '_', v_slot);


            INSERT IGNORE INTO `char` (
                `account_id`,
                `char_num`,
                `name`,
                `class`,
                `base_level`,
                `job_level`,
                `zeny`,
                `str`, `agi`, `vit`, `int`, `dex`, `luk`,
                `max_hp`, `hp`, `max_sp`, `sp`,
                `last_map`, `save_map`,
                `sex`,
                `inventory_slots`
            ) 
            VALUES (
                v_acc_id,
                v_slot,
                v_char_name,
                0, 
                1,
                1,
                50000,
                10, 10, 10, 10, 10, 10,
                500, 500, 100, 100,
                'prontera', 'prontera',
                v_sex,
                100
            );

            SET v_slot = v_slot + 1;
        END WHILE;

    END LOOP;

    CLOSE cur_cuentas;
    COMMIT;
END$$

DELIMITER ;

CALL Generar4PersonajesPorCuentaSegura();

DROP PROCEDURE Generar4PersonajesPorCuentaSegura;
