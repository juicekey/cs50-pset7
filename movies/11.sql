SELECT title
FROM movies JOIN stars
on movies.id = stars.movie_id
JOIN people
on people.id = stars.person_id
JOIN ratings
on ratings.movie_id = movies.id
WHERE people.name = "Chadwick Boseman"
ORDER by rating DESC
LIMIT 5