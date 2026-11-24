-- =====================================================
-- PROJETO LABCONTROL
-- Sistema de Gestao Laboratorial
-- SGBD: MySQL
-- Ferramenta: MySQL Workbench
-- Script 01 - Criacao do banco de dados e tabelas
-- =====================================================

CREATE DATABASE IF NOT EXISTS labcontrol_db
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_unicode_ci;

USE labcontrol_db;


-- =====================================================
-- 1. TABELA PACIENTE
-- =====================================================

CREATE TABLE PACIENTE (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    data_nascimento DATE NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    sexo VARCHAR(20) NOT NULL,
    telefone VARCHAR(20),
    endereco VARCHAR(255)
) ENGINE = InnoDB;


-- =====================================================
-- 2. TABELA PROFISSIONAL
-- =====================================================

CREATE TABLE PROFISSIONAL (
    id_profissional INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    registro_profissional VARCHAR(50) NOT NULL UNIQUE,
    funcao VARCHAR(80) NOT NULL,
    especialidade VARCHAR(100),
    telefone VARCHAR(20)
) ENGINE = InnoDB;


-- =====================================================
-- 3. TABELA EXAME
-- =====================================================

CREATE TABLE EXAME (
    id_exame INT AUTO_INCREMENT PRIMARY KEY,
    codigo_exame VARCHAR(20) NOT NULL UNIQUE,
    nome_exame VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    material_necessario VARCHAR(100) NOT NULL
) ENGINE = InnoDB;


-- =====================================================
-- 4. TABELA SOLICITACAO_DE_EXAME
-- =====================================================

CREATE TABLE SOLICITACAO_DE_EXAME (
    id_solicitacao INT AUTO_INCREMENT PRIMARY KEY,
    data_solicitacao DATETIME NOT NULL,
    status VARCHAR(30) NOT NULL,
    id_paciente INT NOT NULL,
    id_profissional_solicitante INT NOT NULL,
    id_exame INT NOT NULL,

    FOREIGN KEY (id_paciente)
        REFERENCES PACIENTE(id_paciente),

    FOREIGN KEY (id_profissional_solicitante)
        REFERENCES PROFISSIONAL(id_profissional),

    FOREIGN KEY (id_exame)
        REFERENCES EXAME(id_exame)
) ENGINE = InnoDB;


-- =====================================================
-- 5. TABELA COLETA
-- =====================================================

CREATE TABLE COLETA (
    id_coleta INT AUTO_INCREMENT PRIMARY KEY,
    data_hora_coleta DATETIME NOT NULL,
    tipo_coleta VARCHAR(50) NOT NULL,
    id_solicitacao INT NOT NULL UNIQUE,
    id_profissional_coletor INT NOT NULL,

    FOREIGN KEY (id_solicitacao)
        REFERENCES SOLICITACAO_DE_EXAME(id_solicitacao),

    FOREIGN KEY (id_profissional_coletor)
        REFERENCES PROFISSIONAL(id_profissional)
) ENGINE = InnoDB;


-- =====================================================
-- 6. TABELA AMOSTRA_BIOLOGICA
-- =====================================================

CREATE TABLE AMOSTRA_BIOLOGICA (
    id_amostra INT AUTO_INCREMENT PRIMARY KEY,
    codigo_identificacao VARCHAR(50) NOT NULL UNIQUE,
    tipo_material VARCHAR(100) NOT NULL,
    situacao VARCHAR(50) NOT NULL,
    id_coleta INT NOT NULL,

    FOREIGN KEY (id_coleta)
        REFERENCES COLETA(id_coleta)
) ENGINE = InnoDB;


-- =====================================================
-- 7. TABELA RESULTADO_DE_EXAME
-- =====================================================

CREATE TABLE RESULTADO_DE_EXAME (
    id_resultado INT AUTO_INCREMENT PRIMARY KEY,
    data_resultado DATETIME NOT NULL,
    valor_resultado VARCHAR(100) NOT NULL,
    unidade_medida VARCHAR(30),
    observacoes VARCHAR(255),
    id_amostra INT NOT NULL,
    id_exame INT NOT NULL,
    id_profissional_responsavel INT NOT NULL,

    FOREIGN KEY (id_amostra)
        REFERENCES AMOSTRA_BIOLOGICA(id_amostra),

    FOREIGN KEY (id_exame)
        REFERENCES EXAME(id_exame),

    FOREIGN KEY (id_profissional_responsavel)
        REFERENCES PROFISSIONAL(id_profissional)
) ENGINE = InnoDB;


-- =====================================================
-- Verificacao das tabelas criadas
-- =====================================================

SHOW TABLES;

-- Fim do script de estruturacao do LabControl.
