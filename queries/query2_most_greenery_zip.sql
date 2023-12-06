
SELECT zipcode, COUNT(*) as tree_count
FROM tree
WHERE status = 'alive'
GROUP BY zipcode
ORDER BY tree_count DESC
LIMIT 10;
