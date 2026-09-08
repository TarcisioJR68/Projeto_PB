--Informações sobre os usuários ou pacientes da plataforma

CREATE TABLE pacientes(
    id      SERIAL PRIMARY KEY,
    nome    VARCHAR(100) NOT NULL, 
    data_nascimento     DATE NOT NULL,
    email   VARCHAR(100) NOT NULL UNIQUE,
    cpf     SMALLINT NOT NULL UNIQUE,
    senha   VARCHAR(100) NOT NULL,
    criado_em      TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);