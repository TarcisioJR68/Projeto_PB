CREATE TABLE medicamentos(
    id      SERIAL PRIMARY KEY,
    nome    VARCHAR(100) NOT NULL,
    descricao   TEXT,
    quantidade  BIGINT NOT NULL,
    criado_em   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);