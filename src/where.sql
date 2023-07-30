SELECT name
FROM city
WHERE rating > 3;

SELECT name
FROM city
WHERE name != "Berlin"
    AND name != "Madrid";

-- fetch names of cities that start with a "P" or end with an "s"
SELECT name
FROM city
WHERE name LIKE "P%"
    OR name LIKE "%s";

SELECT name
FROM city
WHERE population BETWEEN 500000 AND 5000000;

SELECT name
FROM city
WHERE rating IS NOT NULL;

SELECT name
FROM city
WHERE country_id IN (1, 4, 7, 8);
