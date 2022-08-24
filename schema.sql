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
