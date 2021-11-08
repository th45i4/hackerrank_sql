--Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

select 
CITY || ' ' || LENGTH(CITY)
FROM STATION
WHERE LENGTH(CITY) = (select MIN(LENGTH(CITY)) from station)
ORDER BY CITY ASC 
LIMIT 1;

select 
CITY || ' ' || LENGTH(CITY)
FROM STATION
WHERE LENGTH(CITY) = (select MAX(LENGTH(CITY)) from station)
ORDER BY CITY ASC 
LIMIT 1;