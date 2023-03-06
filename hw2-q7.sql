SELECT SUM(f.capacity) as capacity
FROM flights as f, months as m
WHERE ((f.dest_city = 'Seattle WA' AND f.origin_city = 'San Francisco CA')
OR (f.dest_city = 'San Francisco CA' AND f.origin_city = 'Seattle WA'))
AND f.day_of_month = 10 AND f.month_id = m.mid AND m.month = 'July';

-- 1 row