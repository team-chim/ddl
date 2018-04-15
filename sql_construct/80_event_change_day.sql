USE rexchula;

SET GLOBAL event_scheduler = ON;
DROP EVENT IF EXISTS change_day;

DELIMITER $$

CREATE EVENT change_day
	ON SCHEDULE
		EVERY 1 DAY
        STARTS '2018-04-14 00:00:00'
	DO
	BEGIN
		SET SQL_SAFE_UPDATES = 0;
		UPDATE eng_official_internship
        SET HasOverdueReport = NULL;
        SET SQL_SAFE_UPDATES = 1;
	END$$
DELIMITER ;