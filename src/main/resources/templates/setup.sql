CREATE TABLE Champion(
                         championName VARCHAR(50) UNIQUE ,
                         PRIMARY KEY (championName)
);

CREATE TABLE FinalItemPart(
                          finalItemPartName VARCHAR(50) UNIQUE,
                          PRIMARY KEY (finalItemPartName)
);

CREATE TABLE FinalItem(
                          finalItemName VARCHAR(50),
                          finalItemPartName VARCHAR(50),
                          FOREIGN KEY (finalItemPartName) REFERENCES FinalItemPart (finalItemPartName)

);

CREATE TABLE ChampionItems(
                              championName VARCHAR(50) UNIQUE,
                              finalItemName1 VARCHAR(50),
                              finalItemName2 VARCHAR(50),
                              finalItemName3 VARCHAR(50),
                              PRIMARY KEY (championName)

);

CREATE TABLE TeamComp(
                          teamCompName VARCHAR(50) UNIQUE,
                          mainCarry1 VARCHAR(50),
                          mainCarry2 VARCHAR(50),
                          teammate3 VARCHAR(50),
                          teammate4 VARCHAR(50),
                          teammate5 VARCHAR(50),
                          teammate6 VARCHAR(50),
                          teammate7 VARCHAR(50),
                          teammate8 VARCHAR(50),
                          PRIMARY KEY (teamCompName)
);

INSERT INTO Champion(championName) VALUES ('Aatrox');
INSERT INTO Champion(championName) VALUES ('Aphelios');
INSERT INTO Champion(championName) VALUES ('Ashe');
INSERT INTO Champion(championName) VALUES ('Brand');
INSERT INTO Champion(championName) VALUES ('Darius');
INSERT INTO Champion(championName) VALUES ('Diana');
INSERT INTO Champion(championName) VALUES ('Draven');
INSERT INTO Champion(championName) VALUES ('Garen');
INSERT INTO Champion(championName) VALUES ('Gragas');
INSERT INTO Champion(championName) VALUES ('Hecarim');
INSERT INTO Champion(championName) VALUES ('Heimerdinger');
INSERT INTO Champion(championName) VALUES ('Ivern');
INSERT INTO Champion(championName) VALUES ('Jax');
INSERT INTO Champion(championName) VALUES ('Kalista');
INSERT INTO Champion(championName) VALUES ('Karma');
INSERT INTO Champion(championName) VALUES ('Katarina');
INSERT INTO Champion(championName) VALUES ('Kayle');
INSERT INTO Champion(championName) VALUES ('Kennen');
INSERT INTO Champion(championName) VALUES ('Kha''Zix');
INSERT INTO Champion(championName) VALUES ('Kindred');
INSERT INTO Champion(championName) VALUES ('Kled');
INSERT INTO Champion(championName) VALUES ('LeBlanc');
INSERT INTO Champion(championName) VALUES ('Lee Sin');
INSERT INTO Champion(championName) VALUES ('Leona');
INSERT INTO Champion(championName) VALUES ('Lissandra');
INSERT INTO Champion(championName) VALUES ('Lulu');
INSERT INTO Champion(championName) VALUES ('Lux');
INSERT INTO Champion(championName) VALUES ('Mordekaiser');
INSERT INTO Champion(championName) VALUES ('Morgana');
INSERT INTO Champion(championName) VALUES ('Nautilus');
INSERT INTO Champion(championName) VALUES ('Nidalee');
INSERT INTO Champion(championName) VALUES ('Nocturne');
INSERT INTO Champion(championName) VALUES ('Nunu');
INSERT INTO Champion(championName) VALUES ('Pantheon');
INSERT INTO Champion(championName) VALUES ('Poppy');
INSERT INTO Champion(championName) VALUES ('Rell');
INSERT INTO Champion(championName) VALUES ('Riven');
INSERT INTO Champion(championName) VALUES ('Ryze');
INSERT INTO Champion(championName) VALUES ('Sejuani');
INSERT INTO Champion(championName) VALUES ('Sett');
INSERT INTO Champion(championName) VALUES ('Soraka');
INSERT INTO Champion(championName) VALUES ('Syndra');
INSERT INTO Champion(championName) VALUES ('Taric');
INSERT INTO Champion(championName) VALUES ('Teemo');
INSERT INTO Champion(championName) VALUES ('Thresh');
INSERT INTO Champion(championName) VALUES ('Trundle');
INSERT INTO Champion(championName) VALUES ('Udyr');
INSERT INTO Champion(championName) VALUES ('Varus');
INSERT INTO Champion(championName) VALUES ('Vayne');
INSERT INTO Champion(championName) VALUES ('Vel''Koz');
INSERT INTO Champion(championName) VALUES ('Viego');
INSERT INTO Champion(championName) VALUES ('Viktor');
INSERT INTO Champion(championName) VALUES ('Vladimir');
INSERT INTO Champion(championName) VALUES ('Volibear');
INSERT INTO Champion(championName) VALUES ('Warwick');
INSERT INTO Champion(championName) VALUES ('Yasuo');
INSERT INTO Champion(championName) VALUES ('Ziggs');
INSERT INTO Champion(championName) VALUES ('Zyra');

INSERT INTO FinalItemPart(finalItemPartName) VALUES ('B.F. Sword');
INSERT INTO FinalItemPart(finalItemPartName) VALUES ('Recurve Bow');
INSERT INTO FinalItemPart(finalItemPartName) VALUES ('Needlessly Large Rod');
INSERT INTO FinalItemPart(finalItemPartName) VALUES ('Tear of the Goddess');
INSERT INTO FinalItemPart(finalItemPartName) VALUES ('Chain Vest');
INSERT INTO FinalItemPart(finalItemPartName) VALUES ('Negatron Cloak');
INSERT INTO FinalItemPart(finalItemPartName) VALUES ('Giant''s Belt');
INSERT INTO FinalItemPart(finalItemPartName) VALUES ('Spatula');
INSERT INTO FinalItemPart(finalItemPartName) VALUES ('Sparring Gloves');

INSERT INTO FinalItemPart(finalItemPartName) VALUES ('Shadow Sword');
INSERT INTO FinalItemPart(finalItemPartName) VALUES ('Shadow Bow');
INSERT INTO FinalItemPart(finalItemPartName) VALUES ('Shadow Rod');
INSERT INTO FinalItemPart(finalItemPartName) VALUES ('Shadow Tear');
INSERT INTO FinalItemPart(finalItemPartName) VALUES ('Shadow Vest');
INSERT INTO FinalItemPart(finalItemPartName) VALUES ('Shadow Cloak');
INSERT INTO FinalItemPart(finalItemPartName) VALUES ('Shadow Belt');
INSERT INTO FinalItemPart(finalItemPartName) VALUES ('Shadow Spatula');
INSERT INTO FinalItemPart(finalItemPartName) VALUES ('Shadow Gloves');

INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Deathblade','B.F. Sword');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Giant Slayer','B.F. Sword');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Hextech Gunblade','B.F. Sword');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Spear of Shojin','B.F. Sword');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Guardian Angel','B.F. Sword');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Bloodthirster','B.F. Sword');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Zeke''s Herald','B.F. Sword');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Skirmisher Emblem','B.F. Sword');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Infinity Edge','B.F. Sword');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Rapid Firecannon','Recurve Bow');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Guinsoo''s Rageblade','Recurve Bow');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Statikk Shiv','Recurve Bow');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Titan''s Resolve','Recurve Bow');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Runaan''s Hurricane','Recurve Bow');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Zz''Rot Portal','Recurve Bow');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Legionnaire Emblem','Recurve Bow');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Last Whisper','Recurve Bow');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Rabadon''s Deathcap','Needlessly Large Rod');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Archangel''s Staff','Needlessly Large Rod');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Locket of the Iron Solari','Needlessly Large Rod');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Ionic Spark','Needlessly Large Rod');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Morellonomicon','Needlessly Large Rod');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Spellweaver Emblem','Needlessly Large Rod');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Jeweled Gauntlet','Needlessly Large Rod');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Blue Buff','Tear of the Goddess');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Frozen Heart','Tear of the Goddess');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Chalice of Power','Tear of the Goddess');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Redemption','Tear of the Goddess');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Renewer Emblem','Tear of the Goddess');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Hand Of Justice','Tear of the Goddess');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Bramble Vest','Chain Vest');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Gargoyle Stoneplate','Chain Vest');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Sunfire Cape','Chain Vest');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Ironclad Emblem','Chain Vest');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Shroud of Stillness','Chain Vest');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Dragon''s Claw','Negatron Cloak');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Zephyr','Negatron Cloak');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Redeemed Emblem','Negatron Cloak');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Quicksilver','Negatron Cloak');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Warmog''s Armor','Giant''s Belt');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Dawnbringer Emblem','Giant''s Belt');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Trap Claw','Giant''s Belt');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Force of Nature','Spatula');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Assassin Emblem','Sparring Gloves');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Thief''s Gloves','Sparring Gloves');

INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Deathblade','B.F. Sword');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Giant Slayer','Recurve Bow');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Hextech Gunblade','Needlessly Large Rod');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Spear of Shojin','Tear of the Goddess');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Guardian Angel','Chain Vest');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Bloodthirster','Negatron Cloak');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Zeke''s Herald','Giant''s Belt');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Skirmisher Emblem','Spatula');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Infinity Edge','Sparring Gloves');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Rapid Firecannon','Recurve Bow');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Guinsoo''s Rageblade','Needlessly Large Rod');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Statikk Shiv','Tear of the Goddess');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Titan''s Resolve','Chain Vest');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Runaan''s Hurricane','Negatron Cloak');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Zz''Rot Portal','Giant''s Belt');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Legionnaire Emblem','Spatula');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Last Whisper','Sparring Gloves');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Rabadon''s Deathcap','Needlessly Large Rod');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Archangel''s Staff','Tear of the Goddess');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Locket of the Iron Solari','Chain Vest');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Ionic Spark','Negatron Cloak');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Morellonomicon','Giant''s Belt');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Spellweaver Emblem','Spatula');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Jeweled Gauntlet','Sparring Gloves');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Blue Buff','Tear of the Goddess');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Frozen Heart','Chain Vest');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Chalice of Power','Negatron Cloak');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Redemption','Giant''s Belt');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Renewer Emblem','Spatula');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Hand Of Justice','Sparring Gloves');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Bramble Vest','Chain Vest');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Gargoyle Stoneplate','Negatron Cloak');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Sunfire Cape','Giant''s Belt');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Ironclad Emblem','Spatula');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Shroud of Stillness','Sparring Gloves');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Dragon''s Claw','Negatron Cloak');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Zephyr','Giant''s Belt');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Redeemed Emblem','Spatula');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Quicksilver','Sparring Gloves');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Warmog''s Armor','Giant''s Belt');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Dawnbringer Emblem','Spatula');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Trap Claw','Sparring Gloves');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Force of Nature','Spatula');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Assassin Emblem','Spatula');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Thief''s Gloves','Sparring Gloves');

INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Caustic Deathblade','Shadow Sword');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Spectral Giantslayer','Shadow Sword');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Hextech Gunblade Of Immortality','Shadow Sword');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Spectral Spear of Shojin','Shadow Sword');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Fallen Guardian Angel','Shadow Sword');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Riskthirster','Shadow Sword');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Zeke''s Bleak Herald','Shadow Sword');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Forgotten Emblem','Shadow Sword');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Sacrificial Infinity Edge','Shadow Sword');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Rapid Deathcannon','Shadow Bow');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Guinsoo''s Sacrificial Rageblade','Shadow Bow');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Statikk Stiletto','Shadow Bow');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Titan''s Revenge','Shadow Bow');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Runaan''s Untamed Hurricane','Shadow Bow');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Unstable Zz''Rot Portal','Shadow Bow');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Hellion Emblem','Shadow Bow');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Final Whisper','Shadow Bow');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Rabadon''s Caustic Deathcap','Shadow Rod');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Archdemon''s Staff Of Immortality','Shadow Rod');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Locket of the Silver Lunari','Shadow Rod');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Ionic Dark-Spark','Shadow Rod');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Mor-evil-lonomicon','Shadow Rod');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Dragonslayer Emblem','Shadow Rod');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Sacrificial Gauntlet','Shadow Rod');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Very Dark Blue Buff','Shadow Tear');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Frozen Dark Heart','Shadow Tear');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Chalice of Malice','Shadow Tear');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Sacrificial Redemption','Shadow Tear');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Coven Emblem','Shadow Tear');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Hand of Vengeance','Shadow Tear');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Refracted Bramble Vest','Shadow Vest');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Gargoyle Stoneplate Of Immortality','Shadow Vest');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Eclipse Cape','Shadow Vest');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Cavalier Emblem','Shadow Vest');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Dark Shroud of Stillness','Shadow Vest');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Refracted Dragon''s Claw','Shadow Cloak');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Turbulent Zephyr','Shadow Cloak');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Revenant Emblem','Shadow Cloak');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Caustic Quicksilver','Shadow Cloak');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Warmog''s Sacrificial Armor','Shadow Belt');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Nightbringer Emblem','Shadow Belt');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Vengeful Trap Claw','Shadow Belt');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Force of Darkness','Shadow Spatula');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Abomination Emblem','Shadow Gloves');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Trickster''s Gloves','Shadow Gloves');

INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Caustic Deathblade','Shadow Sword');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Spectral Giantslayer','Shadow Bow');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Hextech Gunblade Of Immortality','Shadow Rod');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Spectral Spear of Shojin','Shadow Tear');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Fallen Guardian Angel','Shadow Vest');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Riskthirster','Shadow Cloak');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Zeke''s Bleak Herald','Shadow Belt');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Forgotten Emblem','Shadow Spatula');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Sacrificial Infinity Edge','Shadow Gloves');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Rapid Deathcannon','Shadow Bow');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Guinsoo''s Sacrificial Rageblade','Shadow Rod');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Statikk Stiletto','Shadow Tear');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Titan''s Revenge','Shadow Vest');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Runaan''s Untamed Hurricane','Shadow Cloak');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Unstable Zz''Rot Portal','Shadow Belt');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Hellion Emblem','Shadow Spatula');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Final Whisper','Shadow Gloves');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Rabadon''s Caustic Deathcap','Shadow Rod');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Archdemon''s Staff Of Immortality','Shadow Tear');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Locket of the Silver Lunari','Shadow Vest');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Ionic Dark-Spark','Shadow Cloak');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Mor-evil-lonomicon','Shadow Belt');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Dragonslayer Emblem','Shadow Spatula');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Sacrificial Gauntlet','Shadow Gloves');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Very Dark Blue Buff','Shadow Tear');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Frozen Dark Heart','Shadow Vest');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Chalice of Malice','Shadow Cloak');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Sacrificial Redemption','Shadow Belt');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Coven Emblem','Shadow Spatula');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Hand of Vengeance','Shadow Gloves');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Refracted Bramble Vest','Shadow Vest');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Gargoyle Stoneplate Of Immortality','Shadow Cloak');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Eclipse Cape','Shadow Belt');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Cavalier Emblem','Shadow Spatula');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Dark Shroud of Stillness','Shadow Gloves');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Refracted Dragon''s Claw','Shadow Cloak');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Turbulent Zephyr','Shadow Belt');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Revenant Emblem','Shadow Spatula');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Caustic Quicksilver','Shadow Gloves');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Warmog''s Sacrificial Armor','Shadow Belt');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Nightbringer Emblem','Shadow Spatula');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Vengeful Trap Claw','Shadow Gloves');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Force of Darkness','Shadow Spatula');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Abomination Emblem','Shadow Spatula');
INSERT INTO FinalItem(finalItemName,finalItemPartName) VALUES ('Trickster''s Gloves','Shadow Gloves');
