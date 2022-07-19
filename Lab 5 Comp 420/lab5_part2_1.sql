USE imdb;

SELECT query_runner(now());

DROP VIEW IF EXISTS avg_by_performer;
CREATE VIEW avg_by_performer AS 
SELECT
people.name AS 'Name',
AVG(ratings.rating) AS AverageRating,
query_runner() AS 'Query Runner / Date'
FROM people
JOIN crew ON people.person_id = crew.person_id
JOIN titles ON crew.title_id = titles.title_id
JOIN ratings ON titles.title_id = ratings.title_id
WHERE crew.category = 'actor' OR crew.category = 'actress'
GROUP BY people.name
ORDER BY AverageRating desc;

SELECT * FROM avg_by_performer;