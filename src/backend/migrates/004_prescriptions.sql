CREATE TABLE prescricoes(
    id      SERIAL PRIMARY KEY,
    medicamentos    TEXT,
    recomendacoes   TEXT NOT NULL,
    id_paciente     INTEGER NOT NULL REFERENCES pacientes(id),
    criado_em       TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);