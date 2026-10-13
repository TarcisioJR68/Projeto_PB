--Informações sobre os pacientes hospitalizados

CREATE TABLE hospitalizados(
    id      SERIAL PRIMARY KEY,
    quarto    SMALLINT NOT NULL,
    tratamento  TEXT NOT NULL,
    descricao   TEXT,
    em_tratamento INTEGER NOT NULL REFERENCES pacientes(id),
    tratado_por INTEGER NOT NULL REFERENCES medicos(id),
    criado_em   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);