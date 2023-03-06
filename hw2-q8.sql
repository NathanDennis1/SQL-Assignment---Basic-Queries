SELECT c.name as name , SUM(f.departure_delay) AS delay
FROM flights AS f, carriers as c 
WHERE f.carrier_id = c.cid
GROUP BY c.name;

-- 22 rows