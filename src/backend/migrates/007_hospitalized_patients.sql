--Informações sobre os pacientes hospitalizados

CREATE TABLE hospitalizados(
    id      SERIAL PRIMARY KEY,
    local_sala    SMALLINT NOT NULL,
    tratamento  TEXT NOT NULL,
    descricao   TEXT,
    id_paciente INTEGER NOT NULL REFERENCES pacientes(id),
    id_medico INTEGER NOT NULL REFERENCES medicos(id),
    criado_em   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);