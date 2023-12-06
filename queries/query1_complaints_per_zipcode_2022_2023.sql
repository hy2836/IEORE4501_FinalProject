
SELECT zipcode, COUNT(*) as complaint_count
FROM complaint
WHERE date BETWEEN '2022-10-01' AND '2023-09-30'
GROUP BY zipcode
ORDER BY complaint_count DESC;
