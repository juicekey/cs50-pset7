SELECT name
FROM people JOIN stars
on people.id = stars.person_id
JOIN movies
on movies.id = stars.movie_id
WHERE movies.title = "Toy Story"