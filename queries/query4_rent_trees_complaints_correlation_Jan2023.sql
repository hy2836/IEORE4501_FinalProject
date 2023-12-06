
WITH AverageRent AS (
    SELECT zipcode, AVG(rent) as average_rent
    FROM zillow
    WHERE date BETWEEN '2023-01-01' AND '2023-01-31'
    GROUP BY zipcode
),
TreeCount AS (
    SELECT zipcode, COUNT(*) as tree_count
    FROM tree
    WHERE status = 'alive'
    GROUP BY zipcode
),
ComplaintCount AS (
    SELECT zipcode, COUNT(*) as complaint_count
    FROM complaint
    WHERE date BETWEEN '2023-01-01' AND '2023-01-31'
    GROUP BY zipcode
),
Combined AS (
    SELECT r.zipcode,
           TO_CHAR(r.average_rent, 'FM9,999,999.00') as average_rent,
           COALESCE(t.tree_count, 0) as tree_count,
           COALESCE(c.complaint_count, 0) as complaint_count
    FROM AverageRent r
    LEFT JOIN TreeCount t ON r.zipcode = t.zipcode
    LEFT JOIN ComplaintCount c ON r.zipcode = c.zipcode
)
SELECT * FROM (
    SELECT * FROM Combined
    ORDER BY average_rent DESC
    LIMIT 5) AS Highest
UNION ALL
SELECT * FROM (
    SELECT * FROM Combined
    ORDER BY average_rent
    LIMIT 5) AS Lowest;

