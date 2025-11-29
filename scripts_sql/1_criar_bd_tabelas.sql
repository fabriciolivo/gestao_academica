CREATE DATABASE gestao_academica;

USE gestao_academica;

CREATE TABLE CURSO (
    id_curso INT NOT NULL,
    nome_curso VARCHAR(100) NOT NULL,
    carga_horaria INT NOT NULL,
    PRIMARY KEY (id_curso)
);

CREATE TABLE PROFESSOR (
    id_professor INT NOT NULL,
    nome_completo VARCHAR(100) NOT NULL,
    titulacao VARCHAR(50),
    telefone VARCHAR(20),
    PRIMARY KEY (id_professor)
);

CREATE TABLE ALUNO (
    matricula_aluno INT NOT NULL,
    nome_completo VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    email VARCHAR(100),
    PRIMARY KEY (matricula_aluno)
);


CREATE TABLE TURMA (
    id_turma INT NOT NULL,
    semestre VARCHAR(10) NOT NULL, 
    horario_aula VARCHAR(50),
    sala VARCHAR(20),
    id_curso INT NOT NULL,
    id_professor INT NOT NULL,
    PRIMARY KEY (id_turma),
    
    -- Define as relações (FK)
    CONSTRAINT fk_turma_curso FOREIGN KEY (id_curso) 
        REFERENCES CURSO (id_curso),
    CONSTRAINT fk_turma_professor FOREIGN KEY (id_professor) 
        REFERENCES PROFESSOR (id_professor)
);


CREATE TABLE MATRICULA (
    id_matricula INT NOT NULL,
    data_matricula DATE,
    matricula_aluno INT NOT NULL,
    id_turma INT NOT NULL,
    PRIMARY KEY (id_matricula),
    
    CONSTRAINT fk_matricula_aluno FOREIGN KEY (matricula_aluno) 
        REFERENCES ALUNO (matricula_aluno),
    CONSTRAINT fk_matricula_turma FOREIGN KEY (id_turma) 
        REFERENCES TURMA (id_turma)
);


CREATE TABLE PROVA (
    id_prova INT NOT NULL,
    data_aplicacao DATE,
    conteudo VARCHAR(255),
    id_turma INT NOT NULL,
    PRIMARY KEY (id_prova),
    
    CONSTRAINT fk_prova_turma FOREIGN KEY (id_turma) 
        REFERENCES TURMA (id_turma)
);


CREATE TABLE REGISTRO_NOTA (
    id_nota INT NOT NULL,
    valor_nota DECIMAL(4, 2),
    matricula_aluno INT NOT NULL,
    id_prova INT NOT NULL,
    PRIMARY KEY (id_nota),
    
    CONSTRAINT fk_nota_aluno FOREIGN KEY (matricula_aluno) 
        REFERENCES ALUNO (matricula_aluno),
    CONSTRAINT fk_nota_prova FOREIGN KEY (id_prova) 
        REFERENCES PROVA (id_prova)
);
