-- Insert data into CONTINENT table
INSERT INTO CONTINENT (continentId, name)
VALUES
  ('C001', 'Vana\'diel'),
  ('C002', 'Mordion Gaol'),
  ('C003', 'Aht Urhgan');

-- Insert data into REGION table
INSERT INTO REGION (idRegion, idContinent, name, idArea)
VALUES
  ('R001', 'C001', 'West Ronfaure', 'A001'),
  ('R002', 'C001', 'East Ronfaure', 'A002'),
  ('R003', 'C002', 'Bibiki Bay', 'A003'),
  ('R004', 'C003', 'Nashmau', 'A004');

-- Insert data into AREA table
INSERT INTO AREA (idArea, areaName, mobsLevel, type, connections, idRegion, IdContinent)
VALUES
  ('A001', 'King Ranperre\'s Tomb', '15-20', 'Dungeon', 'West Ronfaure', 'R001', 'C001'),
  ('A002', 'Ghelsba Outpost', '10-15', 'Outpost', 'East Ronfaure', 'R002', 'C001'),
  ('A003', 'Purgonorgo Isle', '30-35', 'Island', 'Bibiki Bay', 'R003', 'C002'),
  ('A004', 'Caedarva Mire', '50-60', 'Swamp', 'Nashmau', 'R004', 'C003');

-- Insert data into CITY table
INSERT INTO CITY (idCity, idRegion, idContinent, idMission, idQuest, name, idNation)
VALUES
  ('CT001', 'R001', 'C001', NULL, NULL, 'San d\'Oria', 'NT001'),
  ('CT002', 'R002', 'C001', NULL, NULL, 'Bastok', 'NT002'),
  ('CT003', 'R003', 'C002', NULL, NULL, 'Norg', 'NT003'),
  ('CT004', 'R004', 'C003', NULL, NULL, 'Aht Urhgan Whitegate', 'NT004');

-- Insert data into NATION table
INSERT INTO NATION (idNation, name, description, idCity, idRegion, idContinent)
VALUES
  ('NT001', 'San d\'Oria', 'A proud nation of Elvaan in the north of Vana\'diel.', 'CT001', 'R001', 'C001'),
  ('NT002', 'Bastok', 'An industrial nation with a great melting pot of races.', 'CT002', 'R002', 'C001'),
  ('NT003', 'Norg', 'A hidden nation of pirates and thieves.', 'CT003', 'R003', 'C002'),
  ('NT004', 'Aht Urhgan', 'An eastern nation with a rich history and a focus on mercenary work.', 'CT004', 'R004', 'C003');

-- Insert data into QUEST table
INSERT INTO QUEST (idQuest, name, questLevel, idCity, idRegion, idContinent, description, guide)
VALUES
  ('Q001', 'The Princess\'s Dilemma', 10, 'CT001', 'R001', 'C001', 'Help the princess retrieve her stolen necklace.', 'Find the princess at the Chateau d\'Oraguille and speak to her.'),
  ('Q002', 'The Quadav\'s Curse', 15, 'CT002', 'R002', 'C001', 'Investigate the Quadav presence near Bastok Mines.', 'Speak to Iron Eater Zogrim outside Bastok Mines.'),
  ('Q003', 'The Mysterious Light', 25, 'CT003', 'R003', 'C002', 'Find the source of the mysterious light in Norg.', 'Head to Norg and look for the mysterious light near the cliff.'),
  ('Q004', 'Imperial Coronation', 60, 'CT004', 'R004', 'C003', 'Attend the Imperial Coronation in Aht Urhgan Whitegate.', 'Talk to the Imperial Army Liaison at Aht Urhgan Whitegate.');

-- Insert data into MISSION table
INSERT INTO MISSION (idMission, name, MissionLevel, idCity, idRegion, idContinent, idNation, description, guide)
VALUES
  ('M001', 'The Shadow Lord', 30, 'CT001', 'R001', 'C001', 'NT001', 'Defeat the Shadow Lord and save San d\'Oria.', 'Talk to Curilla in the Chateau d\'Oraguille to start the mission.'),
  ('M002', 'The Crystal War', 50, 'CT002', 'R002', 'C001', 'NT002', 'Join the fight against the beastmen in the Crystal War.', 'Speak to Iron Eater Zogrim outside Bastok Mines to begin the mission.'),
  ('M003', 'The Shrouded Serpent', 75, 'CT003', 'R003', 'C002', 'NT003', 'Investigate the Serpent Generals and their plans in Norg.', 'Find a way into Norg and talk to the Pirate Footpad.'),
  ('M004', 'Aht Urhgan Promenade', 90, 'CT004', 'R004', 'C003', 'NT004', 'Participate in the Aht Urhgan Promenade event.', 'Head to the Imperial Whitegate during the Promenade period.');

-- Insert data into MONSTERS table
INSERT INTO MONSTERS (idMonster, zone, type, name, level, image, hp, mp, family, job, description)
VALUES
  ('M001', 'King Ranperre\'s Tomb', 'Undead', 'Skeleton', 20, 'skeleton.png', 200, 0, 'Undead', 'Warrior', 'Undead creature found in dark dungeons.'),
  ('M002', 'Ghelsba Outpost', 'Beast', 'Goblin', 12, 'goblin.png', 120, 0, 'Goblin', 'Thief', 'Small and mischievous creature often seen in groups.'),
  ('M003', 'Purgonorgo Isle', 'Aquatic', 'Kraken', 35, 'kraken.png', 500, 100, 'Sea Monster', 'Mage', 'Giant sea monster known for its powerful magic attacks.'),
  ('M004', 'Caedarva Mire', 'Amorph', 'Slime', 55, 'slime.png', 800, 200, 'Amorph', 'Blue Mage', 'Viscous creature found in swamps with a variety of elemental abilities.');