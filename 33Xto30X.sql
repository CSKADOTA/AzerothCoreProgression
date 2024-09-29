-- Disable weekly quests in 3.3
INSERT INTO acore_world.disables (sourceType, entry, comment)
SELECT 1 AS sourceType, ID AS entry, 'Progressive Disabled 3.3 to 3.2' AS comment
FROM acore_world.quest_template 
WHERE RewardItem1 = '49426' 
  AND LogTitle NOT LIKE '%Daily%';
-- Disable weekly quests in 3.3
--Replace daily dungeon emblems from trumph to Heroism
UPDATE acore_world.quest_template
SET RewardItem1 = '40752'
WHERE RewardItem1 = '47241'
  AND LogTitle LIKE '%Daily%';
--Replace daily dungeon emblems from trumph to Heroism
--Replace daily dungeon emblems from frost to Valor
UPDATE acore_world.quest_template
SET RewardItem1 = '40753'
WHERE RewardItem1 = '49426'
  AND LogTitle LIKE '%Daily%';
--Replace daily dungeon emblems from frost to Valor
--Replace daily quests emblems from trumph to Valor
UPDATE acore_world.quest_template
SET RewardItem1 = '40753'
WHERE LogTitle LIKE '%Proof%';
UPDATE acore_world.quest_template
SET RewardItem1 = '40753'
WHERE LogTitle LIKE '%Timear Foresees%';
--Replace daily quests emblems from trumph to Valor
--Disable NPC: Frozo the Renowned, Toravon the Ice Watcher
UPDATE acore_world.creature
SET phaseMask = '16384' 
WHERE id1 IN (40160,38433,35013,35360,33993);
--Disable NPC: Frozo the Renowned, Toravon the Ice Watcher
--Smelt Titansteel 20 Hours cooldown
INSERT INTO acore_world.spell_dbc (ID, RecoveryTime)
VALUES (55208, 72000000);
--Smelt Titansteel 20 Hours cooldown
--All 3.1-3.3 raids and dungeons disable
INSERT INTO acore_world.disables (sourceType, entry, comment)
VALUES (2, 631, 'Disabled dungeon/raid 3.3'),
       (2, 632, 'Disabled dungeon/raid 3.3'),
       (2, 649, 'Disabled dungeon/raid 3.3'),
       (2, 650, 'Disabled dungeon/raid 3.3'),
       (2, 658, 'Disabled dungeon/raid 3.3'),
       (2, 724, 'Disabled dungeon/raid 3.3'),
	   (2, 249, 'Disabled dungeon/raid 3.2'),
	   (2, 649, 'Disabled dungeon/raid 3.2'),
	   (2, 603, 'Disabled dungeon/raid 3.1'),
       (2, 650, 'Disabled dungeon/raid 3.1'),
	   (3, 30, 'Disabled battleground 3.2'),
       (2, 668, 'Disabled dungeon/raid 3.3');
--All 3.1-3.3 raids and dungeons disable
--3.2 Daily quests disable
INSERT INTO acore_world.disables (sourceType, entry, comment)
VALUES (2, 14103, 'Disabled Quests 3.2'),
	   (2, 14199, 'Disabled Quests 3.2'),
	   (2, 14151, 'Disabled Quests 3.2');
--3.2 Daily quests disable
--Delete all S8 Gears
DELETE FROM acore_world.npc_vendor
WHERE item IN (
    SELECT entry
    FROM acore_world.item_template
    WHERE name LIKE '%Wrathful Gladiator%'
);
--Delete all S8 Gears
--Delete all S7 Gears
DELETE FROM acore_world.npc_vendor
WHERE item IN (
    SELECT entry
    FROM acore_world.item_template
    WHERE name LIKE '%Relentless Gladiator%'
);
--Delete all S7 Gears
--Delete all S6 Gears
DELETE FROM acore_world.npc_vendor
WHERE item IN (
    SELECT entry
    FROM acore_world.item_template
    WHERE name LIKE '%Furious Gladiator%'
);
--Delete all S6 Gears
--Delete all 3.3 Rings
DELETE FROM acore_world.npc_vendor
WHERE item IN (
    SELECT entry
    FROM acore_world.item_template
    WHERE name LIKE '%Runed%%Kirin Tor%'
);
--Delete all 3.3 Rings
--Delete all 3.2 Rings
DELETE FROM acore_world.npc_vendor
WHERE item IN (
    SELECT entry
    FROM acore_world.item_template
    WHERE name LIKE '%Etched%%Kirin Tor%'
);
--Delete all 3.2 Rings
--Delete all 3.1 Rings
DELETE FROM acore_world.npc_vendor
WHERE item IN (
    SELECT entry
    FROM acore_world.item_template
    WHERE name LIKE '%Inscribed%%Kirin Tor%'
);
--Delete all 3.1 Rings
--Delete all 3.2 Transmute
DELETE FROM acore_world.npc_trainer
WHERE SpellID IN (66658,66659,66660,66662,66663,66664);
--Delete all 3.2 Transmute
--Delete all Epic Gems of 3.2
DELETE FROM reference_loot_template
WHERE Item IN (36919,36922,36925,36928,36931,36934);
DELETE FROM acore_world.npc_vendor
WHERE item IN (
    SELECT entry
    FROM acore_world.item_template
    WHERE name LIKE '%Cardinal Ruby%' OR
          name LIKE "%King's Amber%" OR
		  name LIKE "%Majestic Zircon%" OR
		  name LIKE "%Dreadstone%" OR
		  name LIKE "%Ametrine%" OR
		  name LIKE "%Eye of Zul%" AND
		  entry > 30000;
DELETE FROM item_template
WHERE name LIKE '%Cardinal Ruby%' OR
      name LIKE "%King's Amber%" OR
      name LIKE "%Majestic Zircon%" OR
	  name LIKE "%Dreadstone%" OR
	  name LIKE "%Ametrine%" OR
	  name LIKE "%Eye of Zul%" AND
	  entry > 30000;
--Delete all Epic Gems of 3.2
--Disable prospecting Titanium Ore 3.2
DELETE FROM prospecting_loot_template
WHERE Entry IN (36910);
--Disable prospecting Titanium Ore 3.2
--Loot emblem to Herotic
UPDATE item_loot_template
SET Item = '40752'
WHERE Item = '47241';
UPDATE gameobject_loot_template
SET Item = '40752'
WHERE Item = '47241';
UPDATE gameobject_loot_template
SET Item = '40752'
WHERE Item = '47241'
	AND MaxCount <3;
--Loot emblem to Herotic
