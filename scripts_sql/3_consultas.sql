SELECT * FROM ALUNO ORDER BY nome_completo ASC;

SELECT 
    A.nome_completo AS Aluno, 
    C.nome_curso AS Curso, 
    T.semestre
FROM ALUNO A
INNER JOIN MATRICULA M ON A.matricula_aluno = M.matricula_aluno
INNER JOIN TURMA T ON M.id_turma = T.id_turma
INNER JOIN CURSO C ON T.id_curso = C.id_curso
WHERE C.nome_curso = 'Engenharia de Software';

SELECT 
    A.nome_completo, 
    P.conteudo AS Prova, 
    R.valor_nota
FROM REGISTRO_NOTA R
JOIN ALUNO A ON R.matricula_aluno = A.matricula_aluno
JOIN PROVA P ON R.id_prova = P.id_prova
WHERE P.conteudo = 'Lógica de Programação' AND R.valor_nota >= 7.0;

SELECT C.nome_curso, COUNT(M.id_matricula) AS total_alunos
FROM CURSO C
JOIN TURMA T ON C.id_curso = T.id_curso
JOIN MATRICULA M ON T.id_turma = M.id_turma
GROUP BY C.nome_curso;
