-- =====================================================
-- PROJETO LABCONTROL
-- Sistema de Gestao Laboratorial
-- SGBD: MySQL
-- Ferramenta: MySQL Workbench
-- Script 05 - Exclusao controlada de registros
-- =====================================================

USE labcontrol_db;

START TRANSACTION;

-- Excluir resultado do exame.
DELETE FROM RESULTADO_DE_EXAME
WHERE id_resultado = 5;

-- Excluir amostra biologica.
DELETE FROM AMOSTRA_BIOLOGICA
WHERE id_amostra = 5;

-- Excluir coleta.
DELETE FROM COLETA
WHERE id_coleta = 5;

-- Atualizar o status da solicitacao.
UPDATE SOLICITACAO_DE_EXAME
SET status = 'Pendente'
WHERE id_solicitacao = 5;

COMMIT;

-- Fim do script.
