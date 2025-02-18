-- Nome: João Vitor de For dos Santos
-- Matrícula: 198226

CREATE TABLE Pacientes (
cpf VARCHAR(14) PRIMARY KEY, 
nome VARCHAR(50) NOT NULL,
dataNasc DATE NOT NULL, 
telefone VARCHAR(20), 
email VARCHAR(50)
);

CREATE TABLE Especialidade (
id INTEGER PRIMARY KEY, 
nome VARCHAR(50) NOT NULL,
descricao VARCHAR(100)
);
CREATE TABLE Medicos (
crm VARCHAR(30) PRIMARY KEY, 
nome VARCHAR(50) NOT NULL,
telefone VARCHAR(20), 
email VARCHAR(50),
idEspecialidade INTEGER NOT NULL,
FOREIGN KEY (idEspecialidade) REFERENCES Especialidade (id)
);
CREATE TABLE Convenio (
id INTEGER PRIMARY KEY, 
nome VARCHAR(50) NOT NULL
);
CREATE TABLE Consulta (
id INTEGER PRIMARY KEY,
horario TIME NOT NULL, 
data DATE NOT NULL, 
valor INTEGER NOT NULL,
idPaciente VARCHAR(14) NOT NULL, 
idMedico VARCHAR(30) NOT NULL,
idConvenio INTEGER NOT NULL,
FOREIGN KEY (idPaciente) REFERENCES Pacientes (cpf), 
FOREIGN KEY (idMedico) REFERENCES Medicos (crm), 
FOREIGN KEY (idConvenio) REFERENCES Convenio (id)
);