
CREATE TABLE IF NOT EXISTS zip (
    zipcode INT PRIMARY KEY,
    geometry GEOMETRY(POLYGON, 3857)
);

CREATE TABLE IF NOT EXISTS complaint (
    complaint_id BIGINT PRIMARY KEY,
    zipcode INT,
    date DATE,
    complaint_type VARCHAR(255),
    longitude FLOAT,
    latitude FLOAT,
    geometry GEOMETRY(POINT, 3857)
);

CREATE TABLE IF NOT EXISTS tree (
    tree_id INT PRIMARY KEY,
    zipcode INT,
    status VARCHAR(50),
    longitude FLOAT,
    latitude FLOAT,
    species VARCHAR(50),
    health VARCHAR(50),
    date DATE,
    geometry GEOMETRY(POINT, 3857)
);

CREATE TABLE IF NOT EXISTS zillow (
    region_id INT,
    zipcode INT,
    date DATE,
    rent FLOAT,
    rent_id INT PRIMARY KEY
);
