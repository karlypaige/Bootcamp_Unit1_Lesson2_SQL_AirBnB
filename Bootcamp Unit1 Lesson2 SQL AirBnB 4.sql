--What time of year is the cheapest time to go to your city? 
--What about the busiest?

--Using the 'f' entries in the 'available' category as booked listings 
--compare the 'f' count against total count to calculate normalized number to represent availability.
--The larger the number the busier the region.
WITH 
	booked
AS(
	SELECT 
		available,
		COUNT(available) available_count,
		SUBSTR(date,6,2) date
	FROM 
		calendar
	GROUP BY available, SUBSTR(date,6,2)
),

	full_count
AS(
	SELECT 
		SUBSTR(date,6,2) date,
		COUNT(available) total_count
	FROM 
		calendar
	GROUP BY SUBSTR(date,6,2)
)

SELECT 
	b.available,
	b.available_count,
	b.date,
	c.total_count,
	CAST(b.available_count AS float)/c.total_count ratio
FROM 
	booked b
JOIN 
	full_count c
ON 
	b.date = c.date
WHERE  
	b.available = 'f'
ORDER BY 
	CAST(b.available_count AS float)/c.total_count DESC
	
--The month of July tends to have the most bookings
--Followed by February, May, and June