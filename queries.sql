-- write your queries here
-- 1
SELECT * FROM owners o LEFT JOIN vehicles v ON v.owner_id = o.id;
-- 2
SELECT first_name, last_name, COUNT(*) FROM vehicles v JOIN owners o ON v.owner_id = o.id GROUP BY o.id ORDER BY o.first_name;
-- 3
SELECT first_name, last_name, ROUND(AVG(price)) AS average_price, COUNT(*) 
FROM vehicles v 
JOIN owners o ON v.owner_id = o.id 
GROUP BY o.id 
HAVING COUNT(*) > 1 and ROUND(AVG(price)) > 10000
ORDER BY o.first_name;