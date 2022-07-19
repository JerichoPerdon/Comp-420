USE imdb;

DROP FUNCTION IF EXISTS query_runner;
CREATE FUNCTION query_runner()
RETURNS CHAR(50) deterministic
RETURN CONCAT('Queried by Jericho Perdon on ', now());