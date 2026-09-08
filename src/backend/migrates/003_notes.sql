CREATE TABLE fichas(
    id      SERIAL PRIMARY KEY,
    sintomas        TEXT NOT NULL,
    alergia_medicamentos         TEXT DEFAULT 'sem alergia',
    medico_id INTEGER NOT NULL REFERENCES medicos(id),
    paciente_id INTEGER NOT NULL REFERENCES pacientes(id)
);