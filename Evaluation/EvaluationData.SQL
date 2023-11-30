-- Nome: João Vitor de For dos Santos
-- Matrícula: 198226

INSERT INTO Pacientes (cpf, nome, dataNasc, telefone, email)
VALUES ('123.456.789-10', 'Maria daMata', '20/05/1990', '(11) 9999-9999', 'maria.silva@gmail.com');
INSERT INTO Pacientes (cpf, nome, dataNasc, telefone, email)
VALUES ('111.222.333-44', 'João Deon', '12/08/1995', '(21) 8888-8888', 'joao.santos@hotmail.com');
INSERT INTO Pacientes (cpf, nome, dataNasc, telefone, email)
VALUES ('555.666.777-88', 'Ana Paula Kaiser', '15/01/2000', '(31) 7777-7777',
'anapaula.souza@yahoo.com');
INSERT INTO Pacientes (cpf, nome, dataNasc, telefone, email)
VALUES ('444.333.222-11', 'Lucas Diomar', '27/11/1978', '(41) 6666-6666',
'lucas.oliveira@outlook.com');
INSERT INTO Pacientes (cpf, nome, dataNasc, telefone, email)
VALUES ('999.888.777-00', 'Renata Tereza', '10/03/1995', '(51) 5555-5555',
'renata.santos@gmail.com');


INSERT INTO Especialidade (id, nome, descricao)
VALUES (1, 'Cardiologia', 'Especialidade médica que trata de doenças do coração');
INSERT INTO Especialidade (id, nome, descricao)
VALUES (2, 'Oftalmologia', 'Especialidade médica que trata de doenças dos olhos');
INSERT INTO Especialidade (id, nome, descricao)
VALUES (3, 'Pediatria', 'Especialidade médica que trata de crianças e adolescentes');
INSERT INTO Especialidade (id, nome, descricao)
VALUES (4, 'Neurologia', 'Especialidade médica que trata de doenças do sistema nervoso');
INSERT INTO Medicos (crm, nome, telefone, email, idEspecialidade)
VALUES ('12345', 'Dr. João Silva', '(11) 9999-8888', 'joao.silva@gmail.com', 1);
INSERT INTO Medicos (crm, nome, telefone, email, idEspecialidade)
VALUES ('23456', 'Dra. Maria Oliveira', '(21) 8888-7777', 'maria.oliveira@hotmail.com', 2);
INSERT INTO Medicos (crm, nome, telefone, email, idEspecialidade)
VALUES ('34567', 'Dr. Carlos Souza', '(31) 7777-6666', 'carlos.souza@yahoo.com', 3);
INSERT INTO Medicos (crm, nome, telefone, email, idEspecialidade)
VALUES ('45678', 'Dra. Ana Santos', '(41) 6666-5555', 'ana.santos@outlook.com', 1);
INSERT INTO Medicos (crm, nome, telefone, email, idEspecialidade)
VALUES ('56789', 'Dr. Pedro Lima', '(51) 5555-4444', 'pedro.lima@gmail.com', 4);

INSERT INTO Convenio (id, nome) VALUES (1, 'IPE');
INSERT INTO Convenio (id, nome) VALUES (2, 'Unimed');
INSERT INTO Convenio (id, nome) VALUES (3, 'SUS');
INSERT INTO Convenio (id, nome) VALUES (4, 'Pronto Clinica');
INSERT INTO Convenio (id, nome) VALUES (5, 'Sem Plano');

INSERT INTO Consulta (id, horario, data, valor, idPaciente, idMedico, idConvenio) 
VALUES (1, '10:00:00', '10/11/2023', 150, '123.456.789-10', '12345', 1);
INSERT INTO Consulta (id, horario, data, valor, idPaciente, idMedico, idConvenio) 
VALUES (2, '14:00:00', '21/11/2023', 200, '111.222.333-44', '23456', 2);
INSERT INTO Consulta (id, horario, data, valor, idPaciente, idMedico, idConvenio) 
VALUES (3, '09:00:00', '23/11/2023', 100, '555.666.777-88', '34567', 3);
INSERT INTO Consulta (id, horario, data, valor, idPaciente, idMedico, idConvenio) 
VALUES (4, '16:00:00', '23/11/2023', 180, '444.333.222-11', '12345', 4);
INSERT INTO Consulta (id, horario, data, valor, idPaciente, idMedico, idConvenio) 
VALUES (5, '10:30:00', '28/11/2023', 180, '444.333.222-11', '12345', 4);
INSERT INTO Consulta (id, horario, data, valor, idPaciente, idMedico, idConvenio) 
VALUES (6, '11:00:00', '10/10/2022', 120, '111.222.333-44', '23456', 2);