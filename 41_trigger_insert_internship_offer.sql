USE rexchula;

DROP TRIGGER IF EXISTS insert_internship_offer;

DELIMITER $$

CREATE TRIGGER insert_internship_offer
BEFORE INSERT ON internship_offer
FOR EACH ROW
BEGIN
	DECLARE MaxID INT UNSIGNED;
    SET MaxID = (SELECT MAX(OfferID)
				FROM internship_offer i
				WHERE i.CompanyID = NEW.CompanyID AND i.`Year` = NEW.`Year`);
	IF NEW.OfferID IS NULL THEN
		SET NEW.OfferID = IF(MaxID IS NULL, 1, MaxID + 1);
    ELSE
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Assigning value to OfferID is not allowed';
	END IF;
END$$
DELIMITER ;