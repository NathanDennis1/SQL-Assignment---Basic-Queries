SELECT DISTINCT c.name AS name
FROM flights as f, carriers as c, months as m
WHERE f.month_id = m.mid AND f.carrier_id = c.cid 
GROUP BY c.name, f.day_of_month, m.month
HAVING COUNT(*) > 1000;

-- 12 rows