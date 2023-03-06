SELECT w.day_of_week as day_of_week, AVG(f.arrival_delay) as delay
FROM flights AS f, weekdays AS w
WHERE f.day_of_week_id = w.did
GROUP BY w.day_of_week
ORDER BY AVG(f.arrival_delay) DESC
LIMIT 1;

-- 1 row