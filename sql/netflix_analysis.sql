-- NETFLIX DATA ANALYSIS PROJECT
-- Author: Pedro Gaitan
-- Database: PostgreSQL

-- 1. Películas vs series
SELECT type, COUNT(*) AS total
FROM netflix_titles
GROUP BY type;

-- Result: Netflix tiene mas películas que series


-- 2. Contenido por año 
SELECT release_year, COUNT(*) AS total
FROM netflix_titles
GROUP BY release_year
ORDER BY release_year;


-- 3. Top 10 países
SELECT country, COUNT(*) AS total
FROM netflix_titles
GROUP BY country
ORDER BY total DESC
LIMIT 10;


-- 4. Ratings más comunes
SELECT rating, COUNT(*) AS total
FROM netflix_titles
GROUP BY rating
ORDER BY total DESC;


-- 5. Series más recientes
SELECT title, release_year
FROM netflix_titles
WHERE type = 'TV Show'
ORDER BY release_year DESC
LIMIT 10;