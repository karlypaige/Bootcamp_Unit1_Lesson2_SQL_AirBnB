-- What's the most expensive listing? 
-- What else can you tell me about the listing?
SELECT 
	*
FROM 
	listings
ORDER BY price DESC
LIMIT 5

-- The top listing is an entire home/apt located in La Jolla.
-- It is $6000 per night with a 3 night minimum stay. 
-- It was available for 309 out of 365 days.
-- There is one review listed for it.