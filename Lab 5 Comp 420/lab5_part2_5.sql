use imdb;

SELECT p1.name, category, primary_title, rating from people p1
JOIN crew USING(person_id)
JOIN titles USING(title_id)
JOIN ratings USING(title_id)
WHERE category = ‘director’
AND title_id > (SELECT AVG(rating) from people p2
		JOIN CREW USING(person_id)
		JOIN ratings USING(title_id)
		WHERE p1.person_id.name = p2.person_id)

AND title_id IN (SELECT person_id from people
		JOIN crew USING(person_id)
		JOIN titles USING(title_id)
		GROUP BY person_id
		HAVING count(titles_id) > 2

ORDER BY rating DESC;