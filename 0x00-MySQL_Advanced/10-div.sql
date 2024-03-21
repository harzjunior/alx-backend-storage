-- creates a FUNCTION SafeDiv that'd divides the 1st
-- by the 2nd num or returns 0 when the 2nd num is equal to 0.
DROP FUNCTION IF EXISTS SafeDiv;
DELIMITER $$
CREATE FUNCTION SafeDiv (a INT, b INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
    DECLARE result FLOAT DEFAULT 0;

    IF b != 0 THEN
        SET result = a / b;
    END IF;
    RETURN result;
END $$
DELIMITER ;
