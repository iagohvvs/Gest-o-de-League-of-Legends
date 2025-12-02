DELIMITER $$

CREATE PROCEDURE SP_ETL_Gasto_RP()
BEGIN
    -- Variaveis para controle de log ou transacao
    DECLARE v_data_execucao DATETIME DEFAULT NOW();

    -- ----------------------------------------------------------------------
    -- A. CARGA DA DIMENSÃO: Dim_Invocador 
    -- ----------------------------------------------------------------------
    INSERT INTO Dim_Invocador (
        id_invocador_oltp,
        nickname,
        nivel,
        total_skins_compradas,
        total_campeoes_comprados
    )
    SELECT 
        i.id_invocador,
        i.nickname,
        1 AS nivel, 
        (SELECT COUNT(*) FROM Skins_Invocador sis WHERE sis.id_invocador = i.id_invocador) AS skins_count,
        (SELECT COUNT(*) FROM Campeoes_Invocador cis WHERE cis.id_invocador = i.id_invocador) AS campeoes_count
    FROM 
        Invocador i
    LEFT JOIN 
        Dim_Invocador di ON i.id_invocador = di.id_invocador_oltp
    WHERE 
        di.id_invocador_oltp IS NULL; -- Insere apenas novos Invocadores

    -- ----------------------------------------------------------------------
    -- B. CARGA DA DIMENSÃO: Dim_Item 
    -- ----------------------------------------------------------------------
    
    -- Limpa a dimensão de item antes de carregar
    DELETE FROM Dim_Item;

    -- Carrega Campeões
    INSERT INTO Dim_Item (id_item_oltp, nome_item, tipo_item, preco_rp_base, raridade)
    SELECT id_campeao, nome, 'Campeao', CAST(CONCAT('0', preco) AS UNSIGNED), c.classe FROM Campeoes c;

    -- Carrega Skins
    INSERT INTO Dim_Item (id_item_oltp, nome_item, tipo_item, preco_rp_base, raridade)
    SELECT id_skin, nome, 'Skin', CAST(CONCAT('0', preco) AS UNSIGNED), classificacao FROM Skins;
    
    -- Carrega Ícones 
    INSERT INTO Dim_Item (id_item_oltp, nome_item, tipo_item, preco_rp_base, raridade)
    SELECT id_icone, nome, 'Icone', CAST(CONCAT('0', preco) AS UNSIGNED), 'Comum' FROM Icones_Invocador;

    -- Carrega Sentinelas
    INSERT INTO Dim_Item (id_item_oltp, nome_item, tipo_item, preco_rp_base, raridade)
    SELECT id_STNL, nome, 'Sentinela', CAST(CONCAT('0', preco) AS UNSIGNED), 'Comum' FROM Skin_Sentinela;


    -- ----------------------------------------------------------------------
    -- C. CARGA DA FATO: Fato_Gasto_RP
    -- ----------------------------------------------------------------------
    
    -- Limpa a tabela fato (Para demonstração de carga total)
    DELETE FROM Fato_Gasto_RP;
    
    -- Carga de Gastos de Campeões
    INSERT INTO Fato_Gasto_RP (
        fk_dim_invocador,
        fk_dim_item,
        valor_rp_gasto,
        data_transacao
    )
    SELECT
        di.id_dim_invocador,
        ditem.id_dim_item,
        ditem.preco_rp_base, 
        v_data_execucao 
    FROM
        Campeoes_Invocador ci -- Tabela de relacionamento transacional
    JOIN
        Dim_Invocador di ON ci.id_invocador = di.id_invocador_oltp
    JOIN
        Dim_Item ditem ON ci.id_campeao = ditem.id_item_oltp
    WHERE
        ditem.tipo_item = 'Campeao';

END$$

DELIMITER ;