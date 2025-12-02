## 📖 Projeto-Gestão-de-League-of-Legends
Este projeto demonstra a construção de um pipeline de análise de dados (Data Warehouse) a partir de um sistema transacional (OLTP) simulado do universo League of Legends. O objetivo é transformar dados operacionais (inventário, gastos, ranques) em informações estratégicas para tomada de decisões.
## 🔑 Componentes Chave
  - OLTP (Transacional): Banco de dados primário que gerencia o inventário e o estado atual dos Invocadores.
  - OLAP (Analítico): Data Warehouse modelado dimensionalmente (Fatos e Dimensões).
  - ETL (Extract, Transform, Load): Rotina implementada via Stored Procedure para migrar e agregar dados entre os bancos.
## 💾 Modelo de Dados Transacional (OLTP)
O modelo transacional é altamente normalizado e focado na consistência e no registro de transações diárias (compras de skins, registro de ranques). A estrutura é centrada na entidade Invocador e utiliza tabelas de relacionamento (N:N) para gerenciar a posse de itens e o histórico competitivo.
  - Entidades: Invocador, Campeoes, Skins, Icones_Invocador, Skin_Sentinela, Ranque_Solo, Ranque_Flex.
  - Relacionamentos: Campeoes_Invocador, Skins_Invocador, RSolo_Invocador (Ranque Histórico), etc.
  - Dados Inseridos: 6 Invocadores de exemplo (Vânia, Lunari, etc.), 15 Campeões, e dezenas de Skins e Ícones.
## 📊 Modelo Dimensional (OLAP / Data Warehouse)
O modelo analítico foi criado para otimizar consultas de BI (Business Intelligence) sobre gastos.
As dimensões fornecem o contexto para as análises:
  - Dim_Invocador: Características agregadas do jogador (Total de skins/campeões).
  - Dim_Item: Unifica todos os itens (Campeão, Skin, Ícone, Sentinela) em uma única tabela para facilitar a agregação de gastos.
A Tabela Fato armazena as métricas para análise.
  - Fato_Gasto_RP: Registra o evento de gasto.
    - Métrica Chave: valor_rp_gasto (O gasto em Riot Points).
## ⚙️ Processo de Migração (ETL Stored Procedure)
O requisito fundamental do projeto é demonstrado pelo Stored Procedure que move os dados do OLTP para o OLAP.
Rotina Implementada
   - A rotina SP_ETL_Gasto_RP executa as seguintes etapas:
    - Extract & Load (Dimensões): Extrai dados dos Invocadores e carrega na Dim_Invocador.
    - Transform (Itens): Extrai dados de quatro tabelas de itens diferentes (Campeoes, Skins, Icones...) e os transforma em um formato unificado na Dim_Item.
    - Load (Fato): Liga as tabelas de posse transacionais (Campeoes_Invocador, etc.) com as Dimensões e insere os registros de gasto na Fato_Gasto_RP.
## 🚀 Como Executar o Projeto
Criação do Banco Transacional (OLTP):
  - Execute os scripts CREATE TABLE para todas as tabelas (Invocador, Campeoes, etc.).
  - Execute todos os scripts INSERT para popular as tabelas.
Criação do Banco Analítico (OLAP):
  - Execute os scripts CREATE TABLE para as tabelas dimensionais (Dim_* e Fato_*).
Execução do ETL:
  - Execute o script CREATE PROCEDURE SP_ETL_Gasto_RP (garantindo o uso correto do DELIMITER $$).
  - Chame o procedimento para migrar os dados: CALL SP_ETL_Gasto_RP();.
