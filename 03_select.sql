-- =====================================================
-- PROJETO LABCONTROL
-- Sistema de Gestao Laboratorial
-- SGBD: MySQL
-- Ferramenta: MySQL Workbench
-- Script 03 - Consultas e relacionamentos
-- =====================================================

USE labcontrol_db;


-- =====================================================
-- CONSULTA 1
-- Listar pacientes em ordem alfabetica.
-- =====================================================

SELECT
    id_paciente,
    nome,
    data_nascimento,
    cpf,
    telefone
FROM PACIENTE
ORDER BY nome ASC
LIMIT 10;


-- =====================================================
-- CONSULTA 2
-- Consultar solicitacoes de exames concluidas.
-- =====================================================

SELECT
    s.id_solicitacao,
    p.nome AS paciente,
    e.nome_exame AS exame,
    pr.nome AS profissional_solicitante,
    s.data_solicitacao,
    s.status
FROM SOLICITACAO_DE_EXAME AS s
INNER JOIN PACIENTE AS p
    ON s.id_paciente = p.id_paciente
INNER JOIN EXAME AS e
    ON s.id_exame = e.id_exame
INNER JOIN PROFISSIONAL AS pr
    ON s.id_profissional_solicitante = pr.id_profissional
WHERE s.status = 'Concluido'
ORDER BY s.data_solicitacao DESC
LIMIT 10;


-- =====================================================
-- CONSULTA 3
-- Consultar coletas e profissionais responsaveis.
-- =====================================================

SELECT
    c.id_coleta,
    p.nome AS paciente,
    pr.nome AS profissional_coletor,
    c.data_hora_coleta,
    c.tipo_coleta
FROM COLETA AS c
INNER JOIN SOLICITACAO_DE_EXAME AS s
    ON c.id_solicitacao = s.id_solicitacao
INNER JOIN PACIENTE AS p
    ON s.id_paciente = p.id_paciente
INNER JOIN PROFISSIONAL AS pr
    ON c.id_profissional_coletor = pr.id_profissional
WHERE c.tipo_coleta = 'Venosa'
ORDER BY c.data_hora_coleta ASC
LIMIT 10;


-- =====================================================
-- CONSULTA 4
-- Consultar amostras biologicas processadas.
-- =====================================================

SELECT
    a.id_amostra,
    a.codigo_identificacao,
    p.nome AS paciente,
    e.nome_exame AS exame,
    a.tipo_material,
    a.situacao
FROM AMOSTRA_BIOLOGICA AS a
INNER JOIN COLETA AS c
    ON a.id_coleta = c.id_coleta
INNER JOIN SOLICITACAO_DE_EXAME AS s
    ON c.id_solicitacao = s.id_solicitacao
INNER JOIN PACIENTE AS p
    ON s.id_paciente = p.id_paciente
INNER JOIN EXAME AS e
    ON s.id_exame = e.id_exame
WHERE a.situacao = 'Processada'
ORDER BY a.codigo_identificacao ASC
LIMIT 10;


-- =====================================================
-- CONSULTA 5
-- Relatorio completo de resultados laboratoriais.
-- Relacionamento entre as sete tabelas do LabControl.
-- =====================================================

SELECT
    r.id_resultado,
    p.nome AS paciente,
    e.nome_exame AS exame,
    s.data_solicitacao,
    c.data_hora_coleta,
    a.codigo_identificacao,
    r.valor_resultado,
    r.unidade_medida,
    r.data_resultado,
    pr.nome AS profissional_responsavel,
    r.observacoes
FROM RESULTADO_DE_EXAME AS r
INNER JOIN AMOSTRA_BIOLOGICA AS a
    ON r.id_amostra = a.id_amostra
INNER JOIN COLETA AS c
    ON a.id_coleta = c.id_coleta
INNER JOIN SOLICITACAO_DE_EXAME AS s
    ON c.id_solicitacao = s.id_solicitacao
INNER JOIN PACIENTE AS p
    ON s.id_paciente = p.id_paciente
INNER JOIN EXAME AS e
    ON r.id_exame = e.id_exame
    AND s.id_exame = e.id_exame
INNER JOIN PROFISSIONAL AS pr
    ON r.id_profissional_responsavel = pr.id_profissional
WHERE r.observacoes = 'Resultado liberado'
ORDER BY r.data_resultado DESC
LIMIT 10;

-- Fim do script de consultas do LabControl.
