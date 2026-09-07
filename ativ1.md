# Atividade 1

## 1 - Quais tabelas você definiu inicialmente ?

- Algumas das tabelas definidas inicialmente foram: medicos, pacientes, fichamentos, prescricoes, agendamentos, medicamentos, internados

## 2 - Você utilizou migrations? Se sim, quantas migrations? Descreva em uma frase o que cada uma faz.

- 001_add_doctors - mostra informações sobre os médicos

- 002_add_patients - mostra informações sobre os pacientes

- 003_notes - mostra detalhes sobre a consulta

- 004_prescriptions - mostra quais medicamentos o médico solicitou para serem usados

- 005_appointments - mostra informações sobre as consultas agendadas pelo paciente(cliente)

- 006_medicines - define os medicamentos disponíveis na unidade, caso disponibilize

- 007_hospitalized_patientes - mostra informações sobre os pacientes hospitalizados

## 3 - Qual o caminho do arquivo que gera a seed do seu banco?

- O caminho para a seed do banco é: src/backend/seed.sql

## 4 - Quais os endpoints que você irá implementar inicialmente? Cada endpoint deve ser um método e um path. Explique em um parágrafo por que você resolveu priorizar a implementação desses endpoints.

- Endpoints --> GET /auth/login, POST /auth/login, GET /auth/register, POST /auth/register, GET /home , GET /home/prescription, GET /home/, GET /home/doctors, GET /home/patients, GET /home/medicines. Inicialmente essas serão as apis que serão incrementadas para testar o login da aplicação e definir um escopo inicial da página inicial e incrementar a aba de médicos pelos quais o paciente está sendo atendido e os pacientes que o médico atende, além da opção de ver os medicamentos prescritos pelo médico

## 5 - Você está usando algum framework para escrever os endpoints da sua API? Se sim, qual?

- Pretendo utilizar Typescript para programar, Node JS para o lado do servidor e Express para auxiliar nos endpoints (Esse são os pré definidos, porém pode mudar)