USE imdb;

select query_runner(now());

DROP VIEW IF EXISTS tv_seasons;
CREATE VIEW tv_seasons AS
SELECT
titles.primary_title AS 'Show Title',
max(episodes.season_number) AS Seasons,
count(*) AS Episodes,
query_runner() AS 'Query Runner / Date'
FROM titles
JOIN episodes ON titles.title_id = episodes.show_title_id
GROUP BY show_title_id
ORDER BY Seasons ASC, Episodes DESC;

SELECT * FROM tv_seasons;