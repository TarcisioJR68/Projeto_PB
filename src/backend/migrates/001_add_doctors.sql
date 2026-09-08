--Comandos opcionais caso não tenha um databases criado

/*CREATE DATABASE medical_system;
USE DATABASE medical_system;*/

--Informações sobre os médicos cadastrados

CREATE TABLE medicos(
    id      SERIAL PRIMARY KEY,
    name    VARCHAR(100) NOT NULL,,
    formacao   VARCHAR(200) NOT NULL,
    data_nascimento  DATE NOT NULL,
    cpf     SMALLINT NOT NULL UNIQUE,
    email   VARCHAR(100) NOT NULL UNIQUE,
    senha   VARCHAR(100) NOT NULL,
    criado_em    TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);