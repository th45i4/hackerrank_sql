--Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780 Round your answer to 4 decimal places.

SELECT CAST(ROUND(LONG_W,4) AS decimal(10,4))
FROM STATION 
WHERE LAT_N > 38.7780
ORDER BY LAT_N ASC
LIMIT 1;

