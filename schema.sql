/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
  id INT PRIMARY KEY,
  name TEXT,
  date_of_birth DATE,
  escape_attempts INT,
  neutered BOOL,
  weight_kg DECIMAL(4,2)
);

ALTER TABLE animals
ADD species TEXT;

CREATE TABLE owners (
  id SERIAL PRIMARY KEY,
  full_name TEXT,
  age INT
);

CREATE TABLE species (
  id SERIAL PRIMARY KEY,
  name VARCHAR(15)
);

ALTER TABLE animals
ADD id SERIAL PRIMARY KEY;

ALTER TABLE animals
DROP species;

ALTER TABLE animals
ADD species_id INT;

ALTER TABLE animals
ADD FOREIGN KEY (species_id) REFERENCES species(id)
ON DELETE SET NULL;

ALTER TABLE animals
ADD owner_id INT;

ALTER TABLE animals
ADD FOREIGN KEY (owner_id) REFERENCES owners(id)
ON DELETE SET NULL;

CREATE TABLE vets (
  id SERIAL PRIMARY KEY,
  name VARCHAR (40),
  age INT,
  date_of_graduation DATE
);

CREATE TABLE specializations (
  species_id INT REFERENCES species (id) ON DELETE CASCADE,
  vet_id INT REFERENCES vets (id) ON DELETE CASCADE,
  role INTEGER,
  PRIMARY KEY (species_id, vet_id)
);

CREATE TABLE visits (
  animals_id INT REFERENCES animals (id) ON DELETE CASCADE,
  vet_id INT REFERENCES vets (id) ON DELETE CASCADE,
  role INTEGER,
  PRIMARY KEY (animals_id, vet_id)
);

INSERT INTO vets (name, age, date_of_graduation) values ('William Tatcher', 45, '2000-04-23'), ('Maisy Smith', 26, '2019-01-17'), ('Stephanie Mendez', 64, '1981-05-04'),
('Jack Harkness', 38, '2008-06-08');


