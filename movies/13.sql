SELECT people.name
FROM people
WHERE
people.id in

(SELECT DISTINCT stars.person_id
FROM stars
WHERE stars.movie_id in

(SELECT movies.id
FROM movies JOIN stars
on movies.id = stars.movie_id
WHERE stars.person_id =

(SELECT people.id
FROM people
WHERE people.name = "Kevin Bacon" AND people.birth = 1958)))

EXCEPT SELECT people.name
FROM people
WHERE people.name = "Kevin Bacon" AND people.birth = 1958