--Reseta todas as informações nas tabelas

TRUNCATE medicos, pacientes, fichas, prescricoes, agendamentos, medicamentos, hospitalizados, horarios RESTART IDENTITY CASCADE;

--Inserção dos médicos
INSERT INTO medicos(nome, formacao, data_nascimento, cpf, email, senha) VALUES
('Tarcisio Martin', 'Cirurgião', '19/07/2000', '490.237.255-25', 'tarcisiomartin@gmail.com', 'tarcisin123'),
('Matheus Dias', 'Odontologista', '12/12/2000', '345.786.567-68', 'matheusdias@gmail.com', 'matheuzin234'),
('João Pereira', 'Endocrinologista', '04/05/1992', '488.465.778-45', 'joãopeira@gmail.com', 'joaozin567');

--Inserção dos pacientes
INSERT INTO pacientes(nome, senha, data_nascimento, email, cpf) VALUES
('Marcos Andrade', 'marquin45', '19/03/1990', 'marquindograu@gmai.com', '899.574.889-89'),
('Donatelo Donaldo', 'donalddonaldo23', '13/12/1980', 'donalddonaldo@gmail.com', '345.678.899-10'),
('Mario Arnaldo', 'marnaldo678', '18/03/1980', 'marinarnaldo@gmail.com', '289.980.455-23');

--Inserção das fichas
INSERT INTO fichas(sintomas, medico_id, paciente_id) VALUES
('O paciente precisa fazer uma cirurgia da retirada da visícula biliar', 1, 1),
('o paciente precisa de uma prótese dentária com urgência', 2, 1),
('O paciente precisa fazer a limpeza habitual dentária',2, 3);

--Inserção das prescrições
INSERT INTO prescricoes(uso, recomendacoes, id_paciente) VALUES
('Enxaguante bocal e fio dental', 'Uso do enxaguante bocal 3 vezes ao dia junto com o fio dental', 1),
('Enxaguante bocal e fio dental', 'mantenha os dentes limpos', 3),
(NULL, 'Precisa ser internado para cirurgia', 1);

--Inserção dos horários
INSERT INTO horarios(id_medico, num_atendimentos, disponivel_data, disponivel_hora) VALUES
(1, 50, '08/09/26', '08:00:00'),
(2, 25, '08/09/26', '08:00:00'),
(3, 35, '08/09/26', '08:00:00');

--Inserção dos agendamentos
INSERT INTO agendamentos(id_medico, id_paciente, data, hora) VALUES
(1,1, '08/09/26', '08:00:00'),
(2,1, '08/09/26', '08:00:00'),
(2,3, '08/09/26', '08:00:00');

--inserção dos medicamentos
INSERT INTO medicamentos(nome, descricao, quantidade) VALUES
('Tadalafila', 'voltado para o funcionameto cardiovascular', 50),
('Canabidiol', 'voltado para pacientes com alto índice de extresse', 100),
('Dipirona', 'voltado para alivio da dor de cabeça', 100);

--Inserção de informações sobre os pacientes hospitalizados
INSERT INTO hospitalizados(quarto, tratamento, em_tratamento, tratado_por) VALUES
(10, 'A base de canabidiol para relaxamento do extress pós cirurgia e dipirona para dor de cabeça', 1, 1);