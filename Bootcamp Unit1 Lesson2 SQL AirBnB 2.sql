-- What neighborhoods seem to be the most popular?
SELECT 
	neighbourhood,
	COUNT(neighbourhood)
FROM 
	listings
GROUP BY neighbourhood
ORDER BY COUNT(neighbourhood) DESC
LIMIT 10

-- Mission Bay and Pacific Beach are the two most popular neighborhoods 
-- followed by La Jolla and North Hills