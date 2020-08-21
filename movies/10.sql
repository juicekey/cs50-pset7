SELECT DISTINCT people.name
FROM people JOIN directors
on people.id = directors.person_id
JOIN movies
on movies.id = directors.movie_id
JOIN ratings
on ratings.movie_id = movies.id
WHERE ratings.rating >= 9.0