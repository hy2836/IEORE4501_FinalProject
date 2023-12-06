
SELECT
    tree_id AS "ID",
    species,
    health,
    status,
    ST_AsText(ST_Transform(geometry, 4326)) AS "Coordinate Location"
FROM
    tree
WHERE
    ST_DWithin(
        ST_Transform(geometry, 4326)::geography,
        ST_SetSRID(ST_MakePoint(-73.96253174434912, 40.80737875669467), 4326)::geography,
        804.672 -- 1/2 mile in meters
    );