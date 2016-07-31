-- Include your solutions to the More Practice problems in this file.



-- INSERT
INSERT INTO models (year, brand_name, name) VALUES (2015, 'Chevrolet', 'Malibu');
INSERT INTO models (year, brand_name, name) VALUES (2015, 'Outback', 'Subaru');

-- CREATE TABLE
CREATE TABLE Awards(
    name VARCHAR(20),
    year INTEGER,
    winner_id SERIAL PRIMARY KEY
    );


-- More INSERT

INSERT INTO Awards(name, year, winner_id) VALUES('IIHS Safety Award', 2015, 49);
INSERT INTO Awards(name, year, winner_id) VALUES('IIHS Saftey Award', 2015, 50);