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

INSERT INTO owners (full_name, age)
 VALUES ('Sam Smith', 34);

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

INSERT INTO vets (name, age, date_of_graduation) values ('William Tatcher', 45, '2000-04-23'), ('Maisy Smith', 26, '2019-01-17'), ('Stephanie Mendez', 64, '1981-05-04'),
('Jack Harkness', 38, '2008-06-08');

INSERT INTO specializations VALUES
(1, 1),
(1, 3),
(2, 3),
(2, 4);

INSERT INTO visits VALUES
(1, 1, '2020-05-24'),
(1, 3, '2020-07-22'),
(2, 4, '2021-02-02'),
(3, 2, '2020-01-05'),
(3, 2, '2020-03-08'),
(4, 3, '2020-05-04'),
(6, 4, '2021-02-24'),
(5, 2, '2019-12-21'),
(5, 1, '2020-08-10'),
(5, 2, '2021-04-07'),
(7, 3, '2019-09-29'),
(8, 4, '2020-10-03'),
(8, 4, '2020-11-04'),
(9, 2, '2019-01-24'),
(9, 2, '2019-05-15'),
(9, 2, '2020-02-27'),
(9, 2, '2020-08-03'),
(10, 3, '2020-05-24'),
(10, 1, '2021-01-11');
