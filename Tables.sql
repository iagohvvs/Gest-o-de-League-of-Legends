CREATE TABLE Invocador (
    id_invocador INT PRIMARY KEY AUTO_INCREMENT,
    nickname VARCHAR(24) UNIQUE NOT NULL,
    total_rp_campeoes DECIMAL(10, 2) NOT NULL,
    total_rp_skins DECIMAL(10, 2) NOT NULL,
    total_rp_skinsSTNL DECIMAL(10, 2) NOT NULL,
    total_rp_icones DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Campeoes (
    id_campeao INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(20) UNIQUE,
    preco ENUM('260', '585', '790', '880', '975') NOT NULL,
    classe ENUM('mage', 'tank', 'support', 'assassin', 'marksman', 'flgther') NOT NULL,
    dificuldade ENUM('easy', 'medium', 'hard', 'advanced')
);

CREATE TABLE Campeoes_Invocador (
    id_campeao INT NOT NULL,
    id_invocador INT NOT NULL,

    -- Define a chave primária composta (evita duplicatas de campeão/invocador)
    PRIMARY KEY (id_campeao, id_invocador),

    -- Define a chave estrangeira para a tabela Campeoes
    FOREIGN KEY (id_campeao)
        REFERENCES Campeoes(id_campeao)
        ON DELETE RESTRICT -- Se tentar deletar um campeão, a operação será barrada se houver um registro aqui
        ON UPDATE CASCADE, -- Se o id do campeão for alterado, ele será atualizado aqui

    -- Define a chave estrangeira para a tabela Invocador
    FOREIGN KEY (id_invocador)
        REFERENCES Invocador(id_invocador)
        ON DELETE CASCADE -- Se um invocador for deletado, todos os seus registros nesta tabela serão deletados
        ON UPDATE CASCADE -- Se o id do invocador for alterado, ele será atualizado aqui
);

CREATE TABLE Campeao_Habilidades (
    id_campeao INT NOT NULL,
    slot_skill ENUM('Q', 'W', 'E', 'R', 'PASSIVA') NOT NULL,
    nome_skill VARCHAR(80) NOT NULL,
    descricao_skill VARCHAR(3000),

    -- Define a chave primária composta
    PRIMARY KEY (id_campeao, slot_skill),

    -- Define a chave estrangeira para a tabela Campeoes
    FOREIGN KEY (id_campeao)
        REFERENCES Campeoes(id_campeao)
        ON DELETE CASCADE -- Se o campeão for deletado, suas habilidades também serão
        ON UPDATE CASCADE -- Se o id do campeão for alterado, ele será atualizado aqui
);

CREATE TABLE Skins (
    id_skin INT PRIMARY KEY AUTO_INCREMENT,
    id_campeao INT,
    nome VARCHAR(40) UNIQUE,
    preco ENUM('290', '520', '750', '975', '1350', '1820', '3250') NOT NULL,
    classificacao ENUM('legado', 'padrao', 'epica', 'lendaria', 'ultimate') NOT NULL,
    
    -- Define a chave estrangeira para a tabela Campeoes
    FOREIGN KEY (id_campeao)
        REFERENCES Campeoes(id_campeao)
        -- ON DELETE e ON UPDATE não especificados na imagem, mas um comportamento comum seria:
        ON DELETE SET NULL  -- Se o campeão for deletado, a skin ainda existe, mas fica sem campeão associado (NULL)
        ON UPDATE CASCADE   -- Se o ID do campeão for alterado, ele será atualizado aqui
);

CREATE TABLE Skins_Invocador (
    id_skin INT NOT NULL,
    id_invocador INT NOT NULL,

    -- Define a chave primária composta (evita duplicatas de skin/invocador)
    PRIMARY KEY (id_invocador, id_skin),

    -- Define a chave estrangeira para a tabela Skins
    FOREIGN KEY (id_skin)
        REFERENCES Skins(id_skin)
        ON DELETE RESTRICT -- Se tentar deletar uma skin, a operação será barrada se algum invocador a possuir
        ON UPDATE CASCADE, -- Se o id da skin for alterado, ele será atualizado aqui

    -- Define a chave estrangeira para a tabela Invocador
    FOREIGN KEY (id_invocador)
        REFERENCES Invocador(id_invocador)
        ON DELETE CASCADE -- Se um invocador for deletado, todos os seus registros de skins serão deletados
        ON UPDATE CASCADE -- Se o id do invocador for alterado, ele será atualizado aqui
);

CREATE TABLE Ranque_Flex (
    id_ranqueFL INT PRIMARY KEY AUTO_INCREMENT,
    nome ENUM('Ferro', 'Bronze', 'Prata', 'Ouro', 'Platina', 'Esmeralda', 'Diamante', 'Mestre', 'Grao Mestre', 'Desafiante') NOT NULL
);

CREATE TABLE RFlex_Invocador (
    id_ranqueFL INT NOT NULL,
    id_invocador INT NOT NULL,
    season INT NOT NULL,

    -- Define a chave primária composta (Invocador pode ter apenas um registro por season)
    PRIMARY KEY (id_invocador, season),

    -- Define a chave estrangeira para a tabela Ranque_Flex
    FOREIGN KEY (id_ranqueFL)
        REFERENCES Ranque_Flex(id_ranqueFL)
        ON DELETE RESTRICT -- Impede a exclusão de um ranque se ele estiver sendo usado
        ON UPDATE CASCADE, -- Atualiza em cascata se o ID do ranque mudar

    -- Define a chave estrangeira para a tabela Invocador
    FOREIGN KEY (id_invocador)
        REFERENCES Invocador(id_invocador)
        ON DELETE CASCADE -- Se o Invocador for deletado, todos os seus registros de ranque serão deletados
        ON UPDATE CASCADE -- Atualiza em cascata se o ID do invocador mudar
);

CREATE TABLE Ranque_Solo (
    id_ranqueSL INT PRIMARY KEY AUTO_INCREMENT,
    nome ENUM('Ferro', 'Bronze', 'Prata', 'Ouro', 'Platina', 'Esmeralda', 'Diamante', 'Mestre', 'Grao Mestre', 'Desafiante') NOT NULL
);

CREATE TABLE RSolo_Invocador (
    -- Correção do nome do campo na imagem de 'id_ranbqueSL' para 'id_ranqueSL'
    id_ranqueSL INT NOT NULL,
    id_invocador INT NOT NULL,
    season INT NOT NULL,

    -- Define a chave primária composta (Invocador pode ter apenas um registro por season)
    PRIMARY KEY (id_invocador, season),

    -- Define a chave estrangeira para a tabela Ranque_Solo
    FOREIGN KEY (id_ranqueSL)
        REFERENCES Ranque_Solo(id_ranqueSL)
        ON DELETE RESTRICT -- Impede a exclusão de um ranque se ele estiver sendo usado
        ON UPDATE CASCADE, -- Atualiza em cascata se o ID do ranque mudar

    -- Define a chave estrangeira para a tabela Invocador
    FOREIGN KEY (id_invocador)
        REFERENCES Invocador(id_invocador)
        ON DELETE CASCADE -- Se o Invocador for deletado, todos os seus registros de ranque serão deletados
        ON UPDATE CASCADE -- Atualiza em cascata se o ID do invocador mudar
);

CREATE TABLE Skin_Sentinela (
    id_STNL INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40) UNIQUE,
    preco ENUM('640') NOT NULL
);

CREATE TABLE STNL_Invocador (
    id_STNL INT NOT NULL,
    id_invocador INT NOT NULL,

    -- Define a chave primária composta (evita duplicatas de skin de sentinela/invocador)
    PRIMARY KEY (id_invocador, id_STNL),

    -- Define a chave estrangeira para a tabela Skin_Sentinela
    FOREIGN KEY (id_STNL)
        REFERENCES Skin_Sentinela(id_STNL)
        ON DELETE RESTRICT -- Impede a exclusão de uma skin se ela estiver sendo usada
        ON UPDATE CASCADE, -- Atualiza em cascata se o ID da skin mudar

    -- Define a chave estrangeira para a tabela Invocador
    FOREIGN KEY (id_invocador)
        REFERENCES Invocador(id_invocador)
        ON DELETE CASCADE -- Se o Invocador for deletado, todos os seus registros de sentinela serão deletados
        ON UPDATE CASCADE -- Atualiza em cascata se o ID do invocador mudar
);

CREATE TABLE Icones_Invocador (
    id_icone INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40) UNIQUE,
    preco ENUM('250', '350') NOT NULL
);

CREATE TABLE Icones_Invocador_Possui (
    id_icone INT NOT NULL,
    id_invocador INT NOT NULL,

    -- Define a chave primária composta (evita duplicatas de ícone/invocador)
    PRIMARY KEY (id_invocador, id_icone),

    -- Define a chave estrangeira para a tabela Icones_Invocador (Corrigindo a referência)
    FOREIGN KEY (id_icone)
        -- Correção: A tabela de ícones foi criada como Icones_Invocador e a PK é id_icone
        REFERENCES Icones_Invocador(id_icone)
        ON DELETE RESTRICT -- Impede a exclusão de um ícone se ele estiver sendo usado
        ON UPDATE CASCADE, -- Atualiza em cascata se o ID do ícone mudar

    -- Define a chave estrangeira para a tabela Invocador
    FOREIGN KEY (id_invocador)
        REFERENCES Invocador(id_invocador)
        ON DELETE CASCADE -- Se o Invocador for deletado, todos os seus registros de ícones serão deletados
        ON UPDATE CASCADE -- Atualiza em cascata se o ID do invocador mudar
);

CREATE TABLE Dim_Invocador (
    id_dim_invocador INT PRIMARY KEY AUTO_INCREMENT,
    id_invocador_oltp INT NOT NULL, -- Chave de rastreamento do banco transacional
    nickname VARCHAR(50) NOT NULL,
    nivel INT,
    total_skins_compradas INT,
    total_campeoes_comprados INT
);

CREATE TABLE Dim_Item (
    id_dim_item INT PRIMARY KEY AUTO_INCREMENT,
    id_item_oltp VARCHAR(50) NOT NULL,
    nome_item VARCHAR(100) NOT NULL,
    tipo_item VARCHAR(20) NOT NULL, -- 'Campeao', 'Skin', 'Icone', 'Sentinela'
    preco_rp_base DECIMAL(10, 2) NOT NULL,
    raridade VARCHAR(50) -- Ex: 'Lendaria', 'Epica', 'Basica' ou 'Normal'
);

CREATE TABLE Dim_Tempo (
    id_dim_tempo INT PRIMARY KEY, -- Ex: 20240101 (formato numérico)
    data_completa DATE NOT NULL,
    dia_do_mes INT,
    mes INT,
    nome_mes VARCHAR(20),
    ano INT,
    trimestre INT
);

CREATE TABLE Fato_Gasto_RP (
    id_gasto_rp INT PRIMARY KEY AUTO_INCREMENT,
    fk_dim_invocador INT NOT NULL,
    fk_dim_item INT NOT NULL,
    fk_dim_tempo INT,
    
    -- MEDIDAS (Métricas Analíticas)
    valor_rp_gasto DECIMAL(10, 2) NOT NULL,
    data_transacao DATETIME NOT NULL,
    
    FOREIGN KEY (fk_dim_invocador) REFERENCES Dim_Invocador(id_dim_invocador),
    FOREIGN KEY (fk_dim_item) REFERENCES Dim_Item(id_dim_item)
    -- FOREIGN KEY (fk_dim_tempo) REFERENCES Dim_Tempo(id_dim_tempo) -- Adicionar após a criação da Dim_Tempo
);

