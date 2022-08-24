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
