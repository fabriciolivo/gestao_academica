UPDATE PROFESSOR 
SET telefone = '1195555-4444' 
WHERE nome_completo = 'Fabricio Olivo';

UPDATE REGISTRO_NOTA 
SET valor_nota = 7.5 
WHERE matricula_aluno = 1002 AND id_prova = 1;

UPDATE TURMA 
SET sala = 'Lab Informática 2' 
WHERE id_turma = 10;

DELETE FROM REGISTRO_NOTA 
WHERE id_nota = 3;

DELETE FROM MATRICULA 
WHERE matricula_aluno = 1004 AND id_turma = 20;

DELETE FROM ALUNO 
WHERE matricula_aluno = 1004;