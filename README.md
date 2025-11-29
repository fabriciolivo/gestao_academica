# Sistema de Gestão Acadêmica "AprendaMais" 🎓

Este repositório contém os scripts SQL e a documentação do projeto de banco de dados para um Sistema de Gestão Acadêmica. O projeto foi desenvolvido como parte da disciplina de Banco de Dados.

## 📋 Descrição do Projeto
O sistema visa gerenciar a estrutura pedagógica de uma instituição de ensino, controlando cursos, turmas, professores, alunos, matrículas e o registro de notas de avaliações.

## 🛠 Tecnologias Utilizadas
* **MySQL Workbench** (Modelagem e Desenvolvimento)
* **SQL** (Linguagem de Consulta Estruturada)
* **Git/GitHub** (Versionamento)

## 📂 Estrutura do Banco de Dados
O modelo lógico contempla as seguintes tabelas principais:
* `CURSO` e `TURMA`
* `PROFESSOR` e `ALUNO`
* `MATRICULA` (Associativa)
* `PROVA` e `REGISTRO_NOTA`

## 🚀 Como Executar
1.  Abra o arquivo `1_create_tables.sql` no seu SGBD para criar a estrutura.
2.  Execute o arquivo `2_insert_dados.sql` para popular as tabelas com dados fictícios.
3.  Utilize o arquivo `3_consultas_operacoes.sql` para testar consultas e modificações.

## ✒️ Autor
* **Fabricio Gabriel Olivo**