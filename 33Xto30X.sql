-- Disable weekly quests in 3.3
INSERT INTO disables (sourceType, entry, comment)
SELECT 1 AS sourceType, ID AS entry, 'Disabled dungeon/raid 3.3' AS comment
FROM quest_template 
WHERE RewardItem1 = '49426' 
  AND LogTitle NOT LIKE '%Daily%';
-- Disable weekly quests in 3.3
-- Replace daily dungeon emblems from trumph to Heroism
UPDATE quest_template
SET RewardItem1 = '40752'
WHERE RewardItem1 = '47241'
  AND LogTitle LIKE '%Daily%';
-- Replace daily dungeon emblems from trumph to Heroism
-- Replace daily dungeon emblems from frost to Valor
UPDATE quest_template
SET RewardItem1 = '40753'
WHERE RewardItem1 = '49426'
  AND LogTitle LIKE '%Daily%';
-- Replace daily dungeon emblems from frost to Valor
-- Replace daily quests emblems from trumph to Valor
UPDATE quest_template
SET RewardItem1 = '40753'
WHERE LogTitle LIKE '%Proof of Demise:%';
UPDATE quest_template
SET RewardItem1 = '40753'
WHERE LogTitle LIKE '%Timear Foresees%';
-- Replace daily quests emblems from trumph to Valor
-- Disable NPC: Frozo the Renowned, VOA bosses
UPDATE creature
SET phaseMask = '16384' 
WHERE id1 IN (40160,38433,35013,35360,33993);
-- Disable NPC: Frozo the Renowned, VOA bosses
-- Smelt Titansteel 20 Hours cooldown
INSERT INTO acore_world.spell_cooldown_overrides (Id,RecoveryTime,CategoryRecoveryTime,StartRecoveryTime,StartRecoveryCategory,Comment) VALUES
	 (55208,72000000,0,0,0,'3.3.3 cooldown');
-- Smelt Titansteel 20 Hours cooldown
-- All 3.1-3.3 raids and dungeons disable
INSERT INTO disables (sourceType, entry, comment)
VALUES (2, 631, 'Disabled dungeon/raid 3.3'),
       (2, 632, 'Disabled dungeon/raid 3.3'),
       (2, 658, 'Disabled dungeon/raid 3.3'),
       (2, 724, 'Disabled dungeon/raid 3.3'),
	   (2, 249, 'Disabled dungeon/raid 3.2'),
	   (2, 649, 'Disabled dungeon/raid 3.2'),
	   (2, 603, 'Disabled dungeon/raid 3.1'),
       (2, 650, 'Disabled dungeon/raid 3.1'),
	   (3, 30, 'Disabled battleground 3.2'),
       (2, 668, 'Disabled dungeon/raid 3.3');
-- All 3.1-3.3 raids and dungeons disable
-- 3.2 Quests disable
INSERT INTO disables (sourceType, entry, comment)
VALUES (1, 14103, 'Disabled Quests 3.2'),
	   (1, 14199, 'Disabled Quests 3.2'),
	   (1, 14151, 'Disabled Quests 3.2');
-- 3.2 Quests disable
-- Delete all S8 Gears
DELETE FROM npc_vendor
WHERE item IN (
    SELECT entry
    FROM item_template
    WHERE name LIKE '%Wrathful Gladiator%'
);
-- Delete all S8 Gears
-- Delete all S7 Gears
DELETE FROM npc_vendor
WHERE item IN (
    SELECT entry
    FROM item_template
    WHERE name LIKE '%Relentless Gladiator%'
);
-- Delete all S7 Gears
-- Delete all S6 Gears
DELETE FROM npc_vendor
WHERE item IN (
    SELECT entry
    FROM item_template
    WHERE name LIKE '%Furious Gladiator%'
);
-- Delete all S6 Gears
-- Delete all 3.3 Rings
DELETE FROM npc_vendor
WHERE item IN (
    SELECT entry
    FROM item_template
    WHERE name LIKE '%Runed%%Kirin Tor%'
);
-- Delete all 3.3 Rings
-- Delete all 3.2 Rings
DELETE FROM npc_vendor
WHERE item IN (
    SELECT entry
    FROM item_template
    WHERE name LIKE '%Etched%%Kirin Tor%'
);
-- Delete all 3.2 Rings
-- Delete all 3.1 Rings
DELETE FROM npc_vendor
WHERE item IN (
    SELECT entry
    FROM item_template
    WHERE name LIKE '%Inscribed%%Kirin Tor%'
);
-- Delete all 3.1 Rings
-- Delete all 3.2 Transmute
DELETE FROM npc_trainer
WHERE SpellID IN (66658,66659,66660,66662,66663,66664);
-- Delete all 3.2 Transmute
-- Delete all Epic Gems of 3.2
DELETE FROM reference_loot_template
WHERE Item IN (36919,36922,36925,36928,36931,36934);
DELETE FROM item_loot_template
WHERE Item IN (36919,36922,36925,36928,36931,36934) OR Reference IN (10015,10008);
DELETE FROM npc_vendor
WHERE item IN (
    SELECT entry
    FROM item_template
    WHERE (
        name LIKE '%Cardinal Ruby%' OR
        name LIKE '%King''s Amber%' OR
        name LIKE '%Majestic Zircon%' OR
        name LIKE '%Dreadstone%' OR
        name LIKE '%Ametrine%' OR
        name LIKE '%Eye of Zul%'
    )
    AND entry > 30000
);
DELETE FROM item_template
WHERE (
    name LIKE '%Cardinal Ruby%' OR
    name LIKE '%King''s Amber%' OR
    name LIKE '%Majestic Zircon%' OR
    name LIKE '%Dreadstone%' OR
    name LIKE '%Ametrine%' OR
    name LIKE '%Eye of Zul%'
)
AND entry > 30000;


-- Delete all Epic Gems of 3.2
-- Disable prospecting Titanium Ore 3.2
DELETE FROM reference_loot_template
WHERE Entry IN (1002);
DELETE FROM prospecting_loot_template
WHERE Entry IN (36910);
-- Disable prospecting Titanium Ore 3.2
-- Loot emblem fix
UPDATE item_loot_template
SET Item = '40752'
WHERE Entry IN (43347);
UPDATE item_loot_template
SET Item = '40753'
WHERE Entry IN (43346);
UPDATE item_loot_template
SET Item = '45624'
WHERE Item = 47241 AND Comment LIKE '%Ulduar%';
UPDATE gameobject_loot_template
SET Item = '40752'
WHERE Entry IN (24589,24524,25192,26260,26094) AND Item = 47241;
UPDATE gameobject_loot_template
SET Item = '40753'
WHERE Entry IN (25193,26097) AND Item = 47241;
UPDATE gameobject_loot_template
SET Item = '45624'
WHERE Entry IN (26963,26967,27085,27086,26929,27061,26955,26956,27073,27074,26946,27068,26959,26960,26961,26962,27078,27079,27080,27081,26974,27030) AND Item = 47241;
UPDATE creature_loot_template
SET Item = '40752'
WHERE Entry IN (28860,31463,30529,15956,31125,31215,30397,30398,31506,31656,31367,31558,29932,31456,31507,31368,31533,15932,30774,16060,30510,15953,15931,31611,15936,31464,32313,31673,16061,31537,31465,15990,30540,31349,30788,31612,31381,31509,16011,31538,15952,31560,31384,31211,30530,31510,15954,31350,30532,16028,30748,31469,31212,15989,28860,31386,30807,31679,31370,30810,15928,31360,31362,31559,31536,31511,31512) AND Item = 47241;
UPDATE creature_loot_template
SET Item = '40753'
WHERE Entry IN (31311,29249,31722,29417,29955,29268,29373,29701,29940,30061,29718,29278,29615,29324,29991,31311,29448) AND Item = 47241;
UPDATE creature_loot_template
SET Item = '45624'
WHERE Entry IN (33515,34175,33993,33994,33271,33449,33118,33190,33186,33724,32927,33692,32867,33693,32857,33694,33293,33885,33288,33955) AND Item = 47241;
-- Loot emblem fix
