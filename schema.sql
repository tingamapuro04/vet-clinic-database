/* Database schema to keep the structure of entire database. */

vet_clinic=# CREATE TABLE animals (id INT PRIMARY KEY, name TEXT, date_of_birth DATE, escape_attempts INT, neutered BOOL, weight_kg DECIMAL(4,2));
