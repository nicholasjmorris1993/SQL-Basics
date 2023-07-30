-- return rows that have matching values in both tables
-- "city" is the left table, "country" is the right table
SELECT city.name, country.name
FROM city
INNER JOIN country
    ON city.country_id = country.id;

-- return all rows from the left table with corresponding rows from the right table
-- "city" is the left table, "country" is the right table
SELECT city.name, country.name
FROM city  
LEFT JOIN country
    ON city.country_id = country.id;

-- return all rows from the right table with corresponding rows from the left table
-- "city" is the left table, "country" is the right table
SELECT city.name, country.name
FROM city  
RIGHT JOIN country
    ON city.country_id = country.id;

-- return all rows from both tables
-- "city" is the left table, "country" is the right table
SELECT city.name, country.name
FROM city  
FULL OUTER JOIN country
    ON city.country_id = country.id;

-- return all possible pairwise combinations from both tables (a grid)
-- "city" is the left table, "country" is the right table
SELECT city.name, country.name
FROM city
CROSS JOIN country;
