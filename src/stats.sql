-- the number of cities
SELECT COUNT(*)
FROM city;

-- the number of cities with (non-null) ratings
SELECT COUNT(rating)
FROM city;

-- the number of countries
SELECT COUNT(DISTINCT country_id)
FROM city;

-- the smallest and largest countries
SELECT MIN(population), MAX(population)
FROM country;

-- the total population across all cities per country
SELECT country_id, SUM(population)
FROM city
GROUP BY country_id;

-- average rating of cities per country, but only return averages above 3
SELECT country_id, AVG(rating)
FROM city
GROUP BY country_id
HAVING AVG(rating) > 3;
