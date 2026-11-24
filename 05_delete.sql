-- =====================================================
-- PROJETO LABCONTROL
-- Sistema de Gestao Laboratorial
-- SGBD: MySQL
-- Ferramenta: MySQL Workbench
-- Script 05 - Exclusao controlada de registros
-- =====================================================

USE labcontrol_db;

START TRANSACTION;

-- 1. Excluir o resultado do exame.

DELETE FROM RESULTADO_DE_EXAME
WHERE id_resultado = 5;


-- 2. Excluir a amostra biologica.

DELETE FROM AMOSTRA_BIOLOGICA
WHERE id_amostra = 5;


-- 3. Excluir a coleta sem amostras vinculadas.

DELETE FROM COLETA
WHERE id_coleta = 5;


-- Confirmar as exclusoes realizadas.

COMMIT;

-- Fim do script de exclusao do LabControl.
