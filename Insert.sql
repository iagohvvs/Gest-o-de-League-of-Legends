INSERT INTO Campeoes (nome, preco, classe, dificuldade) VALUES
('Lux', '790', 'mage', 'easy'),
('Ahri', '880', 'mage', 'medium'),
('Miss Fortune', '790', 'marksman', 'easy'),
('Ezreal', '880', 'marksman', 'medium'),
('Garen', '260', 'flgther', 'easy'),
('Jinx', '975', 'marksman', 'medium'),
('Caitlyn', '880', 'marksman', 'medium'),
('Vi', '880', 'flgther', 'medium'),
('Ekko', '975', 'assassin', 'hard'),
('Viktor', '880', 'mage', 'hard'),
('Jayce', '975', 'flgther', 'advanced'),
('Kayle', '790', 'flgther', 'medium'),
('Morgana', '790', 'support', 'medium'),
('Aatrox', '975', 'flgther', 'hard'),
('Katarina', '585', 'assassin', 'hard');

-- Preços: '260', '585', '790', '880', '975'
-- Classes: 'mage', 'tank', 'support', 'assassin', 'marksman', 'flgther'
-- Dificuldades: 'easy', 'medium', 'hard', 'advanced'

INSERT INTO Campeao_Habilidades (id_campeao, slot_skill, nome_skill, descricao_skill) VALUES

-- 1. LUX
(1, 'PASSIVA', 'Iluminação', 'As habilidades ofensivas de Lux marcam o inimigo com energia por alguns segundos. O próximo ataque de Lux contra um inimigo marcado ativa a energia, causando Dano Mágico adicional.'),
(1, 'Q', 'Ligação da Luz', 'Dispara uma esfera de luz que imobiliza até dois inimigos. O segundo inimigo recebe dano e imobilização reduzidos.'),
(1, 'W', 'Barreira Prismática', 'Lux lança seu bastão para a frente, concedendo um escudo a si mesma e a todos os aliados atingidos em ambas as direções (ida e volta).'),
(1, 'E', 'Singularidade Lucente', 'Dispara uma anomalia de luz em uma área. A anomalia retarda inimigos próximos. Lux pode detoná-la para causar dano mágico.'),
(1, 'R', 'Centelha Final', 'Após um pequeno período de conjuração, Lux dispara um raio de luz letal em linha reta que causa grande Dano Mágico a todos os inimigos no caminho. Reinicia a passiva dos alvos atingidos.'),

-- 2. AHRI
(2, 'PASSIVA', 'Vontade de Fogo', 'Sempre que Ahri acerta um inimigo com 3 habilidades, a próxima conjuração de Orbe da Ilusão (Q) que a atingir concede a ela Velocidade de Movimento e a cura.'),
(2, 'Q', 'Orbe da Ilusão', 'Ahri lança e puxa de volta um orbe, causando Dano Mágico na ida e Dano Verdadeiro na volta. Ahri recebe um breve pico de Velocidade de Movimento.'),
(2, 'W', 'Fogo de Raposa', 'Ahri solta três fogos de raposa que miram em inimigos próximos e causam Dano Mágico. Alvos já Charmosos (E) são priorizados.'),
(2, 'E', 'Encanto', 'Ahri sopra um beijo que causa dano e encanta o primeiro inimigo atingido, forçando-o a caminhar inofensivamente em direção a ela. O alvo afetado recebe dano mágico aumentado das habilidades de Ahri.'),
(2, 'R', 'Disparada Espiritual', 'Ahri avança, disparando projéteis de essência em 3 inimigos próximos e causando Dano Mágico. Pode ser conjurada até três vezes antes de entrar em recarga.'),

-- 3. MISS FORTUNE
(3, 'PASSIVA', 'Hora da Decisão', 'Miss Fortune causa Dano Físico adicional sempre que ataca um novo alvo.'),
(3, 'Q', 'Dois por Um', 'Miss Fortune dispara em um alvo, atingindo-o e a um alvo atrás dele. O segundo tiro é um Acerto Crítico se o primeiro abate o alvo.'),
(3, 'W', 'Atirar', 'Passivamente concede Velocidade de Movimento aumentada. Ativar concede Velocidade de Ataque aumentada por um breve período. Seus ataques reduzem o Tempo de Recarga desta habilidade.'),
(3, 'E', 'Chuva de Balas', 'Dispara centenas de balas em uma área, causando dano contínuo e Lentidão aos inimigos.'),
(3, 'R', 'Metralhadora', 'Miss Fortune canaliza uma rajada de balas que ricocheteiam em uma área cônica por um curto período de tempo, causando Dano Físico massivo.'),

-- 4. EZREAL
(4, 'PASSIVA', 'Potencial Crescente', 'Acertar uma habilidade aumenta a Velocidade de Ataque de Ezreal por um curto período, acumulando até 5 vezes.'),
(4, 'Q', 'Disparo Místico', 'Ezreal dispara um projétil de energia, causando Dano Físico e aplicando efeitos de contato. Se atingir um alvo, reduz o Tempo de Recarga de todas as habilidades de Ezreal.'),
(4, 'W', 'Fluxo Essencial', 'Ezreal dispara um orbe que adere a Campeões ou Monstros. Atacá-los com habilidades ou ataques básicos detona o orbe, restaurando Mana e causando dano.'),
(4, 'E', 'Translocação Arcana', 'Ezreal se teleporta para um local próximo e dispara um raio que atinge a unidade inimiga mais próxima, causando Dano Mágico.'),
(4, 'R', 'Barragem de Disparos', 'Ezreal canaliza para disparar uma barragem de energia de longo alcance que atravessa o mapa, causando Dano Mágico a cada unidade atingida.'),

-- 5. GAREN
(5, 'PASSIVA', 'Perseverança', 'Se Garen não sofrer dano recentemente, ele regenera uma porcentagem de sua Vida máxima por segundo.'),
(5, 'Q', 'Acerto Demaciano', 'Garen recebe um aumento de Velocidade de Movimento, remove Lentidões e seu próximo ataque causa Dano Físico adicional e Silencia o alvo.'),
(5, 'W', 'Coragem', 'Passivamente aumenta a Armadura e Resistência Mágica. Ativar concede um escudo e aumenta a Tenacidade por um breve período.'),
(5, 'E', 'Julgamento', 'Garen gira com sua espada por 3 segundos, causando dano físico por segundo a inimigos próximos. Garen não pode usar ataques básicos durante a conjuração.'),
(5, 'R', 'Justiça Demaciana', 'Garen invoca o poder de Demacia para tentar executar um Campeão inimigo, causando Dano Verdadeiro. O dano é maior quanto mais vida o alvo tiver perdido.'),

-- 6. JINX
(6, 'PASSIVA', 'Fervor!', 'Jinx recebe um grande aumento de Velocidade de Ataque e Velocidade de Movimento sempre que um campeão, torre ou inibidor que ela atacou recentemente é abatido ou destruído.'),
(6, 'Q', 'Troca-troca!', 'Alterna entre seu lança-chamas (causa dano em área, custo de mana por ataque) e sua metralhadora (concede Velocidade de Ataque acumulável).'),
(6, 'W', 'Zap!', 'Jinx dispara um raio de choque que causa dano, concede Visão Verdadeira do alvo e aplica Lentidão.'),
(6, 'E', 'Mordidinhas Flamejantes!', 'Jinx joga uma linha de armadilhas que se armam após um breve atraso. O primeiro Campeão inimigo que pisar em uma é enraizado e sofre Dano Mágico.'),
(6, 'R', 'Super Mega Míssil da Morte!', 'Jinx dispara um míssil gigante por todo o mapa. Causa Dano Físico, que aumenta com a distância percorrida, e dano em área ao redor do alvo principal.'),

-- 7. CAITLYN
(7, 'PASSIVA', 'Disparo na Cabeça', 'Após um certo número de ataques básicos (reduzidos se no arbusto), o próximo ataque básico de Caitlyn causa dano adicional. Acertar um inimigo em uma armadilha ou rede dobra a distância do próximo Disparo na Cabeça.'),
(7, 'Q', 'Pacificadora de Piltover', 'Caitlyn prepara seu rifle e dispara um projétil perfurante que causa dano em linha. O dano é reduzido após atingir o primeiro alvo.'),
(7, 'W', 'Armadilha de Yordle', 'Caitlyn arma uma armadilha que enraiza o primeiro inimigo que pisar nela por um breve período e revela o alvo.'),
(7, 'E', 'Rede Calibre 90', 'Caitlyn atira uma rede, impulsionando-se para trás, enquanto a rede causa Lentidão ao primeiro inimigo que atingir.'),
(7, 'R', 'Ás na Manga', 'Caitlyn mira cuidadosamente em um Campeão inimigo à distância máxima e dispara um único tiro que causa Dano Físico massivo. Campeões inimigos podem interceptar o projétil.'),

-- 8. VI
(8, 'PASSIVA', 'Escudo de Explosão', 'Vi gera um escudo temporário depois de acertar um inimigo com 3 ataques ou habilidades.'),
(8, 'Q', 'Quebra-Cofres', 'Vi canaliza um soco poderoso, avançando e causando Dano Físico. A distância percorrida aumenta com o tempo de canalização.'),
(8, 'W', 'Golpes de Curto-Circuito', 'A cada terceiro ataque básico consecutivo no mesmo alvo, Vi causa Dano Físico adicional, reduz a Armadura do alvo e concede Velocidade de Ataque adicional a Vi.'),
(8, 'E', 'Força Excessiva', 'O próximo ataque básico de Vi causa Dano Físico adicional e explosivo em cone atrás do alvo.'),
(8, 'R', 'Força Desnecessária', 'Vi mira em um Campeão inimigo, avança e o derruba no ar, causando dano e Atordoamento. Outros inimigos no caminho são afastados e recebem dano.'),

-- 9. EKKO
(9, 'PASSIVA', 'Ressonância de Revo', 'A cada três ataques ou habilidades ofensivas no mesmo alvo, Ekko causa Dano Mágico adicional e Lentidão. Se for um campeão, ele recebe um grande pico de Velocidade de Movimento.'),
(9, 'Q', 'Fase em Espiral', 'Ekko lança um dispositivo que causa dano na ida, cria uma zona de Lentidão e depois volta para ele, causando dano novamente.'),
(9, 'W', 'Convergência Paralela', 'Ekko lança um dispositivo que, após um longo atraso, cria uma grande zona de Lentidão. Se Ekko entrar na zona, ele recebe um escudo e Atordoa os inimigos dentro.'),
(9, 'E', 'Salto Temporal', 'Ekko avança para uma área e seu próximo ataque básico é potencializado, causando dano adicional e teletransportando Ekko para o alvo.'),
(9, 'R', 'Quebra Temporal', 'Ekko volta no tempo, tornando-se inalvejável por um breve período e se teleportando para onde estava há 4 segundos. Causa dano em área e cura Ekko com base no dano que ele recebeu nos últimos 4 segundos.'),

-- 10. VIKTOR
(10, 'PASSIVA', 'Evolução Gloriosa', 'Viktor começa o jogo com um Núcleo Hex, que pode ser aprimorado com ouro para melhorar suas habilidades permanentemente.'),
(10, 'Q', 'Sifão de Poder', 'Viktor dispara um projétil que causa Dano Mágico. Seu próximo ataque básico é potencializado, causando dano adicional e concedendo a Viktor um escudo temporário.'),
(10, 'W', 'Campo Gravitacional', 'Viktor lança um campo que causa Lentidão nos inimigos. Se um inimigo permanecer na área por tempo suficiente, é Atordoado.'),
(10, 'E', 'Raio da Morte', 'Viktor usa seu braço robótico para traçar uma linha no campo de batalha, causando Dano Mágico a todos os inimigos em seu caminho.'),
(10, 'R', 'Tempestade do Caos', 'Viktor cria uma tempestade que causa Dano Mágico e Silencia inimigos. A tempestade persegue o alvo inicial e pode ser redirecionada por Viktor.'),

-- 11. JAYCE
(11, 'PASSIVA', 'Condensador Hextech', 'Sempre que Jayce alterna formas, ele recebe um breve pico de Velocidade de Movimento e ignora colisão com unidades.'),
(11, 'Q', 'Ataque Acelerado / Choque da Fronteira', 'Forma Canhão: Dispara uma esfera elétrica. Forma Martelo: Salta para o alvo, causando Dano Físico e Lentidão.'),
(11, 'W', 'Campo Estático / Portal de Aceleração', 'Forma Canhão: Concede Velocidade de Ataque máxima por 3 ataques. Forma Martelo: Causa Dano Mágico contínuo em área passivamente e ativamente gera um campo de dano ao redor de si.'),
(11, 'E', 'Golpe Trovejante / Portão Acelerador', 'Forma Canhão: Cria um portal que aumenta a velocidade e alcance do seu Q. Forma Martelo: Bate no alvo, causando Dano Mágico e empurrando-o para trás.'),
(11, 'R', 'Transformar: Martelo / Transformar: Canhão', 'Jayce transforma sua arma, alterando suas habilidades. Ao transformar, ele recebe Dano Mágico adicional no próximo ataque. (Esta habilidade não tem custo de Mana nem Tempo de Recarga no nível 6.)'),

-- 12. KAYLE
(12, 'PASSIVA', 'Ascensão Divina', 'Kayle ascende gradualmente com níveis, ganhando alcance de ataque, Velocidade de Ataque e, no nível máximo, seus ataques básicos disparam ondas de fogo.'),
(12, 'Q', 'Rajada Radiante', 'Kayle dispara uma espada de fogo que causa Dano Mágico, reduz a Armadura e Resistência Mágica do alvo e aplica Lentidão.'),
(12, 'W', 'Bênção Celestial', 'Kayle se cura e a um aliado e concede Velocidade de Movimento aumentada por um breve período.'),
(12, 'E', 'Lâmina de Fogo Estelar', 'Kayle potencializa seu próximo ataque básico para causar Dano Mágico adicional e estender seu alcance de ataque para o máximo por um curto período.'),
(12, 'R', 'Intervenção', 'Kayle se torna inalvejável por um breve período e, após o atraso, invoca uma chuva de espadas ao redor de si, causando Dano Mágico em área.'),

-- 13. MORGANA
(13, 'PASSIVA', 'Dreno da Alma', 'Morgana se cura por uma porcentagem do dano que causa a campeões, monstros e tropas grandes com suas habilidades.'),
(13, 'Q', 'Ligação das Trevas', 'Morgana dispara uma esfera de energia das sombras que enraiza e causa Dano Mágico ao primeiro inimigo que atinge por um longo período.'),
(13, 'W', 'Solo Atormentado', 'Morgana conjura um chão amaldiçoado que causa Dano Mágico por segundo aos inimigos que estão sobre ele. O dano é maior contra alvos com menos vida.'),
(13, 'E', 'Escudo Negro', 'Morgana protege um aliado (ou a si mesma) com um escudo de energia negra que absorve Dano Mágico e bloqueia todos os efeitos de controle de grupo.'),
(13, 'R', 'Grilhões da Alma', 'Morgana se conecta a Campeões inimigos próximos, causando dano inicial e Lentidão. Se a conexão persistir por 3 segundos, o alvo é Atordoado e recebe dano adicional.'),

-- 14. AATROX
(14, 'PASSIVA', 'Marcha da Morte', 'O próximo ataque básico de Aatrox tem alcance estendido, causa dano com base na Vida máxima do alvo e cura Aatrox.'),
(14, 'Q', 'A Espada Darkin', 'Aatrox desfere três golpes em cone. Cada golpe tem uma área de efeito diferente e causa mais dano e derruba no ar (knock up) se atingir com a ponta.'),
(14, 'W', 'Corrente das Sombras', 'Aatrox dispara uma corrente que causa dano e Lentidão ao primeiro inimigo atingido. Se o alvo não sair da área marcada, é puxado de volta ao centro.'),
(14, 'E', 'Avanço Fantasma', 'Aatrox avança. Esta habilidade pode ser acumulada e concede Dano de Ataque passivamente.'),
(14, 'R', 'Aniquilador de Mundos', 'Aatrox revela sua forma demoníaca, aterrorizando tropas próximas, ganhando Vida, Dano de Ataque e Velocidade de Movimento aumentados. Abater um campeão inimigo estende a duração.'),

-- 15. KATARINA
(15, 'PASSIVA', 'Voracidade', 'Sempre que um Campeão inimigo que Katarina danificou recentemente morre, a recarga de suas habilidades é reduzida drasticamente. Se Katarina pegar uma adaga no chão, ela causa dano mágico em área.'),
(15, 'Q', 'Lâmina Saltitante', 'Katarina arremessa uma adaga que ricocheteia entre inimigos e cai no chão atrás do último alvo.'),
(15, 'W', 'Preparação', 'Katarina lança uma adaga para o alto, ganhando um pico de Velocidade de Movimento. A adaga cairá no chão após um curto período.'),
(15, 'E', 'Shunpo', 'Katarina se teleporta para um alvo (inimigo, aliado ou adaga), causando Dano Mágico. Reduz a recarga quando pega uma adaga.'),
(15, 'R', 'Lótus da Morte', 'Katarina gira e lança uma saraivada de adagas no ar, causando dano massivo em um cone a todos os Campeões inimigos próximos. Aplica Feridas Graves.');

INSERT INTO Skins (id_campeao, nome, preco, classificacao) VALUES
-- 1. LUX (ID 1)
(1, 'Lux Ladra Arcana', '750', 'padrao'),
(1, 'Lux Feiticeira', '520', 'padrao'),
(1, 'Lux Patrulheira', '520', 'padrao'),
(1, 'Lux Legionária de Aço', '975', 'padrao'),
(1, 'Lux Academia de Batalha', '1350', 'epica'),
(1, 'Lux Guardiã Estelar', '1350', 'epica'),
(1, 'Lux Cosmos Negro', '1350', 'epica'),
(1, 'Lux Elementalista', '3250', 'ultimate'),

-- 2. AHRI (ID 2)
(2, 'Ahri Dinastia', '975', 'padrao'),
(2, 'Ahri Raposa Flamejante', '975', 'padrao'),
(2, 'Ahri Pop Star', '975', 'padrao'),
(2, 'Ahri Colegial', '750', 'padrao'),
(2, 'Ahri Fliperama', '1350', 'epica'),
(2, 'Ahri Guardiã Estelar', '1350', 'epica'),
(2, 'Ahri Florescer Espiritual', '1820', 'lendaria'), 

-- 3. MISS FORTUNE (ID 3)
(3, 'Miss Fortune Agente Secreta', '975', 'padrao'),
(3, 'Miss Fortune Fliperama', '1350', 'epica'),
(3, 'Miss Fortune Guardiã Estelar', '1350', 'epica'),
(3, 'Miss Fortune Guerreira Exocósmica', '1350', 'epica'),
(3, 'Miss Fortune Coelhinha de Batalha', '1820', 'lendaria'),
(3, 'Miss Fortune Quebradora de Promessas', '1350', 'epica'),

-- 4. EZREAL (ID 4)
(4, 'Ezreal Explorador', '750', 'padrao'),
(4, 'Ezreal Galante', '520', 'padrao'),
(4, 'Ezreal Real de Espadas', '750', 'padrao'),
(4, 'Ezreal Curtindo o Verão', '1350', 'epica'),
(4, 'Ezreal TPA', '750', 'legado'),
(4, 'Ezreal Guardião Estelar', '1350', 'epica'),
(4, 'Ezreal Pulsefire', '3250', 'ultimate'), 

-- 5. GAREN (ID 5)
(5, 'Garen Sanguinário', '520', 'padrao'),
(5, 'Garen Comando', '520', 'padrao'),
(5, 'Garen Cavalaria do Terror', '975', 'padrao'),
(5, 'Garen Caçador de Dragões', '975', 'padrao'),
(5, 'Garen Legionário de Aço', '1350', 'epica'),
(5, 'Garen Deus-Rei', '1820', 'lendaria'),

-- 6. JINX (ID 6)
(6, 'Jinx Mafiosa', '975', 'padrao'),
(6, 'Jinx Cupido Mortal', '1350', 'epica'),
(6, 'Jinx Caça-Zumbis', '1350', 'epica'),
(6, 'Jinx Odisseia', '1350', 'epica'),
(6, 'Jinx PROJETO', '1350', 'epica'),
(6, 'Jinx Guardiã Estelar', '1820', 'lendaria'),

-- 7. CAITLYN (ID 7)
(7, 'Caitlyn Policial', '975', 'padrao'),
(7, 'Caitlyn Caçadora de Cabeças', '975', 'padrao'),
(7, 'Caitlyn Pulsefire', '1350', 'epica'),
(7, 'Caitlyn Curtindo o Verão', '1350', 'epica'),
(7, 'Caitlyn Academia de Batalha', '1820', 'lendaria'),
(7, 'Caitlyn Patrulha do Ártico', '750', 'padrao'),

-- 8. VI (ID 8)
(8, 'Vi Neon', '975', 'padrao'),
(8, 'Vi Agente', '975', 'padrao'),
(8, 'Vi Demônio', '1350', 'epica'),
(8, 'Vi Reinos Combatentes', '1350', 'epica'),
(8, 'Vi PROJETO', '1350', 'epica'),
(8, 'Vi Queridinha', '1350', 'epica'),

-- 9. EKKO (ID 9)
(9, 'Ekko Tempestade de Areia', '975', 'padrao'),
(9, 'Ekko Colegial', '750', 'padrao'),
(9, 'Ekko Detetive Espiritual', '1350', 'epica'),
(9, 'Ekko SKT T1', '1350', 'legado'),
(9, 'Ekko Pulsefire', '1350', 'epica'),
(9, 'Ekko True Damage', '1820', 'lendaria'),

-- 10. VIKTOR (ID 10)
(10, 'Viktor Protótipo', '520', 'padrao'),
(10, 'Viktor Juramento Solene', '750', 'padrao'),
(10, 'Viktor Full Machine', '1350', 'epica'),
(10, 'Viktor PsyOps', '1350', 'epica'),
(10, 'Viktor Criador', '1350', 'epica'),

-- 11. JAYCE (ID 11)
(11, 'Jayce Blindado', '1350', 'epica'),
(11, 'Jayce Elegante', '975', 'padrao'),
(11, 'Jayce Esquecido', '1350', 'epica'),
(11, 'Jayce T1', '1350', 'legado'),
(11, 'Jayce Brilhante', '750', 'padrao'),

-- 12. KAYLE (ID 12)
(12, 'Kayle Viridiana', '520', 'padrao'),
(12, 'Kayle Desmascarada', '290', 'padrao'),
(12, 'Kayle Asas Etéreas', '1350', 'epica'),
(12, 'Kayle Nascida para a Batalha', '975', 'padrao'),
(12, 'Kayle Inquisidora de Ferro', '750', 'padrao'),
(12, 'Kayle PsyOps', '1350', 'epica'),

-- 13. MORGANA (ID 13)
(13, 'Morgana Exilada', '975', 'padrao'),
(13, 'Morgana Lâminas de Ferro', '520', 'padrao'),
(13, 'Morgana Espinhos Negros', '1350', 'epica'),
(13, 'Morgana Imperatriz Majestosa', '1350', 'epica'),
(13, 'Morgana Nevasca', '520', 'padrao'),
(13, 'Morgana Congregação das Bruxas', '1820', 'lendaria'),

-- 14. AATROX (ID 14)
(14, 'Aatrox Caçador dos Mares', '750', 'padrao'),
(14, 'Aatrox Mecha', '1350', 'epica'),
(14, 'Aatrox Lua Sangrenta', '1350', 'epica'),
(14, 'Aatrox Eclipse Lunar', '1350', 'epica'),
(14, 'Aatrox DRX', '1350', 'legado'),

-- 15. KATARINA (ID 15)
(15, 'Katarina Comandante', '975', 'padrao'),
(15, 'Katarina Gata de Batalha', '750', 'padrao'),
(15, 'Katarina Caçadora de Recompensas', '520', 'padrao'),
(15, 'Katarina PROJETO', '1350', 'epica'),
(15, 'Katarina Juramento Solene', '1350', 'epica'),
(15, 'Katarina Rainha de Batalha', '1820', 'lendaria');

INSERT INTO Skin_Sentinela (nome, preco) VALUES
-- Eventos e Temáticas
('Sentinela Guardiã Estelar', '640'),
('Sentinela PROJETO', '640'),
('Sentinela Fliperama', '640'),
('Sentinela Porcelana', '640'),
('Sentinela Florescer Espiritual', '640'),
('Sentinela Academia de Batalha', '640'),
('Sentinela Congregação das Bruxas', '640'),
('Sentinela Embalos no Espaço', '640'),
('Sentinela Guardião Cósmico', '640'),
('Sentinela Odisseia', '640'),

-- Esportes/Competitivas
('Sentinela Team Liquid', '640'),
('Sentinela SKT T1 (2016)', '640'),
('Sentinela Worlds 2024', '640'),
('Sentinela MSI (2024)', '640'),
('Sentinela Vencedora', '640'),

-- Sentinelas de Humor/Fofas
('Sentinela Coração Partido', '640'),
('Sentinela de Gengibre', '640'),
('Sentinela do Olho de Urso', '640'),
('Sentinela Sentinela Espantalho', '640'),
('Sentinela Sentinela de Batalha', '640'),

-- Sentinelas Clássicas/Antigas
('Sentinela Hextec', '640'),
('Sentinela de Luz', '640'),
('Sentinela Vigilante do Ártico', '640'),
('Sentinela Sentinela do Deserto', '640'),
('Sentinela Sentinela Dracônica', '640'),

-- Sentinelas Temáticas Variadas
('Sentinela Dark Star', '640'),
('Sentinela Embaixador', '640'),
('Sentinela Sentinela do Colecionador', '640'),
('Sentinela Sentinela da Corte', '640'),
('Sentinela Olho Dourado', '640');

INSERT INTO Icones_Invocador (nome, preco) VALUES
('Ícone Poro Amigo', '250'),
('Ícone Sentinela Coração', '250'),
('Ícone Corvo do Swain', '250'),
('Ícone Espada e Escudo de Demacia', '250'),
('Ícone Garra de Noxus', '250'),
('Ícone Barão Na''Shor', '250'),
('Ícone Escudo Hextec', '250'),
('Ícone Espada de Runeterra', '250'),
('Ícone Escamas do Dragão', '250'),
('Ícone Pena da Kayle', '250'),
('Ícone Solari', '250'),
('Ícone Lunari', '250'),
('Ícone Punho do Sett', '250'),
('Ícone Elmo de Ferro', '250'),
('Ícone Chifres do Tahm Kench', '250'),

-- Ícones de 350 RP 
('Ícone Guardiã Estelar Ahri', '350'),
('Ícone PROJETO: Jinx', '350'),
('Ícone Congregação das Bruxas (Lua)', '350'),
('Ícone Embalos no Espaço Poro', '350'),
('Ícone Flor do Deserto', '350'),
('Ícone Fofo de Batalha', '350'),
('Ícone Academia de Batalha (Escudo)', '350'),
('Ícone Dragão de Jade', '350'),
('Ícone Mini Gnar', '350'),
('Ícone Símbolo MSI', '350'),
('Ícone Teamfight Tactics', '350'),
('Ícone Lobo e Cordeiro', '350'),
('Ícone Olho de Horário (Ekko)', '350'),
('Ícone Porcelana Dourada', '350'),
('Ícone Sentinela Espantalho', '350');

INSERT INTO Invocador (nickname, total_rp_campeoes, total_rp_skins, total_rp_skinsSTNL, total_rp_icones) VALUES
('Vânia', 0.00, 0.00, 0.00, 0.00),
('Lunari', 0.00, 0.00, 0.00, 0.00),
('Nash', 0.00, 0.00, 0.00, 0.00),
('Somniator', 0.00, 0.00, 0.00, 0.00),
('Petit', 0.00, 0.00, 0.00, 0.00),
('Note', 0.00, 0.00, 0.00, 0.00);

INSERT INTO Campeoes_Invocador (id_invocador, id_campeao) VALUES
-- VÂNIA (ID 1) - Focada em Magos e Atiradores
(1, 1),  -- Lux
(1, 2),  -- Ahri
(1, 3),  -- Miss Fortune
(1, 6),  -- Jinx
(1, 7),  -- Caitlyn
(1, 10), -- Viktor
(1, 13), -- Morgana

-- LUNARI (ID 2) - Focada em Assassinos e Lutadores
(2, 9),  -- Ekko
(2, 15), -- Katarina
(2, 8),  -- Vi
(2, 11), -- Jayce
(2, 14), -- Aatrox
(2, 4),  -- Ezreal

-- NASH (ID 3) - Uma seleção mista para iniciantes/campeões mais baratos
(3, 5),  -- Garen
(3, 1),  -- Lux
(3, 3),  -- Miss Fortune
(3, 13), -- Morgana
(3, 12), -- Kayle

-- SOMNIATOR (ID 4) - Lutadores e alguns Mágicos
(4, 14), -- Aatrox
(4, 5),  -- Garen
(4, 11), -- Jayce
(4, 12), -- Kayle
(4, 10), -- Viktor
(4, 2),  -- Ahri
(4, 4),  -- Ezreal

-- PETIT (ID 5) - Grande pool de Atiradores
(5, 3),  -- Miss Fortune
(5, 4),  -- Ezreal
(5, 6),  -- Jinx
(5, 7),  -- Caitlyn
(5, 1),  -- Lux
(5, 9),  -- Ekko

-- NOTE (ID 6) - Variedade de estilos
(6, 15), -- Katarina
(6, 13), -- Morgana
(6, 8),  -- Vi
(6, 12), -- Kayle
(6, 5),  -- Garen
(6, 7);  -- Caitlyn

INSERT INTO Skins_Invocador (id_invocador, id_skin) VALUES
-- VÂNIA (ID 1) - Possui Lux (1), Ahri (2), MF (3), Jinx (6), Caitlyn (7), Viktor (10), Morgana (13)
(1, 4),  -- Lux Elementalista (ID 4)
(1, 6),  -- Lux Cosmos Negro (ID 6)
(1, 9),  -- Ahri Dinastia (ID 9)
(1, 19), -- Miss Fortune Coelhinha de Batalha (ID 19)
(1, 33), -- Jinx Mafiosa (ID 33)
(1, 41), -- Caitlyn Academia de Batalha (ID 41)
(1, 52), -- Viktor Full Machine (ID 52)
(1, 69), -- Morgana Congregação das Bruxas (ID 69)

-- LUNARI (ID 2) - Possui Ekko (9), Katarina (15), Vi (8), Jayce (11), Aatrox (14), Ezreal (4)
(2, 47), -- Ekko True Damage (ID 47)
(2, 85), -- Katarina Rainha de Batalha (ID 85)
(2, 49), -- Vi Neon (ID 49)
(2, 57), -- Jayce Blindado (ID 57)
(2, 79), -- Aatrox Eclipse Lunar (ID 79)
(2, 28), -- Ezreal Pulsefire (ID 28)

-- NASH (ID 3) - Possui Garen (5), Lux (1), MF (3), Morgana (13), Kayle (12)
(3, 32), -- Garen Deus-Rei (ID 32)
(3, 3),  -- Lux Patrulheira (ID 3)
(3, 17), -- Miss Fortune Fliperama (ID 17)
(3, 67), -- Morgana Espinhos Negros (ID 67)
(3, 62), -- Kayle Nascida para a Batalha (ID 62)

-- SOMNIATOR (ID 4) - Possui Aatrox (14), Garen (5), Jayce (11), Kayle (12), Viktor (10), Ahri (2), Ezreal (4)
(4, 78), -- Aatrox Lua Sangrenta (ID 78)
(4, 31), -- Garen Legionário de Aço (ID 31)
(4, 58), -- Jayce Elegante (ID 58)
(4, 63), -- Kayle Inquisidora de Ferro (ID 63)
(4, 54), -- Viktor Criador (ID 54)
(4, 13), -- Ahri Guardiã Estelar (ID 13)
(4, 27), -- Ezreal Guardião Estelar (ID 27)

-- PETIT (ID 5) - Possui MF (3), Ezreal (4), Jinx (6), Caitlyn (7), Lux (1), Ekko (9)
(5, 18), -- Miss Fortune Guardiã Estelar (ID 18)
(5, 29), -- Ezreal Explorador (ID 29)
(5, 37), -- Jinx Guardiã Estelar (ID 37)
(5, 42), -- Caitlyn Patrulha do Ártico (ID 42)
(5, 5),  -- Lux Academia de Batalha (ID 5)
(5, 43), -- Ekko Tempestade de Areia (ID 43)

-- NOTE (ID 6) - Possui Katarina (15), Morgana (13), Vi (8), Kayle (12), Garen (5), Caitlyn (7)
(6, 84), -- Katarina Juramento Solene (ID 84)
(6, 65), -- Morgana Exilada (ID 65)
(6, 51), -- Vi PROJETO (ID 51)
(6, 64), -- Kayle PsyOps (ID 64)
(6, 30), -- Garen Cavalaria do Terror (ID 30)
(6, 39); -- Caitlyn Policial (ID 39)

INSERT INTO STNL_Invocador (id_invocador, id_STNL) VALUES
-- VÂNIA (ID 1)
(1, 4),  -- Sentinela Porcelana
(1, 12), -- Sentinela SKT T1 (2016)
(1, 16), -- Sentinela Coração Partido
(1, 26), -- Sentinela Dark Star
(1, 29), -- Sentinela da Corte

-- LUNARI (ID 2)
(2, 2),  -- Sentinela PROJETO
(2, 6),  -- Sentinela Academia de Batalha
(2, 10), -- Sentinela Odisseia
(2, 22), -- Sentinela de Luz

-- NASH (ID 3)
(3, 1),  -- Sentinela Guardiã Estelar
(3, 13), -- Sentinela Worlds 2024
(3, 19), -- Sentinela Sentinela Espantalho
(3, 23), -- Sentinela Vigilante do Ártico

-- SOMNIATOR (ID 4)
(4, 7),  -- Sentinela Congregação das Bruxas
(4, 8),  -- Sentinela Embalos no Espaço
(4, 18), -- Sentinela Olho de Urso
(4, 25), -- Sentinela Sentinela Dracônica
(4, 30), -- Sentinela Olho Dourado

-- PETIT (ID 5)
(5, 3),  -- Sentinela Fliperama
(5, 11), -- Sentinela Team Liquid
(5, 17), -- Sentinela de Gengibre
(5, 20), -- Sentinela Sentinela de Batalha

-- NOTE (ID 6)
(6, 5),  -- Sentinela Florescer Espiritual
(6, 9),  -- Sentinela Guardião Cósmico
(6, 15), -- Sentinela Vencedora
(6, 27); -- Sentinela Embaixador

INSERT INTO Icones_Invocador_Possui (id_invocador, id_icone) VALUES
-- VÂNIA (ID 1)
(1, 6),  -- Ícone Barão Na''Shor (250 RP)
(1, 15), -- Ícone Chifres do Tahm Kench (250 RP)
(1, 16), -- Ícone Guardiã Estelar Ahri (350 RP)
(1, 23), -- Ícone Mini Gnar (350 RP)
(1, 28), -- Ícone Olho de Horário (Ekko) (350 RP)

-- LUNARI (ID 2)
(2, 4),  -- Ícone Espada e Escudo de Demacia (250 RP)
(2, 11), -- Ícone Solari (250 RP)
(2, 12), -- Ícone Lunari (250 RP)
(2, 17), -- Ícone PROJETO: Jinx (350 RP)
(2, 26), -- Ícone Fofo de Batalha (350 RP)

-- NASH (ID 3)
(3, 1),  -- Ícone Poro Amigo (250 RP)
(3, 5),  -- Ícone Garra de Noxus (250 RP)
(3, 21), -- Ícone Flor do Deserto (350 RP)
(3, 22), -- Ícone Fofo de Batalha (350 RP)
(3, 27), -- Ícone Lobo e Cordeiro (350 RP)

-- SOMNIATOR (ID 4)
(4, 2),  -- Ícone Sentinela Coração (250 RP)
(4, 3),  -- Ícone Corvo do Swain (250 RP)
(4, 18), -- Ícone Congregação das Bruxas (350 RP)
(4, 20), -- Ícone Flor do Deserto (350 RP)
(4, 25), -- Ícone Dragão de Jade (350 RP)

-- PETIT (ID 5)
(5, 7),  -- Ícone Escudo Hextec (250 RP)
(5, 13), -- Ícone Punho do Sett (250 RP)
(5, 19), -- Ícone Embalos no Espaço Poro (350 RP)
(5, 29), -- Ícone Porcelana Dourada (350 RP)

-- NOTE (ID 6)
(6, 8),  -- Ícone Espada de Runeterra (250 RP)
(6, 14), -- Ícone Elmo de Ferro (250 RP)
(6, 24), -- Ícone Símbolo MSI (350 RP)
(6, 30); -- Ícone Sentinela Espantalho (350 RP)

INSERT INTO Ranque_Flex (nome) VALUES
('Ferro'),
('Bronze'),
('Prata'),
('Ouro'),
('Platina'),
('Esmeralda'),
('Diamante'),
('Mestre'),
('Grao Mestre'),
('Desafiante');

INSERT INTO Ranque_Solo (nome) VALUES
('Ferro'),
('Bronze'),
('Prata'),
('Ouro'),
('Platina'),
('Esmeralda'),
('Diamante'),
('Mestre'),
('Grao Mestre'),
('Desafiante');

-- Ranques: Ferro=1, Bronze=2, Prata=3, Ouro=4, Platina=5, Esmeralda=6, Diamante=7, Mestre=8, Grão Mestre=9, Desafiante=10

INSERT INTO RFlex_Invocador (id_ranqueFL, id_invocador, season) VALUES
-- VÂNIA (ID 1)
(5, 1, 2023), -- Platina (5) em 2023
(6, 1, 2024), -- Esmeralda (6) em 2024

-- LUNARI (ID 2)
(8, 2, 2023), -- Mestre (8) em 2023
(9, 2, 2024), -- Grão Mestre (9) em 2024

-- NASH (ID 3)
(3, 3, 2024), -- Prata (3) em 2024

-- SOMNIATOR (ID 4)
(7, 4, 2023), -- Diamante (7) em 2023
(7, 4, 2024), -- Diamante (7) em 2024

-- PETIT (ID 5)
(1, 5, 2023), -- Ferro (1) em 2023
(4, 5, 2024), -- Ouro (4) em 2024

-- NOTE (ID 6)
(5, 6, 2024); -- Platina (5) em 2024

-- Ranques: Ferro=1, Bronze=2, Prata=3, Ouro=4, Platina=5, Esmeralda=6, Diamante=7, Mestre=8, Grão Mestre=9, Desafiante=10
-- Nem todos os invocadores possuem as contas desde o mesmo período.
INSERT INTO RSolo_Invocador (id_ranqueSL, id_invocador, season) VALUES
-- VÂNIA (ID 1)
(6, 1, 2023), -- Esmeralda (6) em 2023
(7, 1, 2024), -- Diamante (7) em 2024

-- LUNARI (ID 2)
(9, 2, 2023),  -- Grão Mestre (9) em 2023
(10, 2, 2024), -- Desafiante (10) em 2024

-- NASH (ID 3)
(4, 3, 2024), -- Ouro (4) em 2024

-- SOMNIATOR (ID 4)
(8, 4, 2023), -- Mestre (8) em 2023
(8, 4, 2024), -- Mestre (8) em 2024

-- PETIT (ID 5)
(2, 5, 2023), -- Bronze (2) em 2023
(5, 5, 2024), -- Platina (5) em 2024

-- NOTE (ID 6)
(6, 6, 2024); -- Esmeralda (6) em 2024