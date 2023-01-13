table.insert(Config.scriptsConfig, {

    survivalConfig = {

        baseType = "zirix", -- zirix, creative

        progressBarEvent = "progress", -- Evento de progresso

        identityFristNameDB = "name", -- primeiro nome do player que fica no banco de dados.
        identityLastNameDB = "firstname", -- ultimo nome do player que fica no banco de dados.

        docs = "docs/survival/",  -- Local onde as imagens, sons, gifs, etc... estão localizados
    --{ Survival 

		deathClientEvents = {  -- Adicione eventos do client, esses eventos serão acionados ao morrer.
            "radio:outServers",
		},
		deathServerEvents = {  -- Adicione eventos do server, esses eventos serão acionados ao morrer.

		},

		resurrectClientEvents = {  -- Adicione eventos do client, esses eventos serão acionados ao ressuscitar.

		},
		resurrectServerEvents = {  -- Adicione eventos do server, esses eventos serão acionados ao ressuscitar.

		},

        pressTimeButtonClientEvents = {  -- Adicione eventos do client, esses eventos serão acionados ao apertar o botão para renascer.
            "resetBleeding",    
            "resetDiagnostic",
            "striata:survival:clearWounds",  -- Evento para remover diagnostico de danos no corpo. (Deve ser usado no /god e no /tratamento!)
		},
		pressTimeButtonServerEvents = {  -- Adicione eventos do server, esses eventos serão acionados ao apertar o botão para renascer.
            "clearInventory",
            "desejoposmorte",
		},

        lifeMinimum = 101,  -- Quantidade de vida necessária para morrer.
        lifeLimit = 200,  -- Quantidade de vida máxima em seu servidor.

        deathAnimation = { animDictionary = "misslamar1dead_body" , animationName = "dead_idle" },  -- Animação de morte.

        deathTimerDefalt = 600,  -- Tempo padrão para renascer.
        giveUpButtonName = "Seguir a luz...",  -- Texto do botão de desistir
        allowAllGiveUp = true,  -- Defina como (true) para permitir desistencia para todos e (false) para desativar.
        PermissionsToGiveUp = {"suporte.permissao","admin.permissao","paramedico.permissao"},  -- defina as permissões que podem desistir.
        resurectButtonName = "Renascer",  -- Texto do botão de renascer.
        spawnLocates = {  -- Defina os locais de spanws e suas permissões.
            { name = "🛬Aeroporto", coords = {x = -1041.04, y = -2743.49, z = 13.95}, permission = { "" } },
            { name = "🏥Hospital", coords = {x = -261.7, y = 6308.28, z = 32.48}, permission = { "" } },
            { name = "🚨Departamento-Policial", coords = {x = -1092.96, y = -809.76, z = 19.27}, permission = { "admin.permissao","policia.permissao" } },
            { name = "🧯Corpo-de-Bombeiros", coords = {x = 1208.03, y = -1472.74, z = 34.86}, permission = { "admin.permissao","bombeiro.permissao" } },
            { name = "🚈Metrô", coords = {x = -206.66, y = -1014.92, z = 30.14}, permission = { "" } },
        },
        deathTimerByPermissions = {  -- Defina tempos customizado por permissão para renascer.
            { perm = "admin.permissao", timer = 10 },
            { perm = "policia.permissao", timer = 300 },
            { perm = "paramedico.permissao", timer = 300 },
            { perm = "mecanico.permissao", timer = 450 },
            { perm = "bombeiro.permissao", timer = 300 },
        },
    --}

    --{ Diagnostic
        enableDiagnostic = true,  -- Defina como (true) para ativar o sistema de diagnóstico e (false) para desativar.

        webhookReanimation = "",  -- Log webhook com informações de reanimações.

        patientBloodMilliliters = 5000,  -- Quantidade de sangue em mililitros no corpo.
        timeToZeroMilliliters = 600,  -- Tempo desmaiado para chegar a zero mililitros de sangue.
        permissionsToDiagnostic = {"admin.permissao","paramedico.permissao","bombeiro.permissao","policia.permissao"},  -- Defina as permissões que terão acesso ao comando de diagnostico.
        permissionsToRevive = {"admin.permissao","paramedico.permissao","bombeiro.permissao"},  -- Defina as permissões que terão acesso ao comando de reanimação.
        maxAttemptsToRevive = 3,  -- Maximo de tentativas de reanimação.
        reanimationAmins = { animDictionary = "amb@medic@standing@tendtodead@base" , animationName = "base", animDictionary2 = "mini@cpr@char_a@cpr_str" , animationName2 = "cpr_pumpchest" },  -- Animações de reanimação.
        reanimationAmins2 = { animDictionary = "anim@gangops@facility@servers@bodysearch@" , animationName = "player_search"},  -- Animações de reanimação quando em maca.
        milisecForReanimation = 30000,  -- Tempo em milissegundos para reanimar um indivíduo.
        PaymentForRevive = math.random(2500,3000),  -- Pagamento do medico por reanimar um indivíduo com sucesso. (Defina 0 para desativar!)
        pacientHealthAfterRevive = 110,  -- Vida do paciente após ser reanimado.
        patientStatus = {  -- Estado do paciente desmaiado.

            patientState1 = {
                maximumOfMilliliters = 5000,  -- Máximo de mililitros para entrar no estado.
                minimumOfMilliliters = 3500,  -- Mínimo de mililitros para entrar no estado.
                chanceToBeRevived = 100,  -- Chance de ser revivido neste testado.
                DiagnosticMensage = "desmaiado em baixo risco de saúde",  -- Mensagem do estado no diagnóstico.
            },

            patientState2 = {
                maximumOfMilliliters = 3499,  -- Máximo de mililitros para entrar no estado.
                minimumOfMilliliters = 2000,  -- Mínimo de mililitros para entrar no estado.
                chanceToBeRevived = 50,  -- Chance de ser revivido neste testado.
                DiagnosticMensage = "desmaiado em risco de agravo à saúde",  -- Mensagem do estado no diagnóstico.
            },

            patientState3 = {
                maximumOfMilliliters = 1999,  -- Máximo de mililitros para entrar no estado.
                minimumOfMilliliters = 500,  -- Mínimo de mililitros para entrar no estado.
                chanceToBeRevived = 22,  -- Chance de ser revivido neste testado.
                DiagnosticMensage = "desmaiado em risco grave de saúde",  -- Mensagem do estado no diagnóstico.
            },

            patientState4 = {
                maximumOfMilliliters = 499,  -- Máximo de mililitros para entrar no estado.
                minimumOfMilliliters = 0,  -- Mínimo de mililitros para entrar no estado.
                chanceToBeRevived = 0,  -- Chance de ser revivido neste testado.
                DiagnosticMensage = "morto (sem sangue)",  -- Mensagem do estado no diagnóstico.
            },
        },

        targetMode = true,
        nhContext = true,
        needDefib = true,
        permissionsToPickAndUseItens = {"admin.permissao","paramedico.permissao","bombeiro.permissao"},  -- Defina as permissões que terão aos itens da bolsa medica.

        vehiclesConfig = {
            [GetHashKey("Bmsprinter")] = { ajustX = -0.3, ajustY = -2.0, ajustZ = -0.15, rotateX = 0.0, rotateY = 0.0, rotateZ = 0.0, dict = "anim@gangops@morgue@table@", anim = "body_search" },
        },
    --}

    --{ Kill Log

        enableKillLog = true,  -- Defina como (true) para ativar o sistema de log de morte e (false) para desativar.

        webhookKillLog = "",  -- Log webhook com informações do log de morte.
        
        enableHitMarkSound = true,  -- Defina como (true) para ativar um som que tocara ao matar um player e (false) para desativar.
        hitMarkSoundVolume = 1.0,  -- Defina o volume do som que será tocado ao matar o player.
        
        enableFatalHitHead = true,  -- Defina como true para ativar o sistema de tiro fatal. (Com esse sistema ativo caso o player leve um tiro na cabeça ele morrera mesmo se a distancia for muito grande!)

        permissionToViewKillLog = "admin.permissao",  -- Defina a permissão para ver o log de morte, Defina ("") para todos.
        showUserId = true,  -- Defina como (true) para mostrar ids dos jogadores nos logs de morte.
        showNames = true,  -- Defina como (true) para mostrar nomes dos jogadores nos logs de morte.
        killLogSound = true,  -- Defina como (true) para ativar um som para tocar junto ao log de morte e (false) para desativar.
        killLogSoundVolume = 1.0,  -- Defina o volume do som que será tocado com o log de morte.
        showTime = 4500,  -- Defina o tempo em milissegundos que o log de morte sumira da tela.
        RGBColor = {255, 77, 77},  -- Defina a cor de fundo do log de morte.
        
        npcCustomName = "AMERICANO",  -- Defina um nome customizado para NPCS. Este nome sairá no log de morte!


        changeDamage = true,  -- Defina como (true) para ativar o sistema de alteração de dano e (false) para desativar.
        weapons = {  -- Defina o dano das armas e os nomes que aparecerão no log de morte.
            --todo | weapon = Nome index da arma exemplo: "WEAPON_UNARMED"
            --todo | weaponHash = Hash da arma exemplo: -842959696
            --todo | damage = Dano da arma padrão: 1.0
            --todo | customName = Nome customizado que aparecerá no log de morte.
            --todo | class = clase da arma ultilizada para identificar o estado das feridas pós morte. 
            
            --! clases:
            --? ("hands","pasive granades","vechicles") quando não há ferimentos expostos;
            --? ("blades") quando há cortes;
            --? ("granades","fire granades","explosives","flammable") quando há queimaduras;
            --? ("weapons") quando há balas no corpo.

            -- Hands
            { weapon = "WEAPON_UNARMED", damage = 0.5, customName = "Mãos" ,class = "hands"},

            -- Meele
            { weapon = "WEAPON_DAGGER", damage = 0.3, customName = "Adaga de Cavalaria Antiga" ,class = "blades" },
            { weapon = "WEAPON_BAT", damage = 0.3, customName = "Taco de beisebol" ,class = "blades" },
            { weapon = "WEAPON_BOTTLE", damage = 0.3, customName = "Garrafa quebrada" ,class = "blades" },
            { weapon = "WEAPON_CROWBAR", damage = 0.3, customName = "Pé de cabra" ,class = "blades" },
            { weapon = "WEAPON_FLASHLIGHT", damage = 0.3, customName = "Lanterna" ,class = "blades" },
            { weapon = "WEAPON_GOLFCLUB", damage = 0.3, customName = "Taco de golfe" ,class = "blades" },
            { weapon = "WEAPON_HAMMER", damage = 0.3, customName = "Martelo" ,class = "blades" },
            { weapon = "WEAPON_HATCHET", damage = 0.3, customName = "Machadinha" ,class = "blades" },
            { weapon = "WEAPON_KNUCKLE", damage = 0.3, customName = "Soco inglês" ,class = "blades" },
            { weapon = "WEAPON_KNIFE", damage = 0.3, customName = "Faca" ,class = "blades" },
            { weapon = "WEAPON_MACHETE", damage = 0.3, customName = "Machete" ,class = "blades" },
            { weapon = "WEAPON_SWITCHBLADE", damage = 0.3, customName = "Canivete" ,class = "blades" },
            { weapon = "WEAPON_NIGHTSTICK", damage = 0.3, customName = "Cassetete" ,class = "blades" },
            { weapon = "WEAPON_WRENCH", damage = 0.3, customName = "Chave para tubos" ,class = "blades" },
            { weapon = "WEAPON_BATTLEAXE", damage = 0.3, customName = "Machado de batalha" ,class = "blades" },
            { weapon = "WEAPON_POOLCUE", damage = 0.3, customName = "Taco de sinuca" ,class = "blades" },
            { weapon = "WEAPON_STONE_HATCHET", damage = 0.3, customName = "Machado de Pedra" ,class = "blades" },

            -- Pistols
            { weapon = "WEAPON_PISTOL", damage = 1.0, customName = "M-1911" ,class = "weapons" },
            { weapon = "WEAPON_PISTOL_MK2", damage = 0.9, customName = "Five seven" ,class = "weapons" },
            { weapon = "WEAPON_COMBATPISTOL", damage = 1.2, customName = "Glock-19" ,class = "weapons" },
            { weapon = "WEAPON_APPISTOL", damage = 1.0, customName = "Pistola AP" ,class = "weapons" },
            { weapon = "WEAPON_STUNGUN", damage = 0.0, customName = "Arma de choque" ,class = "weapons" },
            { weapon = "WEAPON_PISTOL50", damage = 0.6, customName = "Desert eagle" ,class = "weapons" },
            { weapon = "WEAPON_SNSPISTOL", damage = 1.0, customName = "Pistola fajuta" ,class = "weapons" },
            { weapon = "WEAPON_SNSPISTOL_MK2", damage = 1.0, customName = "Pistola fajuta MK2" ,class = "weapons" },
            { weapon = "WEAPON_HEAVYPISTOL", damage = 0.8, customName = "Pistola pesada" ,class = "weapons" },
            { weapon = "WEAPON_VINTAGEPISTOL", damage = 1.0, customName = "M-1922" ,class = "weapons" },
            { weapon = "WEAPON_FLAREGUN", damage = 1.0, customName = "Pistola de sinalizador" ,class = "weapons" },
            { weapon = "WEAPON_MARKSMANPISTOL", damage = 1.0, customName = "Pistola de atirador" ,class = "weapons" },
            { weapon = "WEAPON_REVOLVER", damage = 0.6, customName = "Revólver" ,class = "weapons" },
            { weapon = "WEAPON_REVOLVER_MK2", damage = 0.5, customName = "Revólver MK2" ,class = "weapons" },
            { weapon = "WEAPON_DOUBLEACTION", damage = 1.0, customName = "Revólver de dupla ação" ,class = "weapons" },
            { weapon = "WEAPON_RAYPISTOL", damage = 0.0, customName = "Atomizador" ,class = "weapons" },
            { weapon = "WEAPON_CERAMICPISTOL", damage = 1.0, customName = "Pistola de Cerâmica" ,class = "weapons" },
            { weapon = "WEAPON_NAVYREVOLVER", damage = 1.0, customName = "Revólver da Marinha" ,class = "weapons" },
            { weapon = "WEAPON_GADGETPISTOL", damage = 1.0, customName = "Pistola Perico" ,class = "weapons" },
            { weapon = "WEAPON_STUNGUN_MP", damage = 0.0, customName = "Arma de choque" ,class = "weapons" },

            -- Submachine Guns
            { weapon = "WEAPON_MICROSMG", damage = 1.8, customName = "Uzi" ,class = "weapons" },
            { weapon = "WEAPON_SMG", damage = 1.8, customName = "MPX" ,class = "weapons" },
            { weapon = "WEAPON_SMG_MK2", damage = 1.7, customName = "MP5" ,class = "weapons" },
            { weapon = "WEAPON_ASSAULTSMG", damage = 1.8, customName = "Mtar-21" ,class = "weapons" },
            { weapon = "WEAPON_COMBATPDW", damage = 1.4, customName = "Sig sauer" ,class = "weapons" },
            { weapon = "WEAPON_MACHINEPISTOL", damage = 1.0, customName = "Tec-9" ,class = "weapons" },
            { weapon = "WEAPON_MINISMG", damage = 1.0, customName = "Mini SMG" ,class = "weapons" },
            { weapon = "WEAPON_RAYCARBINE", damage = 1.0, customName = "SMG laser" ,class = "weapons" },
            
            -- Shotguns
            { weapon = "WEAPON_PUMPSHOTGUN", damage = 0.6, customName = "Remington-870" ,class = "weapons" },
            { weapon = "WEAPON_PUMPSHOTGUN_MK2", damage = 1.0, customName = "Remington-870 MK2" ,class = "weapons" },
            { weapon = "WEAPON_SAWNOFFSHOTGUN", damage = 1.0, customName = "Espingarda de cano serrado" ,class = "weapons" },
            { weapon = "WEAPON_ASSAULTSHOTGUN", damage = 1.0, customName = "Espingarda de Assalto" ,class = "weapons" },
            { weapon = "WEAPON_BULLPUPSHOTGUN", damage = 1.0, customName = "Espingarda Bullpup" ,class = "weapons" },
            { weapon = "WEAPON_MUSKET", damage = 1.0, customName = "Rifle de caça" ,class = "weapons" },
            { weapon = "WEAPON_HEAVYSHOTGUN", damage = 1.0, customName = "Espingarda Pesada" ,class = "weapons" },
            { weapon = "WEAPON_DBSHOTGUN", damage = 1.0, customName = "Espingarda de cano duplo" ,class = "weapons" },
            { weapon = "WEAPON_AUTOSHOTGUN", damage = 1.0, customName = "Espingarda Varredora" ,class = "weapons" },
            { weapon = "WEAPON_COMBATSHOTGUN", damage = 1.0, customName = "Espingarda de Combate" ,class = "weapons" },
            
            -- Assault Rifles
            { weapon = "WEAPON_ASSAULTRIFLE", damage = 1.85, customName = "AK-103" ,class = "weapons" },
            { weapon = "WEAPON_ASSAULTRIFLE_MK2", damage = 1.5, customName = "AK-47" ,class = "weapons" },
            { weapon = "WEAPON_CARBINERIFLE", damage = 1.7, customName = "M16" ,class = "weapons" },
            { weapon = "WEAPON_CARBINERIFLE_MK2", damage = 1.7, customName = "AR15" ,class = "weapons" },
            { weapon = "WEAPON_ADVANCEDRIFLE", damage = 1.0, customName = "Fuzil Avançado" ,class = "weapons" },
            { weapon = "WEAPON_SPECIALCARBINE", damage = 1.8, customName = "G36C" ,class = "weapons" },
            { weapon = "WEAPON_SPECIALCARBINE_MK2", damage = 1.7, customName = "G36C MK2" ,class = "weapons" },
            { weapon = "WEAPON_BULLPUPRIFLE", damage = 1.0, customName = "Rifle Bullpup" ,class = "weapons" },
            { weapon = "WEAPON_BULLPUPRIFLE_MK2", damage = 1.0, customName = "Rifle Bullpup MK2" ,class = "weapons" },
            { weapon = "WEAPON_COMPACTRIFLE", damage = 1.0, customName = "AKS-74U" ,class = "weapons" },
            { weapon = "WEAPON_MILITARYRIFLE", damage = 1.7, customName = "Steyr AUG" ,class = "weapons" },
            { weapon = "WEAPON_HEAVYRIFLE", damage = 1.0, customName = "SCAR-L" ,class = "weapons" },
            { weapon = "WEAPON_TACTICALRIFLE", damage = 1.0, customName = "M16" ,class = "weapons" },
            
            -- Light Machine Guns
            { weapon = "WEAPON_MG", damage = 1.0, customName = "MG" ,class = "weapons" },
            { weapon = "WEAPON_COMBATMG", damage = 1.0, customName = "M249" ,class = "weapons" },
            { weapon = "WEAPON_COMBATMG_MK2", damage = 1.0, customName = "MK-48" ,class = "weapons" },
            { weapon = "WEAPON_GUSENBERG", damage = 1.0, customName = "Thompson" ,class = "weapons" },
            
            -- Sniper Rifles
            { weapon = "WEAPON_SNIPERRIFLE", damage = 5.0, customName = "Sniper" ,class = "weapons" },
            { weapon = "WEAPON_HEAVYSNIPER", damage = 1.0, customName = "Sniper Pesada" ,class = "weapons" },
            { weapon = "WEAPON_HEAVYSNIPER_MK2", damage = 1.0, customName = "Sniper Pesada MK2" ,class = "weapons" },
            { weapon = "WEAPON_MARKSMANRIFLE", damage = 1.0, customName = "Rifle de Atirador" ,class = "weapons" },
            { weapon = "WEAPON_MARKSMANRIFLE_MK2", damage = 1.0, customName = "Rifle de Atirador MK2" ,class = "weapons" },
            { weapon = "WEAPON_PRECISIONRIFLE", damage = 1.0, customName = "Rifle de precisão" ,class = "weapons" },
            
            -- Heavy Weapons
            { weapon = "WEAPON_RPG", damage = 1.0, customName = "RPG" ,class = "explosives" },
            { weapon = "WEAPON_GRENADELAUNCHER", damage = 1.0, customName = "Lançador de granada" ,class = "explosives" },
            { weapon = "WEAPON_GRENADELAUNCHER_SMOKE", damage = 1.0, customName = "Lançador de granada de fumaça" ,class = "pasive granades" },
            { weapon = "WEAPON_MINIGUN", damage = 1.0, customName = "Minigun" ,class = "weapons" },
            { weapon = "WEAPON_FIREWORK", damage = 1.0, customName = "Fogos de artificio" ,class = "explosives" },
            { weapon = "WEAPON_RAILGUN", damage = 1.0, customName = "Canhão elétrico" ,class = "explosives" },
            { weapon = "WEAPON_HOMINGLAUNCHER", damage = 1.0, customName = "Lança missel teleguiado" ,class = "explosives" },
            { weapon = "WEAPON_COMPACTLAUNCHER", damage = 1.0, customName = "Lançador de granada compacto" ,class = "explosives" },
            { weapon = "WEAPON_RAYMINIGUN", damage = 1.0, customName = "Minigun laser" ,class = "weapons" },
            { weapon = "WEAPON_EMPLAUNCHER", damage = 1.0, customName = "Lançador EMP compacto" ,class = "explosives" },
            
            -- Throwables
            { weapon = "WEAPON_GRENADE", damage = 1.0, customName = "Granada" ,class = "granades" },
            { weapon = "WEAPON_BZGAS", damage = 1.0, customName = "Granada de gas" ,class = "pasive granades" },
            { weapon = "WEAPON_MOLOTOV", damage = 1.0, customName = "Coquetel molotov" ,class = "fire granades" },
            { weapon = "WEAPON_STICKYBOMB", damage = 1.0, customName = "Bomba Remota" ,class = "granades" },
            { weapon = "WEAPON_PROXMINE", damage = 1.0, customName = "Bomba de proximidade" ,class = "granades" },
            { weapon = "WEAPON_SNOWBALL", damage = 0.0, customName = "Bola de neve" ,class = "hands" },
            { weapon = "WEAPON_PIPEBOMB", damage = 1.0, customName = "Bombas de tubos" ,class = "granades" },
            { weapon = "WEAPON_BALL", damage = 1.0, customName = "bola de beisebol" ,class = "hands" },
            { weapon = "WEAPON_SMOKEGRENADE", damage = 1.0, customName = "Gás lacrimogêneo" ,class = "pasive granades" },
            { weapon = "WEAPON_FLARE", damage = 1.0, customName = "Sinalizador" ,class = "pasive granades" },
            
            -- Miscellaneous
            { weapon = "WEAPON_PETROLCAN", damage = 1.0, customName = "Galão de combustível" ,class = "flammable" },
            { weapon = "GADGET_PARACHUTER", damage = 1.0, customName = "Pára-quedas" ,class = "hands" },
            { weapon = "WEAPON_FIREEXTINGUISHER", damage = 1.0, customName = "Extintor de incêndio" ,class = "hands" },
            { weapon = "WEAPON_HAZARDCAN", damage = 1.0, customName = "Galão de combustível Perigoso" ,class = "flammable" },
            { weapon = "WEAPON_FERTILIZERCAN", damage = 1.0, customName = "Galão de Fertilizante" ,class = "flammable" },
            
            -- 
            { weapon = "WEAPON_REMOTESNIPER", damage = 1.0, customName = "Sniper Remota" ,class = "weapons" },
            { weapon = "WEAPON_PASSENGER_ROCKET", damage = 1.0, customName = "Foguete de passageiros" ,class = "explosives" },
            { weapon = "WEAPON_AIRSTRIKE_ROCKET", damage = 1.0, customName = "Foguete de ataque aéreo" ,class = "explosives" },
            { weapon = "WEAPON_STINGER", damage = 1.0, customName = "Ferrão de Veículo" ,class = "blades" },
            { weapon = "OBJECT", damage = 1.0, customName = "Objeto" ,class = "hands" },
            { weapon = "VEHICLE_WEAPON_TANK", damage = 1.0, customName = "Canhão de tanque" ,class = "explosives" },
            { weapon = "VEHICLE_WEAPON_LASER", damage = 1.0, customName = "Canhão de jato" ,class = "explosives" },
            { weapon = "VEHICLE_WEAPON_SPACE_ROCKET", damage = 1.0, customName = "Foguetes" ,class = "explosives" },
            { weapon = "VEHICLE_WEAPON_PLAYER_LASER", damage = 1.0, customName = "Laser" ,class = "weapons" },
            { weapon = "AMMO_RPG", damage = 1.0, customName = "Foguete" ,class = "explosives" },
            { weapon = "AMMO_TANK", damage = 1.0, customName = "Tanque" ,class = "explosives" },
            { weapon = "AMMO_SPACE_ROCKET", damage = 1.0, customName = "Foguete" ,class = "explosives" },
            { weapon = "AMMO_PLAYER_LASER", damage = 1.0, customName = "Laser" ,class = "weapons" },
            { weapon = "AMMO_ENEMY_LASER", damage = 1.0, customName = "Laser" ,class = "weapons" },
            { weapon = "WEAPON_RAMMED_BY_CAR", damage = 1.0, customName = "Atropelado por veículo" ,class = "vechicles" },
            { weapon = "WEAPON_FIRE", damage = 1.0, customName = "Fogo" ,class = "flammable" },
            { weapon = "WEAPON_HELI_CRASH", damage = 1.0, customName = "Acidente de helicóptero" ,class = "blades" },
            { weapon = "WEAPON_RUN_OVER_BY_CAR", damage = 1.0, customName = "Atropelado de veículo" ,class = "vechicles" },
            { weapon = "WEAPON_HIT_BY_WATER_CANNON", damage = 1.0, customName = "Atingido por Canhão de Água" ,class = "hands" },
            { weapon = "WEAPON_EXHAUSTION", damage = 1.0, customName = "Exaustão" ,class = "hands" },
            { weapon = "WEAPON_EXPLOSION", damage = 1.0, customName = "Explosão" ,class = "hands" },
            { weapon = "WEAPON_ELECTRIC_FENCE", damage = 1.0, customName = "Cerca elétrica" ,class = "flammable" },
            { weapon = "WEAPON_BLEEDING", damage = 1.0, customName = "Sangramento" ,class = "hands" },
            { weapon = "WEAPON_DROWNING_IN_VEHICLE", damage = 1.0, customName = "Afogamento em veículo" ,class = "hands" },
            { weapon = "WEAPON_DROWNING", damage = 1.0, customName = "Afogamento" ,class = "hands" },
            { weapon = "WEAPON_BARBED_WIRE", damage = 1.0, customName = "Arame farpado" ,class = "blades" },
            { weapon = "WEAPON_VEHICLE_ROCKET", damage = 1.0, customName = "Veículo Foguete" ,class = "explosives" },
            { weapon = "WEAPON_ASSAULTSNIPER", damage = 1.0, customName = "Atirador de assalto" ,class = "weapons" },
            { weapon = "VEHICLE_WEAPON_ROTORS", damage = 1.0, customName = "Rotores" ,class = "blades" },
            { weapon = "WEAPON_AIR_DEFENCE_GUN", damage = 1.0, customName = "Arma de Defesa Aérea" ,class = "weapons" },
            { weapon = "WEAPON_ANIMAL", damage = 1.0, customName = "Animal" ,class = "hands" },
            { weapon = "WEAPON_COUGAR", damage = 1.0, customName = "Puma" ,class = "hands" },

            { weaponHash = -842959696, damage = 1.0, customName = "Suicidio" ,class = "hands" },
        },
    --}
    },

--{ Language
    survivalLanguagePTBR = {  -- Você pode alterar cada texto do script por aqui!
        commands = {
            diagnostic = "diagnostico",
            reanimate = "reanimar",
            getStretcher = "pegarmaca",
            putOnStretcher = "colocarnamaca",
            putOnVehicle = "colocarnoveiculo",
        },

        itens = {
            itemMedBag = "bolsamedica",
            itemTweezers = "pinca",
            itemSutureKit = "sutura",
            itemBurnCream = "cremeparaqueimaduras",
            itemDefib = "desfibrilador",
            itemStretcher = "maca",
            itemBulletMashed = "balaamassada",
            itemShroud = "mortalha",
        },

        diagnostic = {
            wounds = "<b>Ferimentos encontrados:</b> ",
            noWounds = "<b>Nenhum ferimento encontrado</b>",
            exposedWounds = "<br><br><b>Ferimentos expostos: </b>",
            state = "<br><br><b>Estado do indivíduo: </b>",
            mililiters = "<br><br><b>Mililitros de sangue no corpo:</b>",
            cutsExposed = "Cortes de lâmina",
            burnsExposed = "Queimaduras",
            bulletHolesExposed = "Buracos de balas",
            head = "Cabeça",
            Neck = "Pescoço",
            handR = "Mão Direita",
            forearmR = "Antebraço Direito",
            upperArmR = "Braço-Superior Direito",
            clavicleR = "Clavícula Direita",
            handL = "Mão Esquerda",
            forearmL = "Antebraço Esquerdo",
            upperArmL = "Braço-Superior Esquerdo",
            clavicleL = "Clavícula Esquerda",
            footR = "Pé Direito",
            calfR = "panturrilha Direita",
            ThighR = "Coxa Direita",
            footL = "Pé Esquerdo",
            calfL = "panturrilha Esquerda",
            ThighL = "Coxa Esquerda",
            upperThoracicSpine = "Espinha Torácica Superior",
            lowerThoracicSpine = "Espinha Torácica Inferior",
            lumbarSpine = "Espinha Lombar",
            pelvis = "Pelve",
        },

        nhContextOptions = {
            getTweezers = ": Pegar Pinça",
            getTweezersDescription = ": Pegar Pinça",
            getSuture = ": Pegar Sutura",
            getSutureDescription = ": Pegar Sutura",
            getBurnCream = ": Pegar Creme para queimaduras",
            getBurnCreamDescription = ": Pegar Creme para queimaduras",
            getDefib = ": Pegar Desfibrilador",
            getDefibDescription = ": Pegar Desfibrilador",
            getFoldingSTretcher = ": Pegar Maca Dobrável",
            getFoldingSTretcherDescription = ": Pegar Maca Dobrável",
            getShroud = ": Pegar Mortalha",
            getShroudDescription = ": Pegar Mortalha",
        },

        targetLabelOptions = {
            openBag = ": Abrir bolsa",
            pickUpBag = ": Pegar bolsa",
            savePurse = ": Guardar bolsa",
            getTweezers = ": Pegar Pinça",
            getSuture = ": Pegar Sutura",
            getBurnCream = ": Pegar Creme para queimaduras",
            getDefib = ": Pegar Desfibrilador",
            getFoldingSTretcher = ": Pegar Maca Dobrável",
            getShroud = ": Pegar Mortalha",
            closePurse = ": Fechar bolsa",
        },

        killLog = {
            id = "(ID):",
            suicide = "(COMETEU SUICIDIO)",
            killedId = "(MATOU O ID):",
            killed = "(MATOU):",
        },

        killLogWebhook = {
            id = "[Passaporte]:",
            suicideByWeapon = "[COMETEU SUICIDIO ULTILIZANDO]:",
            byWeapon = "[ULTILIZANDO]:",
            killedByNPC = "[FOI MORTO POR UM AMERICANO]",
            hash = "[HASH]:",
            fatalShoot = "[TIRO FATAL (HEADSHOT)]",
            cdsVictim = "[Coordenada da vítima]:",
            cdsKiller = "[Coordenada do assassino]:",
            date = "[Data]:",
            hours = "[Hora]:",
        },

        notifys = {
            noPermission = "Você não tem permissão!",
            reanimationSucess = "Você conseguiu reanimar o cidadão!",
            unsuccessfulReanimation = "Você não conseguiu reanimar este cidadão, continue tentando!",
            doNotGiveUp = "Aguente firme! não siga a luz!",
            paymentI = "Você recebeu <b>$",
            paymentII = "</b> por salvar a vida do cidadão!",
            isDead = "O coração deste cidadão está sem pulsação 🖤, você não consegue mais reanimar ele!",
            imDead = "Seu coração está sem pulsação!🖤",
            IsAlive = "O cidadão mais próximo de você está bem, tente em um cidadão desmaiado!",
            notFoundNear = "Não há nenhum cidadão próximo a você!",
            noItem = "Você não possui um(a):",
            bulletNotFound = "Não há balas no corpo do paciente.",
            cutsNotFound = "Não há cortes no corpo do paciente.",
            burnNotFound = "Não há queimaduras no corpo do paciente.",
            pickUpItemFromMedicalBag = "você pegou 1",
            pickUpItemFromMedicalBag2 = "da bolsa medica.",
            pickedUpMedBag = "Você pegou uma uma bolsa medica!",
            keptStretcher = "Você guardou a maca!",
            removeBullet = "Bala removida.",
            sewnCut = "corte costurado.",
            applyCream = "creme aplicado.",
            shrouded = "o corpo foi ensacado.",
        },

        progressBar = {
            reanimation = "Reanimando o cidadão",
        },

        reanimationWebhook = {
            paramedic = "[PARAMEDICO]:",
            revived =  "[REANIMOU]:",
            triedReanimate = "[TENTOU REANIMAR]:",
            pulsation = "[PULSAÇÃO]:",
            chance = "[CHANCE]:",
            minimum = "[MINIMO]:",
            payment = "[PAGAMENTO DO MEDICO]: $",
            withPulse = "Com pulso ❤️",
            pulseless = "Sem Pulso 🖤",
            date = "[Data]:",
            hours = "[Hora]:",
        },
    },

    survivalLanguageENUS = {  -- You can change the script texts here!
        commands = {
            diagnostic = "diagnostic",
            reanimate = "reanimate",
            getStretcher = "getstretcher",
            putOnStretcher = "putonstretcher",
            putOnVehicle = "putonvehicle",
        },

        itens = {
            itemMedBag = "medical bag",
            itemTweezers = "tweezers",
            itemSutureKit = "suture",
            itemBurnCream = "cream for burn",
            itemDefib = "defibrillator",
            itemStretcher = "stretcher",
            itemBulletMashed = "bullet mashed",
            itemShroud = "shroud",
        },

        diagnostic = {
            wounds = "<b>Wounds found:</b> ",
            noWounds = "<b>No Wounds Found</b>",
            exposedWounds = "<br><br><b>Exposed wounds: </b>",
            state = "<br><br><b>state of the individual: </b>",
            mililiters = "<br><br><b>Milliliters of blood in the body:</b>",
            cutsExposed = "Blade cuts",
            burnsExposed = "Burns",
            bulletHolesExposed = "Bullet holes",
            head = "head",
            Neck = "Neck",
            handR = "Right hand",
            forearmR = "Right Forearm",
            upperArmR = "Right Upper Arm",
            clavicleR = "right clavicle",
            handL = "Left hand",
            forearmL = "Left Forearm",
            upperArmL = "Left Upper Arm",
            clavicleL = "Left clavicle",
            footR = "Right foot",
            calfR = "Right calf",
            ThighR = "Right Thigh",
            footL = "Left foot",
            calfL = "Left calf",
            ThighL = "Left Thigh",
            upperThoracicSpine = "upperThoracicSpine",
            lowerThoracicSpine = "lowerThoracicSpine",
            lumbarSpine = "lumbarSpine",
            pelvis = "pelvis",
        },

        targetLabelOptions = {
            openBag = ": Open bag",
            pickUpBag = ": Pick up bag",
            savePurse = ": Save purse",
            getTweezers = ": Get Tweezers",
            getSuture = ": Get Suture",
            getBurnCream = ": Get Burn Cream",
            getDefib = ": Get Defibrillator",
            getFoldingSTretcher = ": Get Folding Stretcher",
            getShroud = ": Get Shroud",
            closePurse = ": Close purse",
        },

        killLog = {
            id = "(ID):",
            suicide = "(COMMITTED SUICIDE)",
            killedId = "(KILLED THE ID):",
            killed = "(KILLED):",
        },

        killLogWebhook = {
            id = "[Passport]:",
            suicideByWeapon = "[COMMITTED SUICIDE USING]:",
            byWeapon = "[USING]:",
            killedByNPC = "[WAS KILLED BY AN NPC]",
            hash = "[HASH]:",
            fatalShoot = "[HEADSHOT]",
            cdsVictim = "[Victim's Coordinate]:",
            cdsKiller = "[assassin's coordinate]:",
            date = "[Date]:",
            hours = "[Hours]:",
        },

        notifys = {
            noPermission = "You do not have permission!",
            reanimationSucess = "You managed to revive the citizen!",
            unsuccessfulReanimation = "You failed to revive this citizen, keep trying!",
            doNotGiveUp = "hold on firm! don't follow the light!",
            paymentI = "You received <b>$",
            paymentII = "</b> for saving the life of the citizen!",
            isDead = "This citizen's heart is without a pulse 🖤, você não consegue mais reanimar ele!",
            imDead = "Your heart has no pulse!🖤",
            IsAlive = "The citizen closest to you is fine, try it on a fainted citizen!",
            notFoundNear = "There is no citizen next to you!",
            noItem = "You don't have one(a):",
            bulletNotFound = "There are no bullets in the patient's body.",
            cutsNotFound = "There are no cuts on the patient's body.",
            burnNotFound = "There are no burns on the patient's body.",
            pickUpItemFromMedicalBag = "you picked 1",
            pickUpItemFromMedicalBag2 = "from medical bag.",
            pickedUpMedBag = "You picked up a medical bag!",
            keptStretcher = "You kept the stretcher!",
            removeBullet = "Bullet removed.",
            sewnCut = "sewn cut.",
            applyCream = "applied cream.",
            shrouded = "the body was shrouded.",
        },

        notifysTypes = {
            success = "success",
            denied = "denied",
            warning = "warning",
            important = "important",
        },

        progressBar = {
            reanimation = "Reanimating the citizen",
        },

        reanimationWebhook = {
            paramedic = "[PARAMEDIC]:",
            revived =  "[REANIMATED]:",
            triedReanimate = "[TRIED TO REANIMATE]:",
            pulsation = "[PULSATION]:",
            chance = "[CHANCE]:",
            minimum = "[MINIMUM]:",
            payment = "[DOCTOR'S PAYMENT]: $",
            withPulse = "with pulse ❤️",
            pulseless = "no pulse 🖤",
            date = "[Data]:",
            hours = "[Hour]:",
        },
    }
--}
})