-- =====================================================
-- PROJETO LABCONTROL
-- Sistema de Gestao Laboratorial
-- SGBD: MySQL
-- Ferramenta: MySQL Workbench
-- Script 02 - Povoamento do banco de dados
-- =====================================================

USE labcontrol_db;

START TRANSACTION;


-- 1. Insercao de pacientes

INSERT INTO PACIENTE
(id_paciente, nome, data_nascimento, cpf, sexo, telefone, endereco)
VALUES
(1, 'Maria Silva', '1985-03-15', '00000000001', 'F', '11900000001', 'Sao Paulo - SP'),
(2, 'Joao Santos', '1990-07-22', '00000000002', 'M', '11900000002', 'Sao Paulo - SP'),
(3, 'Ana Oliveira', '1978-11-10', '00000000003', 'F', '11900000003', 'Sao Paulo - SP'),
(4, 'Pedro Souza', '2001-05-18', '00000000004', 'M', '11900000004', 'Sao Paulo - SP'),
(5, 'Juliana Costa', '1995-09-25', '00000000005', 'F', '11900000005', 'Sao Paulo - SP');


-- 2. Insercao de profissionais

INSERT INTO PROFISSIONAL
(id_profissional, nome, registro_profissional, funcao, especialidade, telefone)
VALUES
(1, 'Carlos Almeida', 'CRM-FICTICIO-001', 'Medico', 'Clinica Geral', '11900000011'),
(2, 'Fernanda Lima', 'CRM-FICTICIO-002', 'Medica', 'Endocrinologia', '11900000012'),
(3, 'Lucas Ferreira', 'CRF-FICTICIO-003', 'Tecnico de Laboratorio', 'Coleta', '11900000013'),
(4, 'Mariana Gomes', 'CRBM-FICTICIO-004', 'Biomedica', 'Hematologia', '11900000014'),
(5, 'Rafael Martins', 'CRBM-FICTICIO-005', 'Biomedico', 'Bioquimica', '11900000015');


-- 3. Insercao de exames

INSERT INTO EXAME
(id_exame, codigo_exame, nome_exame, descricao, material_necessario)
VALUES
(1, 'EX001', 'Hemoglobina', 'Dosagem de hemoglobina', 'Sangue total EDTA'),
(2, 'EX002', 'Glicemia', 'Dosagem de glicose', 'Plasma fluoretado'),
(3, 'EX003', 'Creatinina', 'Avaliacao da funcao renal', 'Soro'),
(4, 'EX004', 'Ureia', 'Dosagem de ureia', 'Soro'),
(5, 'EX005', 'Colesterol Total', 'Dosagem de colesterol total', 'Soro');


-- 4. Insercao de solicitacoes de exames
-- Depende das tabelas PACIENTE, PROFISSIONAL e EXAME.

INSERT INTO SOLICITACAO_DE_EXAME
(id_solicitacao, data_solicitacao, status, id_paciente, id_profissional_solicitante, id_exame)
VALUES
(1, '2026-11-20 07:00:00', 'Concluido', 1, 1, 1),
(2, '2026-11-20 07:10:00', 'Concluido', 2, 2, 2),
(3, '2026-11-20 07:20:00', 'Concluido', 3, 1, 3),
(4, '2026-11-20 07:30:00', 'Concluido', 4, 1, 4),
(5, '2026-11-20 07:40:00', 'Concluido', 5, 2, 5);


-- 5. Insercao de coletas
-- Depende das solicitacoes e dos profissionais.

INSERT INTO COLETA
(id_coleta, data_hora_coleta, tipo_coleta, id_solicitacao, id_profissional_coletor)
VALUES
(1, '2026-11-20 08:00:00', 'Venosa', 1, 3),
(2, '2026-11-20 08:10:00', 'Venosa', 2, 3),
(3, '2026-11-20 08:20:00', 'Venosa', 3, 3),
(4, '2026-11-20 08:30:00', 'Venosa', 4, 3),
(5, '2026-11-20 08:40:00', 'Venosa', 5, 3);


-- 6. Insercao de amostras biologicas
-- Depende dos registros da tabela COLETA.

INSERT INTO AMOSTRA_BIOLOGICA
(id_amostra, codigo_identificacao, tipo_material, situacao, id_coleta)
VALUES
(1, 'AMB001', 'Sangue total EDTA', 'Processada', 1),
(2, 'AMB002', 'Plasma fluoretado', 'Processada', 2),
(3, 'AMB003', 'Soro', 'Processada', 3),
(4, 'AMB004', 'Soro', 'Processada', 4),
(5, 'AMB005', 'Soro', 'Processada', 5);


-- 7. Insercao de resultados de exames
-- Depende das amostras, exames e profissionais.

INSERT INTO RESULTADO_DE_EXAME
(id_resultado, data_resultado, valor_resultado, unidade_medida, observacoes, id_amostra, id_exame, id_profissional_responsavel)
VALUES
(1, '2026-11-20 10:00:00', '13.5', 'g/dL', 'Resultado liberado', 1, 1, 4),
(2, '2026-11-20 10:10:00', '92', 'mg/dL', 'Resultado liberado', 2, 2, 5),
(3, '2026-11-20 10:20:00', '1.02', 'mg/dL', 'Resultado liberado', 3, 3, 5),
(4, '2026-11-20 10:30:00', '32', 'mg/dL', 'Resultado liberado', 4, 4, 5),
(5, '2026-11-20 10:40:00', '185', 'mg/dL', 'Resultado liberado', 5, 5, 5);


-- Confirmacao da transacao.

COMMIT;

-- Fim do script de povoamento do LabControl.
