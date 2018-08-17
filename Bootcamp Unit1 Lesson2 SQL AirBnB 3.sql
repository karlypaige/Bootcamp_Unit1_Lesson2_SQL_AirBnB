--What time of year is the cheapest time to go to your city? 
--What about the busiest?
SELECT 
	price,
	substr(date, 6, 2) m_month,
	AVG(substr(price,2)) 'average price'
FROM 
	calendar
WHERE available = "t"
GROUP BY substr(date, 6, 2)
ORDER BY AVG(substr(price,2))

-- the cheapest months are September, Octover and November, so Fall season.
