SELECT people.name
FROM people
WHERE people.id in (
SELECT DISTINCT stars.person_id
FROM stars JOIN movies
on stars.movie_id = movies.id
where movies.year = 2004)
ORDER by people.birth