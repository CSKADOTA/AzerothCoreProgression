-- Disable weekly quests in 3.3
INSERT INTO disables (sourceType, entry, comment)
SELECT 1 AS sourceType, ID AS entry, 'Disabled dungeon/raid 3.3' AS comment
FROM quest_template 
WHERE RewardItem1 = '49426' 
  AND LogTitle NOT LIKE '%Daily%';
-- Disable weekly quests in 3.3
--Replace daily dungeon emblems from trumph to Heroism
UPDATE quest_template
SET RewardItem1 = '47241'
WHERE RewardItem1 = '45624'
  AND LogTitle LIKE '%Daily%';
--Replace daily dungeon emblems from trumph to Heroism
--Replace daily dungeon emblems from frost to Valor
UPDATE quest_template
SET RewardItem1 = '45624'
WHERE RewardItem1 = '40753'
  AND LogTitle LIKE '%Daily%';
--Replace daily dungeon emblems from frost to Valor
--Replace daily quests emblems from trumph to Valor
UPDATE quest_template
SET RewardItem1 = '47241'
WHERE LogTitle LIKE '%Proof%';
UPDATE quest_template
SET RewardItem1 = '47241'
WHERE LogTitle LIKE '%Timear Foresees%';
--Replace daily quests emblems from trumph to Valor
--Disable NPC: Frozo the Renowned, Toravon the Ice Watcher
UPDATE creature
SET phaseMask = '1' 
WHERE id1 IN (35013,35360);
--Disable NPC: Frozo the Renowned, Toravon the Ice Watcher
--All 3.1-3.3 raids and dungeons disable
DELETE FROM disables WHERE comment = 'Disabled dungeon/raid 3.2';
--All 3.1-3.3 raids and dungeons disable
--3.2 Quests disable
DELETE FROM disables WHERE comment = 'Disabled Quests 3.2';
--3.2 Quests disable
--Delete all S7 Gears
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33924,0,40790,0,0,2688,0),
	 (33924,0,40791,0,0,2688,0),
	 (33924,0,40792,0,0,2688,0),
	 (33924,0,40810,0,0,2689,0),
	 (33924,0,40811,0,0,2689,0),
	 (33924,0,40812,0,0,2689,0),
	 (33924,0,40829,0,0,2690,0),
	 (33924,0,40830,0,0,2690,0),
	 (33924,0,40831,0,0,2690,0),
	 (33924,0,40850,0,0,2691,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33924,0,40851,0,0,2691,0),
	 (33924,0,40852,0,0,2691,0),
	 (33924,0,40870,0,0,2692,0),
	 (33924,0,40871,0,0,2692,0),
	 (33924,0,40872,0,0,2692,0),
	 (33924,0,40910,0,0,2688,0),
	 (33924,0,40928,0,0,2689,0),
	 (33924,0,40934,0,0,2690,0),
	 (33924,0,40940,0,0,2691,0),
	 (33924,0,40964,0,0,2692,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33924,0,40994,0,0,2688,0),
	 (33924,0,40995,0,0,2688,0),
	 (33924,0,41002,0,0,2689,0),
	 (33924,0,41008,0,0,2689,0),
	 (33924,0,41014,0,0,2690,0),
	 (33924,0,41020,0,0,2690,0),
	 (33924,0,41028,0,0,2691,0),
	 (33924,0,41034,0,0,2691,0),
	 (33924,0,41039,0,0,2692,0),
	 (33924,0,41045,0,0,2692,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33924,0,41082,0,0,2688,0),
	 (33924,0,41088,0,0,2688,0),
	 (33924,0,41138,0,0,2689,0),
	 (33924,0,41144,0,0,2689,0),
	 (33924,0,41152,0,0,2690,0),
	 (33924,0,41158,0,0,2690,0),
	 (33924,0,41200,0,0,2691,0),
	 (33924,0,41206,0,0,2691,0),
	 (33924,0,41212,0,0,2692,0),
	 (33924,0,41218,0,0,2692,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33924,0,41276,0,0,2692,0),
	 (33924,0,41282,0,0,2692,0),
	 (33924,0,41288,0,0,2689,0),
	 (33924,0,41294,0,0,2689,0),
	 (33924,0,41299,0,0,2691,0),
	 (33924,0,41305,0,0,2691,0),
	 (33924,0,41311,0,0,2688,0),
	 (33924,0,41317,0,0,2688,0),
	 (33924,0,41322,0,0,2690,0),
	 (33924,0,41328,0,0,2690,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33924,0,41651,0,0,2688,0),
	 (33924,0,41656,0,0,2691,0),
	 (33924,0,41662,0,0,2688,0),
	 (33924,0,41668,0,0,2691,0),
	 (33924,0,41673,0,0,2690,0),
	 (33924,0,41679,0,0,2690,0),
	 (33924,0,41684,0,0,2692,0),
	 (33924,0,41716,0,0,2692,0),
	 (33924,0,41768,0,0,2689,0),
	 (33924,0,41774,0,0,2689,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33924,0,41855,0,0,2690,0),
	 (33924,0,41860,0,0,2688,0),
	 (33924,0,41865,0,0,2691,0),
	 (33924,0,41870,0,0,2692,0),
	 (33924,0,41875,0,0,2689,0),
	 (33924,0,41916,0,0,2690,0),
	 (33924,0,41922,0,0,2688,0),
	 (33924,0,41928,0,0,2691,0),
	 (33924,0,41935,0,0,2692,0),
	 (33924,0,41941,0,0,2689,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33924,0,41947,0,0,2690,0),
	 (33924,0,41954,0,0,2688,0),
	 (33924,0,41960,0,0,2691,0),
	 (33924,0,41966,0,0,2692,0),
	 (33924,0,41972,0,0,2689,0),
	 (33924,0,41994,0,0,2690,0),
	 (33924,0,41999,0,0,2688,0),
	 (33924,0,42006,0,0,2691,0),
	 (33924,0,42012,0,0,2692,0),
	 (33924,0,42018,0,0,2689,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33924,0,42210,0,0,2698,0),
	 (33924,0,42229,0,0,2698,0),
	 (33924,0,42234,0,0,2698,0),
	 (33924,0,42244,0,0,2698,0),
	 (33924,0,42250,0,0,2698,0),
	 (33924,0,42257,0,0,2698,0),
	 (33924,0,42262,0,0,2695,0),
	 (33924,0,42267,0,0,2698,0),
	 (33924,0,42272,0,0,2698,0),
	 (33924,0,42277,0,0,2698,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33924,0,42282,0,0,2698,0),
	 (33924,0,42287,0,0,2698,0),
	 (33924,0,42292,0,0,2698,0),
	 (33924,0,42319,0,0,2693,0),
	 (33924,0,42324,0,0,2693,0),
	 (33924,0,42329,0,0,2693,0),
	 (33924,0,42334,0,0,2693,0),
	 (33924,0,42348,0,0,2695,0),
	 (33924,0,42354,0,0,2695,0),
	 (33924,0,42366,0,0,2693,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33924,0,42386,0,0,2693,0),
	 (33924,0,42392,0,0,2693,0),
	 (33924,0,42483,0,0,2700,0),
	 (33924,0,42487,0,0,2693,0),
	 (33924,0,42492,0,0,2693,0),
	 (33924,0,42498,0,0,2693,0),
	 (33924,0,42504,0,0,2700,0),
	 (33924,0,42515,0,0,2700,0),
	 (33924,0,42521,0,0,2700,0),
	 (33924,0,42527,0,0,2701,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33924,0,42533,0,0,2701,0),
	 (33924,0,42539,0,0,2701,0),
	 (33924,0,42561,0,0,2701,0),
	 (33924,0,42566,0,0,2701,0),
	 (33924,0,42572,0,0,2701,0),
	 (33924,0,42580,0,0,2700,0),
	 (33924,0,42585,0,0,2700,0),
	 (33924,0,42591,0,0,2700,0),
	 (33924,0,42599,0,0,2700,0),
	 (33924,0,42604,0,0,2700,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33924,0,42609,0,0,2700,0),
	 (33924,0,42616,0,0,2700,0),
	 (33924,0,42622,0,0,2700,0),
	 (33924,0,42854,0,0,2700,0),
	 (33924,0,44423,0,0,2693,0),
	 (33924,0,44424,0,0,2693,0),
	 (33924,0,49185,0,0,2700,0),
	 (33924,0,49187,0,0,2701,0),
	 (33924,0,49189,0,0,2695,0),
	 (33927,0,40790,0,0,2688,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33927,0,40791,0,0,2688,0),
	 (33927,0,40792,0,0,2688,0),
	 (33927,0,40810,0,0,2689,0),
	 (33927,0,40811,0,0,2689,0),
	 (33927,0,40812,0,0,2689,0),
	 (33927,0,40829,0,0,2690,0),
	 (33927,0,40830,0,0,2690,0),
	 (33927,0,40831,0,0,2690,0),
	 (33927,0,40850,0,0,2691,0),
	 (33927,0,40851,0,0,2691,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33927,0,40852,0,0,2691,0),
	 (33927,0,40870,0,0,2692,0),
	 (33927,0,40871,0,0,2692,0),
	 (33927,0,40872,0,0,2692,0),
	 (33927,0,40910,0,0,2688,0),
	 (33927,0,40928,0,0,2689,0),
	 (33927,0,40934,0,0,2690,0),
	 (33927,0,40940,0,0,2691,0),
	 (33927,0,40964,0,0,2692,0),
	 (33927,0,40994,0,0,2688,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33927,0,40995,0,0,2688,0),
	 (33927,0,41002,0,0,2689,0),
	 (33927,0,41008,0,0,2689,0),
	 (33927,0,41014,0,0,2690,0),
	 (33927,0,41020,0,0,2690,0),
	 (33927,0,41028,0,0,2691,0),
	 (33927,0,41034,0,0,2691,0),
	 (33927,0,41039,0,0,2692,0),
	 (33927,0,41045,0,0,2692,0),
	 (33927,0,41082,0,0,2688,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33927,0,41088,0,0,2688,0),
	 (33927,0,41138,0,0,2689,0),
	 (33927,0,41144,0,0,2689,0),
	 (33927,0,41152,0,0,2690,0),
	 (33927,0,41158,0,0,2690,0),
	 (33927,0,41200,0,0,2691,0),
	 (33927,0,41206,0,0,2691,0),
	 (33927,0,41212,0,0,2692,0),
	 (33927,0,41218,0,0,2692,0),
	 (33927,0,41276,0,0,2692,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33927,0,41282,0,0,2692,0),
	 (33927,0,41288,0,0,2689,0),
	 (33927,0,41294,0,0,2689,0),
	 (33927,0,41299,0,0,2691,0),
	 (33927,0,41305,0,0,2691,0),
	 (33927,0,41311,0,0,2688,0),
	 (33927,0,41317,0,0,2688,0),
	 (33927,0,41322,0,0,2690,0),
	 (33927,0,41328,0,0,2690,0),
	 (33927,0,41651,0,0,2688,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33927,0,41656,0,0,2691,0),
	 (33927,0,41662,0,0,2688,0),
	 (33927,0,41668,0,0,2691,0),
	 (33927,0,41673,0,0,2690,0),
	 (33927,0,41679,0,0,2690,0),
	 (33927,0,41684,0,0,2692,0),
	 (33927,0,41716,0,0,2692,0),
	 (33927,0,41768,0,0,2689,0),
	 (33927,0,41774,0,0,2689,0),
	 (33927,0,41855,0,0,2690,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33927,0,41860,0,0,2688,0),
	 (33927,0,41865,0,0,2691,0),
	 (33927,0,41870,0,0,2692,0),
	 (33927,0,41875,0,0,2689,0),
	 (33927,0,41916,0,0,2690,0),
	 (33927,0,41922,0,0,2688,0),
	 (33927,0,41928,0,0,2691,0),
	 (33927,0,41935,0,0,2692,0),
	 (33927,0,41941,0,0,2689,0),
	 (33927,0,41947,0,0,2690,0);
--Delete all S7 Gears
--Delete all 3.2 Rings
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (32172,0,48954,0,0,2702,0),
	 (32172,0,48955,0,0,2703,0),
	 (32172,0,48956,0,0,2704,0),
	 (32172,0,48957,0,0,2705,0);
--Delete all 3.2 Rings
--Delete all 3.2 Transmute
INSERT INTO npc_trainer (ID,SpellID,MoneyCost,ReqSkillLine,ReqSkillRank,ReqLevel,ReqSpell) VALUES
	 (201003,66658,150000,171,450,0,0),
	 (201003,66660,150000,171,450,0,0),
	 (201003,66662,150000,171,450,0,0),
	 (201003,66663,150000,171,450,0,0),
	 (201003,66664,150000,171,450,0,0);
--Delete all 3.2 Transmute
--Delete all Epic Gems of 3.2
INSERT INTO reference_loot_template (Entry,Item,Reference,Chance,QuestRequired,LootMode,GroupId,MinCount,MaxCount,Comment) VALUES
	 (10008,36919,0,0.0,0,1,1,1,1,'Cardinal Ruby'),
	 (10008,36922,0,0.0,0,1,1,1,1,'King''s Amber'),
	 (10008,36925,0,0.0,0,1,1,1,1,'Majestic Zircon'),
	 (10008,36928,0,0.0,0,1,1,1,1,'Dreadstone'),
	 (10008,36931,0,0.0,0,1,1,1,1,'Ametrine'),
	 (10008,36934,0,0.0,0,1,1,1,1,'Eye of Zul'),
	 (10015,36919,0,0.0,0,1,1,1,1,'Cardinal Ruby'),
	 (10015,36922,0,0.0,0,1,1,1,1,'King''s Amber'),
	 (10015,36925,0,0.0,0,1,1,1,1,'Majestic Zircon'),
	 (10015,36928,0,0.0,0,1,1,1,1,'Dreadstone');
INSERT INTO reference_loot_template (Entry,Item,Reference,Chance,QuestRequired,LootMode,GroupId,MinCount,MaxCount,Comment) VALUES
	 (10015,36931,0,0.0,0,1,1,1,1,'Ametrine'),
	 (10015,36934,0,0.0,0,1,1,1,1,'Eye of Zul'),
	 (13005,36919,0,0.0,0,1,1,1,1,'Cardinal Ruby'),
	 (13005,36922,0,0.0,0,1,1,1,1,'King''s Amber'),
	 (13005,36925,0,0.0,0,1,1,1,1,'Majestic Zircon'),
	 (13005,36928,0,0.0,0,1,1,1,1,'Dreadstone'),
	 (13005,36931,0,0.0,0,1,1,1,1,'Ametrine'),
	 (13005,36934,0,0.0,0,1,1,1,1,'Eye of Zul');
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (28701,0,46897,0,0,2436,0),
	 (28701,0,46898,0,0,2436,0),
	 (28701,0,46899,0,0,2436,0),
	 (28701,0,46900,0,0,2436,0),
	 (28701,0,46901,0,0,2436,0),
	 (28701,0,46902,0,0,2436,0),
	 (28701,0,46903,0,0,2436,0),
	 (28701,0,46904,0,0,2436,0),
	 (28701,0,46905,0,0,2436,0),
	 (28701,0,46906,0,0,2436,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (28701,0,46907,0,0,2436,0),
	 (28701,0,46908,0,0,2436,0),
	 (28701,0,46909,0,0,2436,0),
	 (28701,0,46910,0,0,2436,0),
	 (28701,0,46911,0,0,2436,0),
	 (28701,0,46912,0,0,2436,0),
	 (28701,0,46913,0,0,2436,0),
	 (28701,0,46914,0,0,2436,0),
	 (28701,0,46915,0,0,2436,0),
	 (28701,0,46916,0,0,2436,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (28701,0,46917,0,0,2436,0),
	 (28701,0,46918,0,0,2436,0),
	 (28701,0,46919,0,0,2436,0),
	 (28701,0,46920,0,0,2436,0),
	 (28701,0,46921,0,0,2436,0),
	 (28701,0,46922,0,0,2436,0),
	 (28701,0,46923,0,0,2436,0),
	 (28701,0,46924,0,0,2436,0),
	 (28701,0,46925,0,0,2436,0),
	 (28701,0,46926,0,0,2436,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (28701,0,46927,0,0,2436,0),
	 (28701,0,46928,0,0,2436,0),
	 (28701,0,46929,0,0,2436,0),
	 (28701,0,46930,0,0,2436,0),
	 (28701,0,46931,0,0,2436,0),
	 (28701,0,46932,0,0,2436,0),
	 (28701,0,46933,0,0,2436,0),
	 (28701,0,46934,0,0,2436,0),
	 (28701,0,46935,0,0,2436,0),
	 (28701,0,46936,0,0,2436,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (28701,0,46937,0,0,2436,0),
	 (28701,0,46938,0,0,2436,0),
	 (28701,0,46939,0,0,2436,0),
	 (28701,0,46940,0,0,2436,0),
	 (28701,0,46941,0,0,2436,0),
	 (28701,0,46942,0,0,2436,0),
	 (28701,0,46943,0,0,2436,0),
	 (28701,0,46944,0,0,2436,0),
	 (28701,0,46945,0,0,2436,0),
	 (28701,0,46946,0,0,2436,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (28701,0,46947,0,0,2436,0),
	 (28701,0,46948,0,0,2436,0),
	 (28701,0,46949,0,0,2436,0),
	 (28701,0,46950,0,0,2436,0),
	 (28701,0,46951,0,0,2436,0),
	 (28701,0,46952,0,0,2436,0),
	 (28701,0,46953,0,0,2436,0),
	 (28701,0,46956,0,0,2436,0),
	 (28701,0,47007,0,0,2436,0),
	 (28701,0,47008,0,0,2436,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (28701,0,47010,0,0,2436,0),
	 (28701,0,47011,0,0,2436,0),
	 (28701,0,47012,0,0,2436,0),
	 (28701,0,47015,0,0,2436,0),
	 (28701,0,47016,0,0,2436,0),
	 (28701,0,47017,0,0,2436,0),
	 (28701,0,47018,0,0,2436,0),
	 (28701,0,47019,0,0,2436,0),
	 (28701,0,47020,0,0,2436,0),
	 (28701,0,47021,0,0,2436,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (28701,0,47022,0,0,2436,0),
	 (28701,0,47023,0,0,2436,0),
	 (31580,0,36919,0,0,2706,0),
	 (31580,0,36922,0,0,2706,0),
	 (31580,0,36925,0,0,2706,0),
	 (31580,0,36928,0,0,2484,0),
	 (31580,0,36931,0,0,2484,0),
	 (31580,0,36934,0,0,2484,0),
	 (31582,0,36919,0,0,2706,0),
	 (31582,0,36922,0,0,2706,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (31582,0,36925,0,0,2706,0),
	 (31582,0,36928,0,0,2484,0),
	 (31582,0,36931,0,0,2484,0),
	 (31582,0,36934,0,0,2484,0),
	 (32172,0,36919,0,0,2706,0),
	 (32172,0,36922,0,0,2706,0),
	 (32172,0,36925,0,0,2706,0),
	 (32172,0,36928,0,0,2484,0),
	 (32172,0,36931,0,0,2484,0),
	 (32172,0,36934,0,0,2484,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33637,0,46897,0,0,2436,0),
	 (33637,0,46898,0,0,2436,0),
	 (33637,0,46899,0,0,2436,0),
	 (33637,0,46900,0,0,2436,0),
	 (33637,0,46901,0,0,2436,0),
	 (33637,0,46902,0,0,2436,0),
	 (33637,0,46903,0,0,2436,0),
	 (33637,0,46904,0,0,2436,0),
	 (33637,0,46905,0,0,2436,0),
	 (33637,0,46906,0,0,2436,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33637,0,46907,0,0,2436,0),
	 (33637,0,46908,0,0,2436,0),
	 (33637,0,46909,0,0,2436,0),
	 (33637,0,46910,0,0,2436,0),
	 (33637,0,46911,0,0,2436,0),
	 (33637,0,46912,0,0,2436,0),
	 (33637,0,46913,0,0,2436,0),
	 (33637,0,46914,0,0,2436,0),
	 (33637,0,46915,0,0,2436,0),
	 (33637,0,46916,0,0,2436,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33637,0,46917,0,0,2436,0),
	 (33637,0,46918,0,0,2436,0),
	 (33637,0,46919,0,0,2436,0),
	 (33637,0,46920,0,0,2436,0),
	 (33637,0,46921,0,0,2436,0),
	 (33637,0,46922,0,0,2436,0),
	 (33637,0,46923,0,0,2436,0),
	 (33637,0,46924,0,0,2436,0),
	 (33637,0,46925,0,0,2436,0),
	 (33637,0,46926,0,0,2436,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33637,0,46927,0,0,2436,0),
	 (33637,0,46928,0,0,2436,0),
	 (33637,0,46929,0,0,2436,0),
	 (33637,0,46930,0,0,2436,0),
	 (33637,0,46931,0,0,2436,0),
	 (33637,0,46932,0,0,2436,0),
	 (33637,0,46933,0,0,2436,0),
	 (33637,0,46934,0,0,2436,0),
	 (33637,0,46935,0,0,2436,0),
	 (33637,0,46936,0,0,2436,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33637,0,46937,0,0,2436,0),
	 (33637,0,46938,0,0,2436,0),
	 (33637,0,46939,0,0,2436,0),
	 (33637,0,46940,0,0,2436,0),
	 (33637,0,46941,0,0,2436,0),
	 (33637,0,46942,0,0,2436,0),
	 (33637,0,46943,0,0,2436,0),
	 (33637,0,46944,0,0,2436,0),
	 (33637,0,46945,0,0,2436,0),
	 (33637,0,46946,0,0,2436,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33637,0,46947,0,0,2436,0),
	 (33637,0,46948,0,0,2436,0),
	 (33637,0,46949,0,0,2436,0),
	 (33637,0,46950,0,0,2436,0),
	 (33637,0,46951,0,0,2436,0),
	 (33637,0,46952,0,0,2436,0),
	 (33637,0,46953,0,0,2436,0),
	 (33637,0,46956,0,0,2436,0),
	 (33637,0,47007,0,0,2436,0),
	 (33637,0,47008,0,0,2436,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33637,0,47010,0,0,2436,0),
	 (33637,0,47011,0,0,2436,0),
	 (33637,0,47012,0,0,2436,0),
	 (33637,0,47015,0,0,2436,0),
	 (33637,0,47016,0,0,2436,0),
	 (33637,0,47017,0,0,2436,0),
	 (33637,0,47018,0,0,2436,0),
	 (33637,0,47019,0,0,2436,0),
	 (33637,0,47020,0,0,2436,0),
	 (33637,0,47021,0,0,2436,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33637,0,47022,0,0,2436,0),
	 (33637,0,47023,0,0,2436,0),
	 (33680,0,46897,0,0,2436,0),
	 (33680,0,46898,0,0,2436,0),
	 (33680,0,46899,0,0,2436,0),
	 (33680,0,46900,0,0,2436,0),
	 (33680,0,46901,0,0,2436,0),
	 (33680,0,46902,0,0,2436,0),
	 (33680,0,46903,0,0,2436,0),
	 (33680,0,46904,0,0,2436,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33680,0,46905,0,0,2436,0),
	 (33680,0,46906,0,0,2436,0),
	 (33680,0,46907,0,0,2436,0),
	 (33680,0,46908,0,0,2436,0),
	 (33680,0,46909,0,0,2436,0),
	 (33680,0,46910,0,0,2436,0),
	 (33680,0,46911,0,0,2436,0),
	 (33680,0,46912,0,0,2436,0),
	 (33680,0,46913,0,0,2436,0),
	 (33680,0,46914,0,0,2436,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33680,0,46915,0,0,2436,0),
	 (33680,0,46916,0,0,2436,0),
	 (33680,0,46917,0,0,2436,0),
	 (33680,0,46918,0,0,2436,0),
	 (33680,0,46919,0,0,2436,0),
	 (33680,0,46920,0,0,2436,0),
	 (33680,0,46921,0,0,2436,0),
	 (33680,0,46922,0,0,2436,0),
	 (33680,0,46923,0,0,2436,0),
	 (33680,0,46924,0,0,2436,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33680,0,46925,0,0,2436,0),
	 (33680,0,46926,0,0,2436,0),
	 (33680,0,46927,0,0,2436,0),
	 (33680,0,46928,0,0,2436,0),
	 (33680,0,46929,0,0,2436,0),
	 (33680,0,46930,0,0,2436,0),
	 (33680,0,46931,0,0,2436,0),
	 (33680,0,46932,0,0,2436,0),
	 (33680,0,46933,0,0,2436,0),
	 (33680,0,46934,0,0,2436,0);
INSERT INTO item_template (entry,class,subclass,SoundOverrideSubclass,name,displayid,Quality,Flags,FlagsExtra,BuyCount,BuyPrice,SellPrice,InventoryType,AllowableClass,AllowableRace,ItemLevel,RequiredLevel,RequiredSkill,RequiredSkillRank,requiredspell,requiredhonorrank,RequiredCityRank,RequiredReputationFaction,RequiredReputationRank,maxcount,stackable,ContainerSlots,StatsCount,stat_type1,stat_value1,stat_type2,stat_value2,stat_type3,stat_value3,stat_type4,stat_value4,stat_type5,stat_value5,stat_type6,stat_value6,stat_type7,stat_value7,stat_type8,stat_value8,stat_type9,stat_value9,stat_type10,stat_value10,ScalingStatDistribution,ScalingStatValue,dmg_min1,dmg_max1,dmg_type1,dmg_min2,dmg_max2,dmg_type2,armor,holy_res,fire_res,nature_res,frost_res,shadow_res,arcane_res,delay,ammo_type,RangedModRange,spellid_1,spelltrigger_1,spellcharges_1,spellppmRate_1,spellcooldown_1,spellcategory_1,spellcategorycooldown_1,spellid_2,spelltrigger_2,spellcharges_2,spellppmRate_2,spellcooldown_2,spellcategory_2,spellcategorycooldown_2,spellid_3,spelltrigger_3,spellcharges_3,spellppmRate_3,spellcooldown_3,spellcategory_3,spellcategorycooldown_3,spellid_4,spelltrigger_4,spellcharges_4,spellppmRate_4,spellcooldown_4,spellcategory_4,spellcategorycooldown_4,spellid_5,spelltrigger_5,spellcharges_5,spellppmRate_5,spellcooldown_5,spellcategory_5,spellcategorycooldown_5,bonding,description,PageText,LanguageID,PageMaterial,startquest,lockid,Material,sheath,RandomProperty,RandomSuffix,block,itemset,MaxDurability,area,`Map`,BagFamily,TotemCategory,socketColor_1,socketContent_1,socketColor_2,socketContent_2,socketColor_3,socketContent_3,socketBonus,GemProperties,RequiredDisenchantSkill,ArmorDamageModifier,duration,ItemLimitCategory,HolidayId,ScriptName,DisenchantID,FoodType,minMoneyLoot,maxMoneyLoot,flagsCustom,VerifiedBuild) VALUES
	 (36919,3,0,-1,'Cardinal Ruby',61268,4,0,0,1,0,50000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (36922,3,2,-1,'King''s Amber',60328,4,0,0,1,0,50000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (36925,3,1,-1,'Majestic Zircon',60331,4,0,0,1,0,50000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (36928,3,3,-1,'Dreadstone',60329,4,0,0,1,0,50000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (36931,3,5,-1,'Ametrine',60327,4,0,0,1,0,50000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (36934,3,4,-1,'Eye of Zul',60330,4,0,0,1,0,50000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (40111,3,0,-1,'Bold Cardinal Ruby',58601,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1287,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40112,3,0,-1,'Delicate Cardinal Ruby',58601,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1288,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40113,3,0,-1,'Runed Cardinal Ruby',58601,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1289,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40114,3,0,-1,'Bright Cardinal Ruby',58601,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1290,-1,0.0,0,0,0,'',0,0,0,0,0,12340);
INSERT INTO item_template (entry,class,subclass,SoundOverrideSubclass,name,displayid,Quality,Flags,FlagsExtra,BuyCount,BuyPrice,SellPrice,InventoryType,AllowableClass,AllowableRace,ItemLevel,RequiredLevel,RequiredSkill,RequiredSkillRank,requiredspell,requiredhonorrank,RequiredCityRank,RequiredReputationFaction,RequiredReputationRank,maxcount,stackable,ContainerSlots,StatsCount,stat_type1,stat_value1,stat_type2,stat_value2,stat_type3,stat_value3,stat_type4,stat_value4,stat_type5,stat_value5,stat_type6,stat_value6,stat_type7,stat_value7,stat_type8,stat_value8,stat_type9,stat_value9,stat_type10,stat_value10,ScalingStatDistribution,ScalingStatValue,dmg_min1,dmg_max1,dmg_type1,dmg_min2,dmg_max2,dmg_type2,armor,holy_res,fire_res,nature_res,frost_res,shadow_res,arcane_res,delay,ammo_type,RangedModRange,spellid_1,spelltrigger_1,spellcharges_1,spellppmRate_1,spellcooldown_1,spellcategory_1,spellcategorycooldown_1,spellid_2,spelltrigger_2,spellcharges_2,spellppmRate_2,spellcooldown_2,spellcategory_2,spellcategorycooldown_2,spellid_3,spelltrigger_3,spellcharges_3,spellppmRate_3,spellcooldown_3,spellcategory_3,spellcategorycooldown_3,spellid_4,spelltrigger_4,spellcharges_4,spellppmRate_4,spellcooldown_4,spellcategory_4,spellcategorycooldown_4,spellid_5,spelltrigger_5,spellcharges_5,spellppmRate_5,spellcooldown_5,spellcategory_5,spellcategorycooldown_5,bonding,description,PageText,LanguageID,PageMaterial,startquest,lockid,Material,sheath,RandomProperty,RandomSuffix,block,itemset,MaxDurability,area,`Map`,BagFamily,TotemCategory,socketColor_1,socketContent_1,socketColor_2,socketContent_2,socketColor_3,socketContent_3,socketBonus,GemProperties,RequiredDisenchantSkill,ArmorDamageModifier,duration,ItemLimitCategory,HolidayId,ScriptName,DisenchantID,FoodType,minMoneyLoot,maxMoneyLoot,flagsCustom,VerifiedBuild) VALUES
	 (40115,3,0,-1,'Subtle Cardinal Ruby',58601,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1291,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40116,3,0,-1,'Flashing Cardinal Ruby',58601,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1292,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40117,3,0,-1,'Fractured Cardinal Ruby',58601,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1293,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40118,3,0,-1,'Precise Cardinal Ruby',58601,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1294,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40119,3,1,-1,'Solid Majestic Zircon',56636,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1295,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40120,3,1,-1,'Sparkling Majestic Zircon',56636,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1296,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40121,3,1,-1,'Lustrous Majestic Zircon',56636,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1297,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40122,3,1,-1,'Stormy Majestic Zircon',56636,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1298,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40123,3,2,-1,'Brilliant King''s Amber',58714,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1299,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40124,3,2,-1,'Smooth King''s Amber',58714,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1300,-1,0.0,0,0,0,'',0,0,0,0,0,12340);
INSERT INTO item_template (entry,class,subclass,SoundOverrideSubclass,name,displayid,Quality,Flags,FlagsExtra,BuyCount,BuyPrice,SellPrice,InventoryType,AllowableClass,AllowableRace,ItemLevel,RequiredLevel,RequiredSkill,RequiredSkillRank,requiredspell,requiredhonorrank,RequiredCityRank,RequiredReputationFaction,RequiredReputationRank,maxcount,stackable,ContainerSlots,StatsCount,stat_type1,stat_value1,stat_type2,stat_value2,stat_type3,stat_value3,stat_type4,stat_value4,stat_type5,stat_value5,stat_type6,stat_value6,stat_type7,stat_value7,stat_type8,stat_value8,stat_type9,stat_value9,stat_type10,stat_value10,ScalingStatDistribution,ScalingStatValue,dmg_min1,dmg_max1,dmg_type1,dmg_min2,dmg_max2,dmg_type2,armor,holy_res,fire_res,nature_res,frost_res,shadow_res,arcane_res,delay,ammo_type,RangedModRange,spellid_1,spelltrigger_1,spellcharges_1,spellppmRate_1,spellcooldown_1,spellcategory_1,spellcategorycooldown_1,spellid_2,spelltrigger_2,spellcharges_2,spellppmRate_2,spellcooldown_2,spellcategory_2,spellcategorycooldown_2,spellid_3,spelltrigger_3,spellcharges_3,spellppmRate_3,spellcooldown_3,spellcategory_3,spellcategorycooldown_3,spellid_4,spelltrigger_4,spellcharges_4,spellppmRate_4,spellcooldown_4,spellcategory_4,spellcategorycooldown_4,spellid_5,spelltrigger_5,spellcharges_5,spellppmRate_5,spellcooldown_5,spellcategory_5,spellcategorycooldown_5,bonding,description,PageText,LanguageID,PageMaterial,startquest,lockid,Material,sheath,RandomProperty,RandomSuffix,block,itemset,MaxDurability,area,`Map`,BagFamily,TotemCategory,socketColor_1,socketContent_1,socketColor_2,socketContent_2,socketColor_3,socketContent_3,socketBonus,GemProperties,RequiredDisenchantSkill,ArmorDamageModifier,duration,ItemLimitCategory,HolidayId,ScriptName,DisenchantID,FoodType,minMoneyLoot,maxMoneyLoot,flagsCustom,VerifiedBuild) VALUES
	 (40125,3,2,-1,'Rigid King''s Amber',58714,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1301,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40126,3,2,-1,'Thick King''s Amber',58714,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1302,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40127,3,2,-1,'Mystic King''s Amber',58714,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1303,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40128,3,2,-1,'Quick King''s Amber',58714,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1304,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40129,3,3,-1,'Sovereign Dreadstone',60326,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1305,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40130,3,3,-1,'Shifting Dreadstone',60326,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1306,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40131,3,3,-1,'Tenuous Dreadstone',60326,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1307,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40132,3,3,-1,'Glowing Dreadstone',60326,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1308,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40133,3,3,-1,'Purified Dreadstone',60326,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1309,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40134,3,3,-1,'Royal Dreadstone',60326,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1310,-1,0.0,0,0,0,'',0,0,0,0,0,12340);
INSERT INTO item_template (entry,class,subclass,SoundOverrideSubclass,name,displayid,Quality,Flags,FlagsExtra,BuyCount,BuyPrice,SellPrice,InventoryType,AllowableClass,AllowableRace,ItemLevel,RequiredLevel,RequiredSkill,RequiredSkillRank,requiredspell,requiredhonorrank,RequiredCityRank,RequiredReputationFaction,RequiredReputationRank,maxcount,stackable,ContainerSlots,StatsCount,stat_type1,stat_value1,stat_type2,stat_value2,stat_type3,stat_value3,stat_type4,stat_value4,stat_type5,stat_value5,stat_type6,stat_value6,stat_type7,stat_value7,stat_type8,stat_value8,stat_type9,stat_value9,stat_type10,stat_value10,ScalingStatDistribution,ScalingStatValue,dmg_min1,dmg_max1,dmg_type1,dmg_min2,dmg_max2,dmg_type2,armor,holy_res,fire_res,nature_res,frost_res,shadow_res,arcane_res,delay,ammo_type,RangedModRange,spellid_1,spelltrigger_1,spellcharges_1,spellppmRate_1,spellcooldown_1,spellcategory_1,spellcategorycooldown_1,spellid_2,spelltrigger_2,spellcharges_2,spellppmRate_2,spellcooldown_2,spellcategory_2,spellcategorycooldown_2,spellid_3,spelltrigger_3,spellcharges_3,spellppmRate_3,spellcooldown_3,spellcategory_3,spellcategorycooldown_3,spellid_4,spelltrigger_4,spellcharges_4,spellppmRate_4,spellcooldown_4,spellcategory_4,spellcategorycooldown_4,spellid_5,spelltrigger_5,spellcharges_5,spellppmRate_5,spellcooldown_5,spellcategory_5,spellcategorycooldown_5,bonding,description,PageText,LanguageID,PageMaterial,startquest,lockid,Material,sheath,RandomProperty,RandomSuffix,block,itemset,MaxDurability,area,`Map`,BagFamily,TotemCategory,socketColor_1,socketContent_1,socketColor_2,socketContent_2,socketColor_3,socketContent_3,socketBonus,GemProperties,RequiredDisenchantSkill,ArmorDamageModifier,duration,ItemLimitCategory,HolidayId,ScriptName,DisenchantID,FoodType,minMoneyLoot,maxMoneyLoot,flagsCustom,VerifiedBuild) VALUES
	 (40135,3,3,-1,'Mysterious Dreadstone',60326,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1311,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40136,3,3,-1,'Balanced Dreadstone',60326,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1312,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40137,3,3,-1,'Infused Dreadstone',60326,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1313,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40138,3,3,-1,'Regal Dreadstone',60326,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1314,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40139,3,3,-1,'Defender''s Dreadstone',60326,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1315,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40140,3,3,-1,'Puissant Dreadstone',60326,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1316,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40141,3,3,-1,'Guardian''s Dreadstone',60326,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1317,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40142,3,5,-1,'Inscribed Ametrine',60324,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1318,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40143,3,5,-1,'Etched Ametrine',60324,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1319,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40144,3,5,-1,'Champion''s Ametrine',60324,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1320,-1,0.0,0,0,0,'',0,0,0,0,0,12340);
INSERT INTO item_template (entry,class,subclass,SoundOverrideSubclass,name,displayid,Quality,Flags,FlagsExtra,BuyCount,BuyPrice,SellPrice,InventoryType,AllowableClass,AllowableRace,ItemLevel,RequiredLevel,RequiredSkill,RequiredSkillRank,requiredspell,requiredhonorrank,RequiredCityRank,RequiredReputationFaction,RequiredReputationRank,maxcount,stackable,ContainerSlots,StatsCount,stat_type1,stat_value1,stat_type2,stat_value2,stat_type3,stat_value3,stat_type4,stat_value4,stat_type5,stat_value5,stat_type6,stat_value6,stat_type7,stat_value7,stat_type8,stat_value8,stat_type9,stat_value9,stat_type10,stat_value10,ScalingStatDistribution,ScalingStatValue,dmg_min1,dmg_max1,dmg_type1,dmg_min2,dmg_max2,dmg_type2,armor,holy_res,fire_res,nature_res,frost_res,shadow_res,arcane_res,delay,ammo_type,RangedModRange,spellid_1,spelltrigger_1,spellcharges_1,spellppmRate_1,spellcooldown_1,spellcategory_1,spellcategorycooldown_1,spellid_2,spelltrigger_2,spellcharges_2,spellppmRate_2,spellcooldown_2,spellcategory_2,spellcategorycooldown_2,spellid_3,spelltrigger_3,spellcharges_3,spellppmRate_3,spellcooldown_3,spellcategory_3,spellcategorycooldown_3,spellid_4,spelltrigger_4,spellcharges_4,spellppmRate_4,spellcooldown_4,spellcategory_4,spellcategorycooldown_4,spellid_5,spelltrigger_5,spellcharges_5,spellppmRate_5,spellcooldown_5,spellcategory_5,spellcategorycooldown_5,bonding,description,PageText,LanguageID,PageMaterial,startquest,lockid,Material,sheath,RandomProperty,RandomSuffix,block,itemset,MaxDurability,area,`Map`,BagFamily,TotemCategory,socketColor_1,socketContent_1,socketColor_2,socketContent_2,socketColor_3,socketContent_3,socketBonus,GemProperties,RequiredDisenchantSkill,ArmorDamageModifier,duration,ItemLimitCategory,HolidayId,ScriptName,DisenchantID,FoodType,minMoneyLoot,maxMoneyLoot,flagsCustom,VerifiedBuild) VALUES
	 (40145,3,5,-1,'Resplendent Ametrine',60324,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1321,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40146,3,5,-1,'Fierce Ametrine',60324,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1322,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40147,3,5,-1,'Deadly Ametrine',60324,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1323,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40148,3,5,-1,'Glinting Ametrine',60324,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1324,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40149,3,5,-1,'Lucent Ametrine',60324,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1325,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40150,3,5,-1,'Deft Ametrine',60324,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1326,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40151,3,5,-1,'Luminous Ametrine',60324,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1327,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40152,3,5,-1,'Potent Ametrine',60324,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1328,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40153,3,5,-1,'Veiled Ametrine',60324,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1329,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40154,3,5,-1,'Durable Ametrine',60324,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1330,-1,0.0,0,0,0,'',0,0,0,0,0,12340);
INSERT INTO item_template (entry,class,subclass,SoundOverrideSubclass,name,displayid,Quality,Flags,FlagsExtra,BuyCount,BuyPrice,SellPrice,InventoryType,AllowableClass,AllowableRace,ItemLevel,RequiredLevel,RequiredSkill,RequiredSkillRank,requiredspell,requiredhonorrank,RequiredCityRank,RequiredReputationFaction,RequiredReputationRank,maxcount,stackable,ContainerSlots,StatsCount,stat_type1,stat_value1,stat_type2,stat_value2,stat_type3,stat_value3,stat_type4,stat_value4,stat_type5,stat_value5,stat_type6,stat_value6,stat_type7,stat_value7,stat_type8,stat_value8,stat_type9,stat_value9,stat_type10,stat_value10,ScalingStatDistribution,ScalingStatValue,dmg_min1,dmg_max1,dmg_type1,dmg_min2,dmg_max2,dmg_type2,armor,holy_res,fire_res,nature_res,frost_res,shadow_res,arcane_res,delay,ammo_type,RangedModRange,spellid_1,spelltrigger_1,spellcharges_1,spellppmRate_1,spellcooldown_1,spellcategory_1,spellcategorycooldown_1,spellid_2,spelltrigger_2,spellcharges_2,spellppmRate_2,spellcooldown_2,spellcategory_2,spellcategorycooldown_2,spellid_3,spelltrigger_3,spellcharges_3,spellppmRate_3,spellcooldown_3,spellcategory_3,spellcategorycooldown_3,spellid_4,spelltrigger_4,spellcharges_4,spellppmRate_4,spellcooldown_4,spellcategory_4,spellcategorycooldown_4,spellid_5,spelltrigger_5,spellcharges_5,spellppmRate_5,spellcooldown_5,spellcategory_5,spellcategorycooldown_5,bonding,description,PageText,LanguageID,PageMaterial,startquest,lockid,Material,sheath,RandomProperty,RandomSuffix,block,itemset,MaxDurability,area,`Map`,BagFamily,TotemCategory,socketColor_1,socketContent_1,socketColor_2,socketContent_2,socketColor_3,socketContent_3,socketBonus,GemProperties,RequiredDisenchantSkill,ArmorDamageModifier,duration,ItemLimitCategory,HolidayId,ScriptName,DisenchantID,FoodType,minMoneyLoot,maxMoneyLoot,flagsCustom,VerifiedBuild) VALUES
	 (40155,3,5,-1,'Reckless Ametrine',60324,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1331,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40156,3,5,-1,'Wicked Ametrine',60324,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1332,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40157,3,5,-1,'Pristine Ametrine',60324,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1333,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40158,3,5,-1,'Empowered Ametrine',60324,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1334,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40159,3,5,-1,'Stark Ametrine',60324,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1335,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40160,3,5,-1,'Stalwart Ametrine',60324,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1336,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40161,3,5,-1,'Glimmering Ametrine',60324,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1337,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40162,3,5,-1,'Accurate Ametrine',60324,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1338,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40163,3,5,-1,'Resolute Ametrine',60324,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Red or Yellow Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1339,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40164,3,4,-1,'Timeless Eye of Zul',60325,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1340,-1,0.0,0,0,0,'',0,0,0,0,0,12340);
INSERT INTO item_template (entry,class,subclass,SoundOverrideSubclass,name,displayid,Quality,Flags,FlagsExtra,BuyCount,BuyPrice,SellPrice,InventoryType,AllowableClass,AllowableRace,ItemLevel,RequiredLevel,RequiredSkill,RequiredSkillRank,requiredspell,requiredhonorrank,RequiredCityRank,RequiredReputationFaction,RequiredReputationRank,maxcount,stackable,ContainerSlots,StatsCount,stat_type1,stat_value1,stat_type2,stat_value2,stat_type3,stat_value3,stat_type4,stat_value4,stat_type5,stat_value5,stat_type6,stat_value6,stat_type7,stat_value7,stat_type8,stat_value8,stat_type9,stat_value9,stat_type10,stat_value10,ScalingStatDistribution,ScalingStatValue,dmg_min1,dmg_max1,dmg_type1,dmg_min2,dmg_max2,dmg_type2,armor,holy_res,fire_res,nature_res,frost_res,shadow_res,arcane_res,delay,ammo_type,RangedModRange,spellid_1,spelltrigger_1,spellcharges_1,spellppmRate_1,spellcooldown_1,spellcategory_1,spellcategorycooldown_1,spellid_2,spelltrigger_2,spellcharges_2,spellppmRate_2,spellcooldown_2,spellcategory_2,spellcategorycooldown_2,spellid_3,spelltrigger_3,spellcharges_3,spellppmRate_3,spellcooldown_3,spellcategory_3,spellcategorycooldown_3,spellid_4,spelltrigger_4,spellcharges_4,spellppmRate_4,spellcooldown_4,spellcategory_4,spellcategorycooldown_4,spellid_5,spelltrigger_5,spellcharges_5,spellppmRate_5,spellcooldown_5,spellcategory_5,spellcategorycooldown_5,bonding,description,PageText,LanguageID,PageMaterial,startquest,lockid,Material,sheath,RandomProperty,RandomSuffix,block,itemset,MaxDurability,area,`Map`,BagFamily,TotemCategory,socketColor_1,socketContent_1,socketColor_2,socketContent_2,socketColor_3,socketContent_3,socketBonus,GemProperties,RequiredDisenchantSkill,ArmorDamageModifier,duration,ItemLimitCategory,HolidayId,ScriptName,DisenchantID,FoodType,minMoneyLoot,maxMoneyLoot,flagsCustom,VerifiedBuild) VALUES
	 (40165,3,4,-1,'Jagged Eye of Zul',60325,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1341,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40166,3,4,-1,'Vivid Eye of Zul',60325,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1342,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40167,3,4,-1,'Enduring Eye of Zul',60325,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1343,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40168,3,4,-1,'Steady Eye of Zul',60325,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1344,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40169,3,4,-1,'Forceful Eye of Zul',60325,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1345,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40170,3,4,-1,'Seer''s Eye of Zul',60325,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1346,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40171,3,4,-1,'Misty Eye of Zul',60325,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1347,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40172,3,4,-1,'Shining Eye of Zul',60325,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1348,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40173,3,4,-1,'Turbid Eye of Zul',60325,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1349,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40174,3,4,-1,'Intricate Eye of Zul',60325,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1350,-1,0.0,0,0,0,'',0,0,0,0,0,12340);
INSERT INTO item_template (entry,class,subclass,SoundOverrideSubclass,name,displayid,Quality,Flags,FlagsExtra,BuyCount,BuyPrice,SellPrice,InventoryType,AllowableClass,AllowableRace,ItemLevel,RequiredLevel,RequiredSkill,RequiredSkillRank,requiredspell,requiredhonorrank,RequiredCityRank,RequiredReputationFaction,RequiredReputationRank,maxcount,stackable,ContainerSlots,StatsCount,stat_type1,stat_value1,stat_type2,stat_value2,stat_type3,stat_value3,stat_type4,stat_value4,stat_type5,stat_value5,stat_type6,stat_value6,stat_type7,stat_value7,stat_type8,stat_value8,stat_type9,stat_value9,stat_type10,stat_value10,ScalingStatDistribution,ScalingStatValue,dmg_min1,dmg_max1,dmg_type1,dmg_min2,dmg_max2,dmg_type2,armor,holy_res,fire_res,nature_res,frost_res,shadow_res,arcane_res,delay,ammo_type,RangedModRange,spellid_1,spelltrigger_1,spellcharges_1,spellppmRate_1,spellcooldown_1,spellcategory_1,spellcategorycooldown_1,spellid_2,spelltrigger_2,spellcharges_2,spellppmRate_2,spellcooldown_2,spellcategory_2,spellcategorycooldown_2,spellid_3,spelltrigger_3,spellcharges_3,spellppmRate_3,spellcooldown_3,spellcategory_3,spellcategorycooldown_3,spellid_4,spelltrigger_4,spellcharges_4,spellppmRate_4,spellcooldown_4,spellcategory_4,spellcategorycooldown_4,spellid_5,spelltrigger_5,spellcharges_5,spellppmRate_5,spellcooldown_5,spellcategory_5,spellcategorycooldown_5,bonding,description,PageText,LanguageID,PageMaterial,startquest,lockid,Material,sheath,RandomProperty,RandomSuffix,block,itemset,MaxDurability,area,`Map`,BagFamily,TotemCategory,socketColor_1,socketContent_1,socketColor_2,socketContent_2,socketColor_3,socketContent_3,socketBonus,GemProperties,RequiredDisenchantSkill,ArmorDamageModifier,duration,ItemLimitCategory,HolidayId,ScriptName,DisenchantID,FoodType,minMoneyLoot,maxMoneyLoot,flagsCustom,VerifiedBuild) VALUES
	 (40175,3,4,-1,'Dazzling Eye of Zul',60325,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1351,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40176,3,4,-1,'Sundered Eye of Zul',60325,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1352,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40177,3,4,-1,'Lambent Eye of Zul',60325,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1353,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40178,3,4,-1,'Opaque Eye of Zul',60325,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1354,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40179,3,4,-1,'Energized Eye of Zul',60325,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1355,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40180,3,4,-1,'Radiant Eye of Zul',60325,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1356,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40181,3,4,-1,'Tense Eye of Zul',60325,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1357,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (40182,3,4,-1,'Shattered Eye of Zul',60325,4,0,0,1,360000,90000,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,'Matches a Yellow or Blue Socket.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,1358,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (46897,9,10,-1,'Design: Enduring Eye of Zul',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66338,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut an Enduring Eye of Zul.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46898,9,10,-1,'Design: Steady Eye of Zul',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66428,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Steady Eye of Zul.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314);
INSERT INTO item_template (entry,class,subclass,SoundOverrideSubclass,name,displayid,Quality,Flags,FlagsExtra,BuyCount,BuyPrice,SellPrice,InventoryType,AllowableClass,AllowableRace,ItemLevel,RequiredLevel,RequiredSkill,RequiredSkillRank,requiredspell,requiredhonorrank,RequiredCityRank,RequiredReputationFaction,RequiredReputationRank,maxcount,stackable,ContainerSlots,StatsCount,stat_type1,stat_value1,stat_type2,stat_value2,stat_type3,stat_value3,stat_type4,stat_value4,stat_type5,stat_value5,stat_type6,stat_value6,stat_type7,stat_value7,stat_type8,stat_value8,stat_type9,stat_value9,stat_type10,stat_value10,ScalingStatDistribution,ScalingStatValue,dmg_min1,dmg_max1,dmg_type1,dmg_min2,dmg_max2,dmg_type2,armor,holy_res,fire_res,nature_res,frost_res,shadow_res,arcane_res,delay,ammo_type,RangedModRange,spellid_1,spelltrigger_1,spellcharges_1,spellppmRate_1,spellcooldown_1,spellcategory_1,spellcategorycooldown_1,spellid_2,spelltrigger_2,spellcharges_2,spellppmRate_2,spellcooldown_2,spellcategory_2,spellcategorycooldown_2,spellid_3,spelltrigger_3,spellcharges_3,spellppmRate_3,spellcooldown_3,spellcategory_3,spellcategorycooldown_3,spellid_4,spelltrigger_4,spellcharges_4,spellppmRate_4,spellcooldown_4,spellcategory_4,spellcategorycooldown_4,spellid_5,spelltrigger_5,spellcharges_5,spellppmRate_5,spellcooldown_5,spellcategory_5,spellcategorycooldown_5,bonding,description,PageText,LanguageID,PageMaterial,startquest,lockid,Material,sheath,RandomProperty,RandomSuffix,block,itemset,MaxDurability,area,`Map`,BagFamily,TotemCategory,socketColor_1,socketContent_1,socketColor_2,socketContent_2,socketColor_3,socketContent_3,socketBonus,GemProperties,RequiredDisenchantSkill,ArmorDamageModifier,duration,ItemLimitCategory,HolidayId,ScriptName,DisenchantID,FoodType,minMoneyLoot,maxMoneyLoot,flagsCustom,VerifiedBuild) VALUES
	 (46899,9,10,-1,'Design: Vivid Eye of Zul',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66429,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Vivid Eye of Zul.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46900,9,10,-1,'Design: Dazzling Eye of Zul',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66430,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Dazzling Eye of Zul.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (46901,9,10,-1,'Design: Jagged Eye of Zul',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66431,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Jagged Eye of Zul.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46902,9,10,-1,'Design: Timeless Eye of Zul',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66432,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Timeless Eye of Zul.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46903,9,10,-1,'Design: Seer''s Eye of Zul',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66433,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Seer''s Eye of Zul.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (46904,9,10,-1,'Design: Forceful Eye of Zul',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66434,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Forceful Eye of Zul.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46905,9,10,-1,'Design: Misty Eye of Zul',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66435,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Misty Eye of Zul.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46906,9,10,-1,'Design: Sundered Eye of Zul',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66436,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Sundered Eye of Zul.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (46907,9,10,-1,'Design: Shining Eye of Zul',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66437,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Shining Eye of Zul.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (46908,9,10,-1,'Design: Tense Eye of Zul',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66438,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Tense Eye of Zul.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,12340);
INSERT INTO item_template (entry,class,subclass,SoundOverrideSubclass,name,displayid,Quality,Flags,FlagsExtra,BuyCount,BuyPrice,SellPrice,InventoryType,AllowableClass,AllowableRace,ItemLevel,RequiredLevel,RequiredSkill,RequiredSkillRank,requiredspell,requiredhonorrank,RequiredCityRank,RequiredReputationFaction,RequiredReputationRank,maxcount,stackable,ContainerSlots,StatsCount,stat_type1,stat_value1,stat_type2,stat_value2,stat_type3,stat_value3,stat_type4,stat_value4,stat_type5,stat_value5,stat_type6,stat_value6,stat_type7,stat_value7,stat_type8,stat_value8,stat_type9,stat_value9,stat_type10,stat_value10,ScalingStatDistribution,ScalingStatValue,dmg_min1,dmg_max1,dmg_type1,dmg_min2,dmg_max2,dmg_type2,armor,holy_res,fire_res,nature_res,frost_res,shadow_res,arcane_res,delay,ammo_type,RangedModRange,spellid_1,spelltrigger_1,spellcharges_1,spellppmRate_1,spellcooldown_1,spellcategory_1,spellcategorycooldown_1,spellid_2,spelltrigger_2,spellcharges_2,spellppmRate_2,spellcooldown_2,spellcategory_2,spellcategorycooldown_2,spellid_3,spelltrigger_3,spellcharges_3,spellppmRate_3,spellcooldown_3,spellcategory_3,spellcategorycooldown_3,spellid_4,spelltrigger_4,spellcharges_4,spellppmRate_4,spellcooldown_4,spellcategory_4,spellcategorycooldown_4,spellid_5,spelltrigger_5,spellcharges_5,spellppmRate_5,spellcooldown_5,spellcategory_5,spellcategorycooldown_5,bonding,description,PageText,LanguageID,PageMaterial,startquest,lockid,Material,sheath,RandomProperty,RandomSuffix,block,itemset,MaxDurability,area,`Map`,BagFamily,TotemCategory,socketColor_1,socketContent_1,socketColor_2,socketContent_2,socketColor_3,socketContent_3,socketBonus,GemProperties,RequiredDisenchantSkill,ArmorDamageModifier,duration,ItemLimitCategory,HolidayId,ScriptName,DisenchantID,FoodType,minMoneyLoot,maxMoneyLoot,flagsCustom,VerifiedBuild) VALUES
	 (46909,9,10,-1,'Design: Lambent Eye of Zul',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66439,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Lambent Eye of Zul.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46910,9,10,-1,'Design: Intricate Eye of Zul',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66440,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut an Intricate Eye of Zul.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (46911,9,10,-1,'Design: Radiant Eye of Zul',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66441,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Radiant Eye of Zul.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46912,9,10,-1,'Design: Energized Eye of Zul',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66442,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut an Energized Eye of Zul.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46913,9,10,-1,'Design: Shattered Eye of Zul',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66443,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Shattered Eye of Zul.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46914,9,10,-1,'Design: Opaque Eye of Zul',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66444,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut an Opaque Eye of Zul.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (46915,9,10,-1,'Design: Turbid Eye of Zul',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66445,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Turbid Eye of Zul.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46916,9,10,-1,'Design: Runed Cardinal Ruby',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66446,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Runed Cardinal Ruby.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46917,9,10,-1,'Design: Bold Cardinal Ruby',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66447,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Bold Cardinal Ruby.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46918,9,10,-1,'Design: Delicate Cardinal Ruby',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66448,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Delicate Cardinal Ruby.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314);
INSERT INTO item_template (entry,class,subclass,SoundOverrideSubclass,name,displayid,Quality,Flags,FlagsExtra,BuyCount,BuyPrice,SellPrice,InventoryType,AllowableClass,AllowableRace,ItemLevel,RequiredLevel,RequiredSkill,RequiredSkillRank,requiredspell,requiredhonorrank,RequiredCityRank,RequiredReputationFaction,RequiredReputationRank,maxcount,stackable,ContainerSlots,StatsCount,stat_type1,stat_value1,stat_type2,stat_value2,stat_type3,stat_value3,stat_type4,stat_value4,stat_type5,stat_value5,stat_type6,stat_value6,stat_type7,stat_value7,stat_type8,stat_value8,stat_type9,stat_value9,stat_type10,stat_value10,ScalingStatDistribution,ScalingStatValue,dmg_min1,dmg_max1,dmg_type1,dmg_min2,dmg_max2,dmg_type2,armor,holy_res,fire_res,nature_res,frost_res,shadow_res,arcane_res,delay,ammo_type,RangedModRange,spellid_1,spelltrigger_1,spellcharges_1,spellppmRate_1,spellcooldown_1,spellcategory_1,spellcategorycooldown_1,spellid_2,spelltrigger_2,spellcharges_2,spellppmRate_2,spellcooldown_2,spellcategory_2,spellcategorycooldown_2,spellid_3,spelltrigger_3,spellcharges_3,spellppmRate_3,spellcooldown_3,spellcategory_3,spellcategorycooldown_3,spellid_4,spelltrigger_4,spellcharges_4,spellppmRate_4,spellcooldown_4,spellcategory_4,spellcategorycooldown_4,spellid_5,spelltrigger_5,spellcharges_5,spellppmRate_5,spellcooldown_5,spellcategory_5,spellcategorycooldown_5,bonding,description,PageText,LanguageID,PageMaterial,startquest,lockid,Material,sheath,RandomProperty,RandomSuffix,block,itemset,MaxDurability,area,`Map`,BagFamily,TotemCategory,socketColor_1,socketContent_1,socketColor_2,socketContent_2,socketColor_3,socketContent_3,socketBonus,GemProperties,RequiredDisenchantSkill,ArmorDamageModifier,duration,ItemLimitCategory,HolidayId,ScriptName,DisenchantID,FoodType,minMoneyLoot,maxMoneyLoot,flagsCustom,VerifiedBuild) VALUES
	 (46919,9,10,-1,'Design: Bright Cardinal Ruby',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66449,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Bright Cardinal Ruby.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (46920,9,10,-1,'Design: Precise Cardinal Ruby',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66450,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Precise Cardinal Ruby.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46921,9,10,-1,'Design: Fractured Cardinal Ruby',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66451,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Fractured Cardinal Ruby.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (46922,9,10,-1,'Design: Subtle Cardinal Ruby',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66452,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Subtle Cardinal Ruby.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46923,9,10,-1,'Design: Flashing Cardinal Ruby',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66453,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Flashing Cardinal Ruby.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46924,9,10,-1,'Design: Solid Majestic Zircon',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66497,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Solid Majestic Zircon.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46925,9,10,-1,'Design: Sparkling Majestic Zircon',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66498,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Sparkling Majestic Zircon.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46926,9,10,-1,'Design: Stormy Majestic Zircon',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66499,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Stormy Majestic Zircon.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46927,9,10,-1,'Design: Lustrous Majestic Zircon',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66500,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Lustrous Majestic Zircon.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (46928,9,10,-1,'Design: Rigid King''s Amber',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66501,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Rigid King''s Amber.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314);
INSERT INTO item_template (entry,class,subclass,SoundOverrideSubclass,name,displayid,Quality,Flags,FlagsExtra,BuyCount,BuyPrice,SellPrice,InventoryType,AllowableClass,AllowableRace,ItemLevel,RequiredLevel,RequiredSkill,RequiredSkillRank,requiredspell,requiredhonorrank,RequiredCityRank,RequiredReputationFaction,RequiredReputationRank,maxcount,stackable,ContainerSlots,StatsCount,stat_type1,stat_value1,stat_type2,stat_value2,stat_type3,stat_value3,stat_type4,stat_value4,stat_type5,stat_value5,stat_type6,stat_value6,stat_type7,stat_value7,stat_type8,stat_value8,stat_type9,stat_value9,stat_type10,stat_value10,ScalingStatDistribution,ScalingStatValue,dmg_min1,dmg_max1,dmg_type1,dmg_min2,dmg_max2,dmg_type2,armor,holy_res,fire_res,nature_res,frost_res,shadow_res,arcane_res,delay,ammo_type,RangedModRange,spellid_1,spelltrigger_1,spellcharges_1,spellppmRate_1,spellcooldown_1,spellcategory_1,spellcategorycooldown_1,spellid_2,spelltrigger_2,spellcharges_2,spellppmRate_2,spellcooldown_2,spellcategory_2,spellcategorycooldown_2,spellid_3,spelltrigger_3,spellcharges_3,spellppmRate_3,spellcooldown_3,spellcategory_3,spellcategorycooldown_3,spellid_4,spelltrigger_4,spellcharges_4,spellppmRate_4,spellcooldown_4,spellcategory_4,spellcategorycooldown_4,spellid_5,spelltrigger_5,spellcharges_5,spellppmRate_5,spellcooldown_5,spellcategory_5,spellcategorycooldown_5,bonding,description,PageText,LanguageID,PageMaterial,startquest,lockid,Material,sheath,RandomProperty,RandomSuffix,block,itemset,MaxDurability,area,`Map`,BagFamily,TotemCategory,socketColor_1,socketContent_1,socketColor_2,socketContent_2,socketColor_3,socketContent_3,socketBonus,GemProperties,RequiredDisenchantSkill,ArmorDamageModifier,duration,ItemLimitCategory,HolidayId,ScriptName,DisenchantID,FoodType,minMoneyLoot,maxMoneyLoot,flagsCustom,VerifiedBuild) VALUES
	 (46929,9,10,-1,'Design: Smooth King''s Amber',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66502,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Smooth King''s Amber.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46930,9,10,-1,'Design: Brilliant King''s Amber',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66503,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Brilliant King''s Amber.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (46931,9,10,-1,'Design: Thick King''s Amber',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66504,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Thick King''s Amber.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (46932,9,10,-1,'Design: Mystic King''s Amber',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66505,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Mystic King''s Amber.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46933,9,10,-1,'Design: Quick King''s Amber',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66506,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Quick King''s Amber.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46934,9,10,-1,'Design: Balanced Dreadstone',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66553,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Balanced Dreadstone.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (46935,9,10,-1,'Design: Sovereign Dreadstone',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66554,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Sovereign Dreadstone.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46936,9,10,-1,'Design: Glowing Dreadstone',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66555,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Glowing Dreadstone.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (46937,9,10,-1,'Design: Purified Dreadstone',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66556,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Purified Dreadstone.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46938,9,10,-1,'Design: Shifting Dreadstone',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66557,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Shifting Dreadstone.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314);
INSERT INTO item_template (entry,class,subclass,SoundOverrideSubclass,name,displayid,Quality,Flags,FlagsExtra,BuyCount,BuyPrice,SellPrice,InventoryType,AllowableClass,AllowableRace,ItemLevel,RequiredLevel,RequiredSkill,RequiredSkillRank,requiredspell,requiredhonorrank,RequiredCityRank,RequiredReputationFaction,RequiredReputationRank,maxcount,stackable,ContainerSlots,StatsCount,stat_type1,stat_value1,stat_type2,stat_value2,stat_type3,stat_value3,stat_type4,stat_value4,stat_type5,stat_value5,stat_type6,stat_value6,stat_type7,stat_value7,stat_type8,stat_value8,stat_type9,stat_value9,stat_type10,stat_value10,ScalingStatDistribution,ScalingStatValue,dmg_min1,dmg_max1,dmg_type1,dmg_min2,dmg_max2,dmg_type2,armor,holy_res,fire_res,nature_res,frost_res,shadow_res,arcane_res,delay,ammo_type,RangedModRange,spellid_1,spelltrigger_1,spellcharges_1,spellppmRate_1,spellcooldown_1,spellcategory_1,spellcategorycooldown_1,spellid_2,spelltrigger_2,spellcharges_2,spellppmRate_2,spellcooldown_2,spellcategory_2,spellcategorycooldown_2,spellid_3,spelltrigger_3,spellcharges_3,spellppmRate_3,spellcooldown_3,spellcategory_3,spellcategorycooldown_3,spellid_4,spelltrigger_4,spellcharges_4,spellppmRate_4,spellcooldown_4,spellcategory_4,spellcategorycooldown_4,spellid_5,spelltrigger_5,spellcharges_5,spellppmRate_5,spellcooldown_5,spellcategory_5,spellcategorycooldown_5,bonding,description,PageText,LanguageID,PageMaterial,startquest,lockid,Material,sheath,RandomProperty,RandomSuffix,block,itemset,MaxDurability,area,`Map`,BagFamily,TotemCategory,socketColor_1,socketContent_1,socketColor_2,socketContent_2,socketColor_3,socketContent_3,socketBonus,GemProperties,RequiredDisenchantSkill,ArmorDamageModifier,duration,ItemLimitCategory,HolidayId,ScriptName,DisenchantID,FoodType,minMoneyLoot,maxMoneyLoot,flagsCustom,VerifiedBuild) VALUES
	 (46939,9,10,-1,'Design: Royal Dreadstone',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66558,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Royal Dreadstone.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (46940,9,10,-1,'Design: Regal Dreadstone',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66559,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Regal Dreadstone.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46941,9,10,-1,'Design: Defender''s Dreadstone',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66560,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Defender''s Dreadstone.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46942,9,10,-1,'Design: Guardian''s Dreadstone',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66561,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Guardian''s Dreadstone.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46943,9,10,-1,'Design: Mysterious Dreadstone',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66562,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Mysterious Dreadstone.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46944,9,10,-1,'Design: Puissant Dreadstone',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66563,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Puissant Dreadstone.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46945,9,10,-1,'Design: Infused Dreadstone',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66564,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut an Infused Dreadstone.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (46946,9,10,-1,'Design: Tenuous Dreadstone',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66565,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Tenuous Dreadstone.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (46947,9,10,-1,'Design: Luminous Ametrine',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66566,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Luminous Ametrine.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (46948,9,10,-1,'Design: Inscribed Ametrine',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66567,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut an Inscribed Ametrine.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314);
INSERT INTO item_template (entry,class,subclass,SoundOverrideSubclass,name,displayid,Quality,Flags,FlagsExtra,BuyCount,BuyPrice,SellPrice,InventoryType,AllowableClass,AllowableRace,ItemLevel,RequiredLevel,RequiredSkill,RequiredSkillRank,requiredspell,requiredhonorrank,RequiredCityRank,RequiredReputationFaction,RequiredReputationRank,maxcount,stackable,ContainerSlots,StatsCount,stat_type1,stat_value1,stat_type2,stat_value2,stat_type3,stat_value3,stat_type4,stat_value4,stat_type5,stat_value5,stat_type6,stat_value6,stat_type7,stat_value7,stat_type8,stat_value8,stat_type9,stat_value9,stat_type10,stat_value10,ScalingStatDistribution,ScalingStatValue,dmg_min1,dmg_max1,dmg_type1,dmg_min2,dmg_max2,dmg_type2,armor,holy_res,fire_res,nature_res,frost_res,shadow_res,arcane_res,delay,ammo_type,RangedModRange,spellid_1,spelltrigger_1,spellcharges_1,spellppmRate_1,spellcooldown_1,spellcategory_1,spellcategorycooldown_1,spellid_2,spelltrigger_2,spellcharges_2,spellppmRate_2,spellcooldown_2,spellcategory_2,spellcategorycooldown_2,spellid_3,spelltrigger_3,spellcharges_3,spellppmRate_3,spellcooldown_3,spellcategory_3,spellcategorycooldown_3,spellid_4,spelltrigger_4,spellcharges_4,spellppmRate_4,spellcooldown_4,spellcategory_4,spellcategorycooldown_4,spellid_5,spelltrigger_5,spellcharges_5,spellppmRate_5,spellcooldown_5,spellcategory_5,spellcategorycooldown_5,bonding,description,PageText,LanguageID,PageMaterial,startquest,lockid,Material,sheath,RandomProperty,RandomSuffix,block,itemset,MaxDurability,area,`Map`,BagFamily,TotemCategory,socketColor_1,socketContent_1,socketColor_2,socketContent_2,socketColor_3,socketContent_3,socketBonus,GemProperties,RequiredDisenchantSkill,ArmorDamageModifier,duration,ItemLimitCategory,HolidayId,ScriptName,DisenchantID,FoodType,minMoneyLoot,maxMoneyLoot,flagsCustom,VerifiedBuild) VALUES
	 (46949,9,10,-1,'Design: Deadly Ametrine',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66568,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Deadly Ametrine.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46950,9,10,-1,'Design: Potent Ametrine',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66569,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Potent Ametrine.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46951,9,10,-1,'Design: Veiled Ametrine',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66570,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Veiled Ametrine.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46952,9,10,-1,'Design: Durable Ametrine',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66571,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Durable Ametrine.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46953,9,10,-1,'Design: Etched Ametrine',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66572,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut an Etched Ametrine',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (46956,9,10,-1,'Design: Pristine Ametrine',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66573,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Pristine Ametrine.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (47007,9,10,-1,'Design: Reckless Ametrine',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66574,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Reckless Ametrine.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (47008,9,10,-1,'Design: Glinting Ametrine',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66575,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Glinting Ametrine.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (47010,9,10,-1,'Design: Accurate Ametrine',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66576,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut an Accurate Ametrine.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (47011,9,10,-1,'Design: Wicked Ametrine',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66577,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Wicked Ametrine.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,12340);
INSERT INTO item_template (entry,class,subclass,SoundOverrideSubclass,name,displayid,Quality,Flags,FlagsExtra,BuyCount,BuyPrice,SellPrice,InventoryType,AllowableClass,AllowableRace,ItemLevel,RequiredLevel,RequiredSkill,RequiredSkillRank,requiredspell,requiredhonorrank,RequiredCityRank,RequiredReputationFaction,RequiredReputationRank,maxcount,stackable,ContainerSlots,StatsCount,stat_type1,stat_value1,stat_type2,stat_value2,stat_type3,stat_value3,stat_type4,stat_value4,stat_type5,stat_value5,stat_type6,stat_value6,stat_type7,stat_value7,stat_type8,stat_value8,stat_type9,stat_value9,stat_type10,stat_value10,ScalingStatDistribution,ScalingStatValue,dmg_min1,dmg_max1,dmg_type1,dmg_min2,dmg_max2,dmg_type2,armor,holy_res,fire_res,nature_res,frost_res,shadow_res,arcane_res,delay,ammo_type,RangedModRange,spellid_1,spelltrigger_1,spellcharges_1,spellppmRate_1,spellcooldown_1,spellcategory_1,spellcategorycooldown_1,spellid_2,spelltrigger_2,spellcharges_2,spellppmRate_2,spellcooldown_2,spellcategory_2,spellcategorycooldown_2,spellid_3,spelltrigger_3,spellcharges_3,spellppmRate_3,spellcooldown_3,spellcategory_3,spellcategorycooldown_3,spellid_4,spelltrigger_4,spellcharges_4,spellppmRate_4,spellcooldown_4,spellcategory_4,spellcategorycooldown_4,spellid_5,spelltrigger_5,spellcharges_5,spellppmRate_5,spellcooldown_5,spellcategory_5,spellcategorycooldown_5,bonding,description,PageText,LanguageID,PageMaterial,startquest,lockid,Material,sheath,RandomProperty,RandomSuffix,block,itemset,MaxDurability,area,`Map`,BagFamily,TotemCategory,socketColor_1,socketContent_1,socketColor_2,socketContent_2,socketColor_3,socketContent_3,socketBonus,GemProperties,RequiredDisenchantSkill,ArmorDamageModifier,duration,ItemLimitCategory,HolidayId,ScriptName,DisenchantID,FoodType,minMoneyLoot,maxMoneyLoot,flagsCustom,VerifiedBuild) VALUES
	 (47012,9,10,-1,'Design: Glimmering Ametrine',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66578,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Glimmering Ametrine.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (47015,9,10,-1,'Design: Champion''s Ametrine',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66579,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Champion''s Ametrine.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (47016,9,10,-1,'Design: Empowered Ametrine',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66580,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut an Empowered Ametrine.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,12340),
	 (47017,9,10,-1,'Design: Stalwart Ametrine',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66581,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Stalwart Ametrine.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (47018,9,10,-1,'Design: Resplendent Ametrine',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66582,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Resplendent Ametrine.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (47019,9,10,-1,'Design: Fierce Ametrine',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66583,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Fierce Ametrine.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (47020,9,10,-1,'Design: Deft Ametrine',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66584,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Deft Ametrine.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (47021,9,10,-1,'Design: Lucent Ametrine',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66585,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Lucent Ametrine.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (47022,9,10,-1,'Design: Resolute Ametrine',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66586,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Resolute Ametrine.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,10314),
	 (47023,9,10,-1,'Design: Stark Ametrine',6270,3,4160,0,1,0,0,0,-1,-1,80,0,755,450,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0.0,483,0,-1,0.0,-1,0,-1,66587,6,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,0,0,0,0.0,-1,0,-1,1,'Teaches you how to cut a Stark Ametrine.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0.0,0,0,0,'',0,0,0,0,0,12340);

--Delete all Epic Gems of 3.2
--Disable prospecting Titanium Ore 3.2
INSERT INTO prospecting_loot_template (Entry,Item,Reference,Chance,QuestRequired,LootMode,GroupId,MinCount,MaxCount,Comment) VALUES
	 (36910,1,13005,20.0,0,1,0,1,1,'(ReferenceTable)'),
	 (36910,2,1002,100.0,0,1,1,1,1,'(ReferenceTable)'),
	 (36910,3,1003,75.0,0,1,1,1,1,'(ReferenceTable)'),
	 (36910,46849,0,75.0,0,1,0,1,1,'Titanium Powder');
--Disable prospecting Titanium Ore 3.2
--Loot emblem fix
UPDATE item_loot_template
SET Item = '45624'
WHERE Item = '40753';
UPDATE gameobject_loot_template
SET Item = '45624'
WHERE Item = '40753';
UPDATE creature_loot_template
SET Item = '45624'
WHERE Item = '40753';
--Loot emblem fix
