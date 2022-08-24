/* Populate database with sample data. */
INSERT INTO animals VALUES (1, 'Agumon', '2020-02-03', 0, '1', 10.23), (2, 'Gabumon', '2018-11-15', 2, '1', 08.00), (3, 'Pikachu', '2021-01-07', 1, '0', 15.04), (4, 'Devimon', '2017-05-12', 5, '1', 11.00);

INSERT INTO animals VALUES
(6, 'Plantmon', '2021-11-15', 2, '1', -05.70, NULL),
(7, 'Squirtle','1993-04-02', 3, '0', -12.13, NULL),
(8, 'Angemon', '2005-06-12', 1, '1', -45, NULL),
(9, 'Boarmon', '2005-06-07', 7, '1', 20.40, NULL),
(10, 'Blossom', '1998-10-13', 3, '1', 17.00, NULL),
(11, 'Ditto', '2022-05-14', 4, '1', 22.00, NULL);


INSERT INTO owners(full_name, age) VALUES
('Jennifer Orwell', 19),
('Bob', 45),
('Melody Pond', 77),
('Dean Winchester', 14),
('Jodie Whittaker', 38);

INSERT INTO species(name) VALUES('Pokemon'), ('Digimon');

UPDATE animals
SET species_id = 1
WHERE name NOT LIKE '%mon';

UPDATE animals
SET species_id = 2
WHERE name LIKE '%mon';

UPDATE animals
SET owner_id = 1
WHERE name = 'Agumon';

UPDATE animals
SET owner_id = 5
WHERE name = 'Angemon' OR name = 'Boarmon';

UPDATE animals
SET owner_id = 2
WHERE name = 'Blossom';
