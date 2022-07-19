use imdb;

DROP PROCEDURE IF EXISTS sp_premiere_date;
DELIMITER //
CREATE PROCEDURE sp_premiere_date(IN startYear int(11), endYear int(11))
BEGIN
SELECT 
akas.title AS primary_title, 
titles.premiered AS premiered,
query_runner()
FROM titles
JOIN akas USING(title_id)
WHERE startYear = titles.premiered AND endYear = titles.ended
ORDER BY titles.premiered ASC;
END //
DELIMITER ;

CALL sp_premiere_date(1980, 1985);