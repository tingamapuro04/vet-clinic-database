/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name::text like '%mon';
SELECT * FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT * FROM animals WHERE neutered <> '0'  AND escape_attempts < 3;
SELECT * FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.50;
SELECT * FROM animals WHERE neutered <> '0';
SELECT * FROM animals WHERE name <> 'Gabumon';
SELECT * FROM animals WHERE weight_kg >= 10.40 AND weight_kg <= 17.30;

BEGIN;

UPDATE animals
SET species = 'unspecified';

ROLLBACK;

BEGIN;

UPDATE animals
SET species = 'digimon'
WHERE name Like '%mon';

UPDATE animals
SET species = 'pokemon'
WHERE name NOT LIKE '%mon';

COMMIT;

BEGIN;

DELETE FROM animals;

ROLLBACK;

BEGIN;

DELETE FROM animals
WHERE date_of_birth > '2022-01-01;

SAVEPOINT SP1;

UPDATE animals
SET weight_kg = weight_kg * -1;

ROLBACK TO SP1;

UPDATE animals
SET weight_kg = weight_kg * -1
WHERE weight_kg < 0;

COMMIT;

SELECT COUNT(*) FROM animals;

SELECT COUNT(*) FROM animals
WHERE escape_attempts = 0;

SELECT AVG(weight_kg) FROM animals;

SELECT * FROM animals
ORDER BY escape_attempts DESC
LIMIT 1;

SELECT species, MIN(weight_kg), MAX(weight_kg)
FROM animals
GROUP BY species;

SELECT species, AVG(escape_attempts)
FROM animals
WHERE date_of_birth >= '1990-01-01' and date_of_birth <= '2000-12-31'
GROUP BY species;


SELECT name FROM animals A
JOIN owners K
ON A.owner_id IN (
  SELECT id FROM owners WHERE full_name = 'Melody Pond'
);

SELECT animals.name FROM animals
JOIN species
ON species_id IN (
  SELECT id FROM species WHERE name = 'Pokemon'
);

SELECT species.name, count(species_id)
FROM animals
JOIN species
ON species_id = species.id
GROUP BY species.name;

SELECT animals.name FROM animals
JOIN owners
ON owner_id IN (
  SELECT id FROM owners WHERE full_name = 'Dean Winchester'
)
WHERE animals.escape_attempts = '0';

SELECT owners.full_name, MAX(owner_id)
FROM animals
JOIN owners
ON owner_id = owners.id
GROUP BY owners.full_name;

SELECT animals.name FROM animals
JOIN visits 
ON visits.animals_id = animals.id
JOIN vets ON visits.vet_id =vets.id
WHERE vets.name = 'William Tatcher'
ORDER BY visits.date_of_visit DESC
LIMIT 1
;


SELECT COUNT(*) FROM animals
JOIN visits 
ON visits.animals_id = animals.id
JOIN vets ON visits.vet_id =vets.id
WHERE vets.name = 'Stephanie Mendez';
