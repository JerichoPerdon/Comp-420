USE imdb;

DELIMITER //
CREATE TRIGGER people_upd
BEFORE 
INSERT on duplicated_people
FOR EACH ROW
BEGIN
	UPDATE people
    SET people.duplicate_insert_count = people.duplicate_insert_count + 1
    WHERE people.person_id = NEW.person_id;
    
END //
DELIMITER ;