-- find cities with the same rating as Paris
SELECT name
FROM city
WHERE rating = (
    SELECT rating
    FROM city
    WHERE name = "Paris"
);

-- find cities in the countries with a population above 20 million
SELECT name
FROM city
WHERE country_id IN (
    SELECT id
    FROM country
    WHERE population > 20000000
);

-- find cities with a population greater than the average city population for their country
SELECT * 
FROM city AS main_city
WHERE population > (
    SELECT AVG(population)
    FROM city AS average_city
    WHERE average_city.country_id = main_city.country_id
);
