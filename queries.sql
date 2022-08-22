/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name::text like '%mon';
SELECT * FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT * FROM animals WHERE neutered <> '0'  AND escape_attempts < 3;
SELECT * FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.50;
SELECT * FROM animals WHERE neutered <> '0';
SELECT * FROM animals WHERE name <> 'Gabumon';
SELECT * FROM animals WHERE weight_kg >= 10.40 AND weight_kg <= 17.30;
