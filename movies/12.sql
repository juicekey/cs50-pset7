SELECT movies.title
FROM movies
JOIN stars
on movies.id = stars.movie_id
JOIN people
on people.id = stars.person_id
WHERE people.name in ("Johnny Depp", "Helena Bonham Carter")
GROUP by movies.title
HAVING count(*) > 1