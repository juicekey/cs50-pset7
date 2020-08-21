SELECT title, rating
FROM ratings JOIN movies
on movie_id = id
WHERE year = 2010
ORDER by rating DESC, title