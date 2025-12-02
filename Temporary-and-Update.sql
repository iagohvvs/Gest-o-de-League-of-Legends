CREATE TEMPORARY TABLE Invocador_RP_Campeoes_FINAL AS
SELECT 
    ic.id_invocador,
    -- Concatena a string de preço com 0 para forçar a interpretação como valor numérico antes do SUM
    SUM(CAST(CONCAT('0', c.preco) AS UNSIGNED)) AS novo_total_rp_campeoes
FROM 
    Campeoes_Invocador ic
JOIN 
    Campeoes c ON ic.id_campeao = c.id_campeao
GROUP BY 
    ic.id_invocador;

UPDATE Invocador i
JOIN Invocador_RP_Campeoes_FINAL trpc ON i.id_invocador = trpc.id_invocador
SET i.total_rp_campeoes = trpc.novo_total_rp_campeoes;

DROP TEMPORARY TABLE Invocador_RP_Campeoes_FINAL;
-------------------------------------------------------------------
CREATE TEMPORARY TABLE Invocador_RP_Skins_FINAL AS
SELECT
    isc.id_invocador,
    SUM(CAST(CONCAT('0', s.preco) AS UNSIGNED)) AS novo_total_rp_skins
FROM
    Skins_Invocador isc
JOIN
    Skins s ON isc.id_skin = s.id_skin
GROUP BY
    isc.id_invocador;

UPDATE Invocador i
JOIN Invocador_RP_Skins_FINAL trps ON i.id_invocador = trps.id_invocador
SET i.total_rp_skins = trps.novo_total_rp_skins;

DROP TEMPORARY TABLE Invocador_RP_Skins_FINAL;
-------------------------------------------------------------------
CREATE TEMPORARY TABLE Invocador_RP_STNL_FINAL AS
SELECT
    isc.id_invocador,
    SUM(CAST(CONCAT('0', ss.preco) AS UNSIGNED)) AS novo_total_rp_skinsSTNL
FROM
    STNL_Invocador isc
JOIN
    Skin_Sentinela ss ON isc.id_STNL = ss.id_STNL
GROUP BY
    isc.id_invocador;

UPDATE Invocador i
JOIN Invocador_RP_STNL_FINAL trps ON i.id_invocador = trps.id_invocador
SET i.total_rp_skinsSTNL = trps.novo_total_rp_skinsSTNL;

DROP TEMPORARY TABLE Invocador_RP_STNL_FINAL;
-------------------------------------------------------------------
CREATE TEMPORARY TABLE Invocador_RP_Icones_FINAL AS
SELECT
    iip.id_invocador,
    SUM(CAST(CONCAT('0', ii.preco) AS UNSIGNED)) AS novo_total_rp_icones
FROM
    Icones_Invocador_Possui iip
JOIN
    Icones_Invocador ii ON iip.id_icone = ii.id_icone
GROUP BY
    iip.id_invocador;

UPDATE Invocador i
JOIN Invocador_RP_Icones_FINAL trps ON i.id_invocador = trps.id_invocador
SET i.total_rp_icones = trps.novo_total_rp_icones;

DROP TEMPORARY TABLE Invocador_RP_Icones_FINAL;