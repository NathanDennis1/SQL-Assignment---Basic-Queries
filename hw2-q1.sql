SELECT DISTINCT f.flight_num as flight_num
FROM flights as f, weekdays as w, carriers as c
WHERE f.origin_city = 'Seattle WA' AND f.dest_city='Boston MA'
AND f.carrier_id = c.cid AND f.day_of_week_id = w.did AND
w.day_of_week = 'Monday' AND c.name = 'Alaska Airlines Inc.';


-- 3 rows