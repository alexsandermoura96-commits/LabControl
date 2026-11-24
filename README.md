
# 🧪 LabControl — Sistema de Gestão Laboratorial

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-025E8C?style=for-the-badge)
![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)
![Status](https://img.shields.io/badge/Status-Em%20desenvolvimento-yellow?style=for-the-badge)

## 📌 Sobre o projeto

O LabControl é um projeto de banco de dados relacional voltado 
ao gerenciamento de processos laboratoriais, desenvolvido para 
simular a rotina de um laboratório de análises clínicas.

O sistema contempla o gerenciamento de pacientes, profissionais, 
exames, solicitações, coletas, amostras biológicas e resultados 
laboratoriais, garantindo a organização, a integridade e a 
rastreabilidade das informações.

O projeto integra conhecimentos da área de análises clínicas 
com tecnologias de banco de dados e desenvolvimento de sistemas.

## 🎯 Objetivos

- Desenvolver um banco de dados relacional.
- Aplicar conceitos de modelagem conceitual e lógica.
- Implementar a normalização até a Terceira Forma Normal (3FN).
- Garantir a integridade referencial dos dados.
- Desenvolver scripts SQL para manipulação de registros.
- Simular processos de um sistema de informação laboratorial (LIS).

## 🛠️ Tecnologias utilizadas

- MySQL
- MySQL Workbench
- SQL
- DDL — Data Definition Language
- DML — Data Manipulation Language
- Git
- GitHub
- Markdown

## 🗄️ Estrutura do banco de dados

Nome do banco: `labcontrol_db`

| Entidade | Responsabilidade |
|---|---|
| PACIENTE | Cadastro dos pacientes |
| PROFISSIONAL | Cadastro dos profissionais |
| EXAME | Cadastro dos exames laboratoriais |
| SOLICITACAO_DE_EXAME | Controle das solicitações |
| COLETA | Registro das coletas |
| AMOSTRA_BIOLOGICA | Controle e rastreabilidade das amostras |
| RESULTADO_DE_EXAME | Armazenamento dos resultados |

## 📐 Modelagem de dados

O projeto contempla:

- Levantamento de requisitos.
- Identificação de entidades e atributos.
- Modelo conceitual.
- Modelo lógico.
- Diagrama Entidade-Relacionamento (DER).
- Cardinalidades.
- Chaves primárias (PK).
- Chaves estrangeiras (FK).
- Normalização até a 3FN.
- Restrições de integridade.

## 💻 Comandos SQL abordados

| Comando | Finalidade |
|---|---|
| CREATE DATABASE | Criação do banco de dados |
| CREATE TABLE | Criação das tabelas |
| INSERT INTO | Inserção de registros |
| SELECT | Consulta de informações |
| INNER JOIN | Junção entre tabelas |
| WHERE | Filtragem de registros |
| ORDER BY | Ordenação dos resultados |
| LIMIT | Limitação de resultados |
| UPDATE | Atualização de registros |
| DELETE | Exclusão controlada |
| COMMIT | Confirmação de transações |

## 📂 Estrutura planejada do repositório

```text
LabControl/
├── README.md
├── 01_estrutura.sql
├── 02_insert.sql
├── 03_select.sql
├── 04_update.sql
├── 05_delete.sql
└── docs/
    └── DER_LabControl.png
```

## ⚙️ Pré-requisitos

- MySQL Server instalado.
- MySQL Workbench instalado.
- Conexão local com o servidor MySQL.
- Porta padrão 3306.
- Usuário com permissões de criação e manipulação de dados.

## 🚀 Instruções de execução

Após adicionar todos os scripts ao repositório:

1. Clone ou baixe o repositório.
2. Abra o MySQL Workbench.
3. Conecte-se ao servidor local.
4. Execute os scripts SQL na seguinte ordem:

| Ordem | Script | Finalidade |
|---|---|---|
| 1 | 01_estrutura.sql | Criação do banco e das tabelas |
| 2 | 02_insert.sql | Povoamento do banco |
| 3 | 03_select.sql | Consultas exploratórias |
| 4 | 04_update.sql | Atualização de registros |
| 5 | 05_delete.sql | Exclusão controlada |

Utilize uma base de testes vazia para a execução inicial.

## 📊 Resultados esperados

- 7 entidades relacionadas.
- 35 registros inicialmente cadastrados.
- 5 consultas SQL exploratórias.
- 3 operações de atualização.
- 3 operações de exclusão.
- 32 registros após as exclusões.

A execução dos scripts ainda será validada no MySQL Workbench.

## 🔒 Integridade e segurança

O projeto utiliza chaves primárias, chaves estrangeiras, 
restrições de integridade e transações SQL.

As operações UPDATE e DELETE são condicionadas pela cláusula 
WHERE, evitando alterações e exclusões indiscriminadas.

Todos os dados utilizados são fictícios e destinados 
exclusivamente a fins acadêmicos.

## 🔮 Melhorias futuras

- Desenvolvimento de uma API REST.
- Integração do banco de dados com Java.
- Desenvolvimento de uma interface web.
- Autenticação e controle de acesso.
- Implementação de testes automatizados.
- Integração com sistemas laboratoriais LIS/LIMS.
- Estudo de interoperabilidade utilizando HL7.
- Desenvolvimento de dashboards laboratoriais.

## 🎓 Contexto acadêmico

- Curso: Análise e Desenvolvimento de Sistemas.
- Instituição: Universidade Cruzeiro do Sul.
- Disciplina: Modelagem de Banco de Dados.
- Projeto: LabControl.
- Atividade: Experiência Prática IV.

## 👨‍💻 Autor

**Alexsander Moura Santos**

Técnico em Análises Clínicas e estudante de Análise e 
Desenvolvimento de Sistemas, em transição de carreira 
para a área de Tecnologia da Informação.

Interesses profissionais:

- Desenvolvimento Back-end.
- Banco de dados e SQL.
- Qualidade de Software (QA).
- Suporte Técnico.
- APIs REST.
- Integração de sistemas laboratoriais.

---

⭐ Projeto desenvolvido com a proposta de conectar 
tecnologia, saúde e inovação.
