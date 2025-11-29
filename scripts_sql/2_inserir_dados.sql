INSERT INTO CURSO (id_curso, nome_curso, carga_horaria) VALUES 
(1, 'Engenharia de Software', 3600),
(2, 'Direito', 4000),
(3, 'Administração', 3000);

SELECT * FROM CURSO;

INSERT INTO PROFESSOR (id_professor, nome_completo, titulacao, telefone) VALUES 
(1, 'Fabricio Olivo', 'Doutor', '1199999-8888'),
(2, 'Carla Maria', 'Mestre', '1198888-7777'),
(3, 'Roberto Meneguel', 'Especialista', '1197777-6666');

SELECT * FROM PROFESSOR;

INSERT INTO ALUNO (matricula_aluno, nome_completo, cpf, email) VALUES 
(1001, 'João Pereira', '12345678901', 'joao@email.com'),
(1002, 'Maria Oliveira', '23456789012', 'maria@email.com'),
(1003, 'Pedro Santos', '34567890123', 'pedro@email.com'),
(1004, 'Lucas Lima', '45678901234', 'lucas@email.com');

SELECT * FROM ALUNO;

INSERT INTO TURMA (id_turma, semestre, horario_aula, sala, id_curso, id_professor) VALUES 
(10, '2026/1', '08:00-11:30', 'Sala 101', 1, 1), 
(20, '2026/1', '19:00-22:30', 'Sala 202', 2, 2); 

SELECT * FROM TURMA;

INSERT INTO MATRICULA (id_matricula, data_matricula, matricula_aluno, id_turma) VALUES 
(501, '2026-01-15', 1001, 10),
(502, '2026-01-16', 1002, 10),
(503, '2026-01-17', 1003, 20);

SELECT * FROM MATRICULA;

INSERT INTO PROVA (id_prova, data_aplicacao, conteudo, id_turma) VALUES 
(1, '2026-04-10', 'Lógica de Programação', 10),
(2, '2026-04-12', 'Direito Constitucional', 20);


INSERT INTO REGISTRO_NOTA (id_nota, valor_nota, matricula_aluno, id_prova) VALUES 
(1, 8.5, 1001, 1), -- Nota do João em Lógica
(2, 6.0, 1002, 1), -- Nota da Maria em Lógica
(3, 9.0, 1003, 2); -- Nota do Pedro em Direito
