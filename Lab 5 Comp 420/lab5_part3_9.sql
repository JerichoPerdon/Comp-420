USE imdb;

UPDATE people
SET duplicate_insert_count = 0;
SET sql_safe_updates = 0;