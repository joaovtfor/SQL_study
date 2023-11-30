-- 5
INSERT INTO Consulta (id, horario, data, valor, idPaciente, idMedico, idConvenio) 
VALUES (7, '13:00:00', '15/11/2023', 180, '123.456.789-10', '12345', 1);

-- 6
UPDATE Consulta
SET valor = valor + (valor*0.10)
WHERE idConvenio = 2 OR
idConvenio = 5

-- 7
SELECT p.nome, m.nome, c.data
FROM Pacientes p INNER JOIN Consulta c ON
    p.cpf = c.idPaciente
INNER JOIN Medicos m ON
    m.crm = c.idMedico

-- 8
SELECT c.nome, COUNT(c.nome)
FROM Consulta cs RIGHT JOIN Convenio c ON  
    cs.idConvenio = c.id
GROUP BY c.nome

-- 9 
SELECT p.nome, COUNT(p.nome)*c.valor
FROM Pacientes p INNER JOIN Consulta c ON
    p.cpf = c.idPaciente
GROUP BY p.nome, c.valor
ORDER BY COUNT(p.nome)*c.valor DESC