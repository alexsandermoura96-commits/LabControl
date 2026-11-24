-- =====================================================
-- PROJETO LABCONTROL
-- Sistema de Gestao Laboratorial
-- SGBD: MySQL
-- Ferramenta: MySQL Workbench
-- Script 04 - Atualizacao de registros
-- =====================================================

USE labcontrol_db;

START TRANSACTION;


-- =====================================================
-- UPDATE 1
-- Atualizar o telefone da paciente Maria Silva.
-- =====================================================

UPDATE PACIENTE
SET telefone = '11988880001'
WHERE id_paciente = 1;

-- Verificar a atualizacao.

SELECT id_paciente, nome, telefone
FROM PACIENTE
WHERE id_paciente = 1;


-- =====================================================
-- UPDATE 2
-- Atualizar o endereco do paciente Joao Santos.
-- =====================================================

UPDATE PACIENTE
SET endereco = 'Itaquera - Sao Paulo - SP'
WHERE id_paciente = 2;

-- Verificar a atualizacao.

SELECT id_paciente, nome, endereco
FROM PACIENTE
WHERE id_paciente = 2;


-- =====================================================
-- UPDATE 3
-- Atualizar a descricao do exame de creatinina.
-- =====================================================

UPDATE EXAME
SET descricao = 'Dosagem de creatinina para avaliacao da funcao renal'
WHERE id_exame = 3;

-- Verificar a atualizacao.

SELECT id_exame, nome_exame, descricao
FROM EXAME
WHERE id_exame = 3;


-- Confirmar as alteracoes realizadas.

COMMIT;

-- Fim do script de atualizacao do LabControl.
