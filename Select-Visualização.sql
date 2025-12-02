
-- CONSULTA O VALOR TOTAL GASTO
    SELECT
    i.nickname,
    c.nome AS Nome_Campeao,
    c.preco AS Preco_RP
FROM
    Campeoes_Invocador ci
JOIN
    Invocador i ON ci.id_invocador = i.id_invocador
JOIN
    Campeoes c ON ci.id_campeao = c.id_campeao
WHERE
    i.nickname = 'Vânia'
ORDER BY
    c.preco DESC;
    
    SELECT
    nickname,
    total_rp_campeoes,
    total_rp_skins,
    total_rp_skinsSTNL,
    total_rp_icones,
    (total_rp_campeoes + total_rp_skins + total_rp_skinsSTNL + total_rp_icones) AS total_rp_geral
FROM
    Invocador
ORDER BY
    total_rp_geral DESC;

-- CONSULTA DE RANQUE
    SELECT
    i.nickname,
    rs.nome AS Ranque_Solo_2024,
    rsi.season
FROM
    Invocador i
JOIN
    RSolo_Invocador rsi ON i.id_invocador = rsi.id_invocador
JOIN
    Ranque_Solo rs ON rsi.id_ranqueSL = rs.id_ranqueSL
WHERE
    rsi.season = 2024
ORDER BY
    FIELD(rs.nome, 'Desafiante', 'Grao Mestre', 'Mestre', 'Diamante', 'Esmeralda', 'Platina', 'Ouro', 'Prato', 'Bronze', 'Ferro');

-- CONSULTA DE GASTOS POR TIPO DE ITEM
    SELECT
    di.tipo_item,
    COUNT(DISTINCT fg.fk_dim_invocador) AS Invocadores_Envolvidos,
    SUM(fg.valor_rp_gasto) AS Total_RP_Gasto
FROM
    Fato_Gasto_RP fg
JOIN
    Dim_Item di ON fg.fk_dim_item = di.id_dim_item
GROUP BY
    di.tipo_item
ORDER BY
    Total_RP_Gasto DESC;
    
    CALL SP_ETL_Gasto_RP();
    
    SET SQL_SAFE_UPDATES = 0;
    
    SELECT COUNT(*) FROM Fato_Gasto_RP;
SELECT * FROM Fato_Gasto_RP LIMIT 5;

SELECT * FROM Dim_Item LIMIT 5;
