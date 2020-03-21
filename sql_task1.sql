-- Create tables
CREATE TABLE runners (
    id INT AUTO_INCREMENT,
    name VARCHAR (100),
    PRIMARY KEY (id)
    );
CREATE TABLE races ( 
    id INT AUTO_INCREMENT, 
    event VARCHAR (100), 
    winner_id INT, 
    PRIMARY KEY (id) 
    );    
-- insert data
INSERT INTO
    runners (name)
    VALUES ('John Doe'),
    ('Jane Doe'),
    ('Alice Jones'),
    ('Bobby Louis'),
    ('Lisa Romero');
INSERT INTO
    races (event, winner_id)
    VALUES ('100 meter dash',2),
    ('500 meter dash',3),
    ('cross-country',2),
    ('triathlon', NULL);

-- Right query for this task looks like
SELECT * FROM runners run WHERE NOT EXISTS (SELECT winner_id FROM races rac WHERE run.id=rac.winner_id);
--or
SELECT * FROM runners  LEFT JOIN races ON races.winner_id=runners.id where winner_id IS NULL;