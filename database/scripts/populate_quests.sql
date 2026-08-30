DELIMITER $$

CREATE PROCEDURE PoblarQuestsMasivo()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE v_char_id INT;

    DECLARE cur_chars CURSOR FOR 
        SELECT `char_id` FROM `char`;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error critico al poblar quests. Transaccion abortada.';
    END;

    START TRANSACTION;

    OPEN cur_chars;

    read_loop: LOOP
        FETCH cur_chars INTO v_char_id;
        IF done = 1 THEN
            LEAVE read_loop;
        END IF;

        INSERT IGNORE INTO `quest` (
            `char_id`, `quest_id`, `state`, `time`, `count1`, `count2`, `count3`
        ) 
        VALUES 
        (v_char_id, 1001, '2', 0, 0, 0, 0);

    END LOOP;

    CLOSE cur_chars;
    COMMIT;
END$$

DELIMITER ;

CALL PoblarQuestsMasivo();

DROP PROCEDURE PoblarQuestsMasivo;


/*probamos la siguiente consulta para ver si el personaje Mishu gm hizo la quest, ya que 406 filas fueron afectadas, por tanto, también 
se añadió la quest para Mishu, además de los personajes dummy:*/
SELECT 
    c.name AS `Personaje`, 
    q.quest_id AS `ID Quest`, 
    q.state AS `Estado (0: Activa, 1: En espera, 2: Completada)`, 
    q.time AS `Tiempo`
FROM `quest` q
INNER JOIN `char` c ON q.char_id = c.char_id
WHERE c.name = 'Mishu';
/*
+-----------+----------+-------------------------------------------------+--------+
| Personaje | ID Quest | Estado (0: Activa, 1: En espera, 2: Completada) | Tiempo |
+-----------+----------+-------------------------------------------------+--------+
| Mishu     |     1001 | 2                                               |      0 |
+-----------+----------+-------------------------------------------------+--------+
*/






