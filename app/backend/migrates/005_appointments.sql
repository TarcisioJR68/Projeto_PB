--Informações sobre os horários disponíveis dos médicos

CREATE TABLE horarios(
    id      SERIAL PRIMARY KEY,
    disponivel_data DATE NOT NULL,
    disponivel_hora TIME NOT NULL,
    num_atendimentos      SMALLINT NOT NULL,
    id_medico       INTEGER NOT NULL REFERENCES medicos(id),
    criado_em       TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--Informações sobre os agendamentos dos pacientes

CREATE TABLE agendamentos(
    id          SERIAL PRIMARY KEY,
    id_medico   INTEGER NOT NULL REFERENCES medicos(id),
    id_paciente INTEGER NOT NULL REFERENCES pacientes(id),
    hora     TIME NOT NULL,
    data        DATE NOT NULL,    
    criado_em   TIMESTAMP DEFAULT CURRENT_TIMESTAMP   
);