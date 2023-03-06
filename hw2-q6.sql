SELECT c.name AS carrier, MAX(f.price) AS max_price
FROM flights as f, carriers as c
WHERE ((f.dest_city = 'Seattle WA' AND f.origin_city='New York NY')
OR (f.dest_city = 'New York NY' AND f.origin_city='Seattle WA')) AND
f.carrier_id = c.cid
GROUP BY c.name;

-- 3 rows