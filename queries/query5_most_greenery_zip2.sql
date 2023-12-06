
WITH treezipnum AS (
    SELECT z.zipcode,COUNT(t.tree_id) AS tree_count
    FROM zip z
    JOIN tree t ON z.zipcode=t.zipcode
    WHERE t.status = 'alive' AND  ST_WITHIN(t.geometry, z.geometry)
    GROUP BY z.zipcode
)
SELECT tn.zipcode,tn.tree_count
FROM treezipnum tn
ORDER BY tn.tree_count DESC
LIMIT 10;
