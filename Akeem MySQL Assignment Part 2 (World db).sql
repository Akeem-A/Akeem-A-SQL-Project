/*MySQL Assignment Part 2 Queries */


SELECT * FROM city;
SELECT * FROM country;
SELECT * FROM countrylanguage;
/* Task 1 - The query below is to find out the number 
of cities in the USA with the world schema using "COUNT".*/
SELECT 
    COUNT(District)
FROM
    city
WHERE
    CountryCode = 'USA';
    
/*Task 2 - In this query we're finding what the average population & life 
expectancy for the people in Argentina.*/
SELECT 
    AVG(LifeExpectancy), AVG(Population)
FROM
    country
WHERE
    Code = 'ARG'; 
    
/* Task 3 - In this query we're finding which country has the highest life Expectancy utilising the "ORDER BY" & "LIMIT" functions */
SELECT 
    Name, LifeExpectancy
FROM
    country
ORDER BY LifeExpectancy DESC
LIMIT 1;

/*Task 4 - In this query we're finding 25 cities in the World that begin with the letter "F".  */ 
SELECT 
    *
FROM
    City
WHERE
    Name LIKE 'F_%'
LIMIT 25;

/* Task 5 - This query is showing the "ID", "Name" & population of the cities table limited
to the first 10 rows */
SELECT 
    ID, Name, Population
FROM
    city
LIMIT 10;

/* Task 6 This query is to find the cities with a population greater than 2,000,000.- */
SELECT 
    *
FROM
    city
WHERE
    Population > 2000000;
    
/* Task 7 - This query is to show the cities (from the "city" table) beginning with
"Be" prefix. */
SELECT 
    *
FROM
    City
WHERE
    Name LIKE 'Be_%';
    
/* Task 8 - We're finding out in this query the cities with a population between 500,000 & 1,000,000 in the "city" table*/
SELECT 
    *
FROM
    city
WHERE
    Population BETWEEN 500000 AND 1000000;
    
/* Task 9 - In this query we're finding out what city has the 
lowest population in the "city" table */
SELECT 
    *
FROM
    city
WHERE
    Population IN (SELECT 
            MIN(Population)
        FROM
            city); 
            
/* Bonus - Task 1 - This query is to find out the Capital of Spain */

SELECT Capital,region,name, code

FROM country

WHERE code = 'ESP';

/* Bonus - Task 2 - This Query is to list all the languages spoken in the caribbean region*/

SELECT distinct countrylanguage.language, country.region

FROM countrylanguage
CROSS JOIN country
WHERE Region = 'caribbean';

/*Bonus - Task 3 - This query was to find all the cities in the European Continent*/
SELECT distinct country.continent, city.name 'City'
FROM country
INNER JOIN city
WHERE continent = 'Europe';