
WITH topzip AS (
    SELECT t.zipcode, COUNT(*) AS tree_count
    FROM tree t
    WHERE t.status = 'alive'
    GROUP BY t.zipcode
    ORDER BY tree_count DESC
    LIMIT 10
)
SELECT tz.zipcode, TO_CHAR(AVG(z.rent), 'FM9,999,999.00') AS average_rent
FROM topzip tz
JOIN zillow z ON tz.zipcode = z.zipcode
WHERE z.date >= '2023-08-01' AND z.date < '2023-09-01'
GROUP BY tz.zipcode,tz.tree_count
ORDER BY tree_count DESC;
