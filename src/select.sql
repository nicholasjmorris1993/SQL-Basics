SELECT *
FROM country;

SELECT id, name
FROM city;

-- ascending order 
SELECT name
FROM city
ORDER BY rating ASC;

-- descending order
SELECT name
FROM city
ORDER BY rating ASC;

-- get country and city names paired together
SELECT co.name, ci.name
FROM city AS ci
JOIN country AS co
    ON ci.country_id = co.id;
