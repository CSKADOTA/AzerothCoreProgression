-- Disable weekly quests in 3.3
DELETE FROM disables WHERE comment = 'Disabled dungeon/raid 3.3';
-- Disable weekly quests in 3.3
--Replace daily dungeon emblems from trumph to Heroism
UPDATE quest_template
SET RewardItem1 = '49426'
WHERE RewardItem1 = '47241'
  AND LogTitle LIKE '%Daily%';
--Replace daily dungeon emblems from trumph to Heroism
--Replace daily dungeon emblems from frost to Valor
UPDATE quest_template
SET RewardItem1 = '47241'
WHERE RewardItem1 = '45624'
  AND LogTitle LIKE '%Daily%';
--Replace daily dungeon emblems from frost to Valor
--Replace daily quests emblems from trumph to Valor
INSERT INTO disables (sourceType, entry, comment)
SELECT 1 AS sourceType, ID AS entry, 'Daily Disable in 3.3' AS comment
FROM quest_template 
WHERE LogTitle LIKE '%Proof%'
  OR LogTitle LIKE '%Timear Foresees%';
--Replace daily quests emblems from trumph to Valor
--Disable NPC: Frozo the Renowned, VOA bosses
UPDATE creature
SET phaseMask = '1' 
WHERE id1 IN (40160,38433,35013,35360,33993);
--Disable NPC: Frozo the Renowned, VOA bosses
--Smelt Titansteel 20 Hours cooldown
DELETE FROM spell_dbc WHERE ID = 55208;
--Smelt Titansteel 20 Hours cooldown
--Delete all S8 Gears
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33936,0,51388,0,0,2936,0),
	 (33936,0,51390,0,0,2936,0),
	 (33936,0,51392,0,0,2936,0),
	 (33936,0,51394,0,0,2936,0),
	 (33936,0,51396,0,0,2950,0),
	 (33936,0,51397,0,0,2943,0),
	 (33936,0,51400,0,0,2936,0),
	 (33936,0,51402,0,0,2936,0),
	 (33936,0,51404,0,0,2936,0),
	 (33936,0,51406,0,0,2943,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33936,0,51407,0,0,2950,0),
	 (33936,0,51408,0,0,2950,0),
	 (33936,0,51409,0,0,2950,0),
	 (33936,0,51410,0,0,2951,0),
	 (33936,0,51411,0,0,2936,0),
	 (33936,0,51413,0,0,2952,0),
	 (33936,0,51414,0,0,2954,0),
	 (33936,0,51415,0,0,2949,0),
	 (33936,0,51416,0,0,2953,0),
	 (33936,0,51417,0,0,2951,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33936,0,51418,0,0,2948,0),
	 (33936,0,51419,0,0,2952,0),
	 (33936,0,51420,0,0,2954,0),
	 (33936,0,51421,0,0,2949,0),
	 (33936,0,51422,0,0,2953,0),
	 (33936,0,51423,0,0,2951,0),
	 (33936,0,51424,0,0,2948,0),
	 (33936,0,51425,0,0,2952,0),
	 (33936,0,51426,0,0,2954,0),
	 (33936,0,51427,0,0,2949,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33936,0,51428,0,0,2953,0),
	 (33936,0,51429,0,0,2951,0),
	 (33936,0,51430,0,0,2948,0),
	 (33936,0,51431,0,0,2936,0),
	 (33936,0,51433,0,0,2952,0),
	 (33936,0,51434,0,0,2954,0),
	 (33936,0,51435,0,0,2949,0),
	 (33936,0,51436,0,0,2953,0),
	 (33936,0,51437,0,0,2951,0),
	 (33936,0,51438,0,0,2948,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33936,0,51439,0,0,2946,0),
	 (33936,0,51441,0,0,2946,0),
	 (33936,0,51443,0,0,2946,0),
	 (33936,0,51445,0,0,2946,0),
	 (33936,0,51447,0,0,2946,0),
	 (33936,0,51449,0,0,2936,0),
	 (33936,0,51451,0,0,2951,0),
	 (33936,0,51452,0,0,2950,0),
	 (33936,0,51453,0,0,2943,0),
	 (33936,0,51455,0,0,2950,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33936,0,51456,0,0,2936,0),
	 (33936,0,51458,0,0,2952,0),
	 (33936,0,51459,0,0,2954,0),
	 (33936,0,51460,0,0,2949,0),
	 (33936,0,51461,0,0,2953,0),
	 (33936,0,51462,0,0,2948,0),
	 (33936,0,51463,0,0,2952,0),
	 (33936,0,51464,0,0,2954,0),
	 (33936,0,51465,0,0,2949,0),
	 (33936,0,51466,0,0,2953,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33936,0,51467,0,0,2948,0),
	 (33936,0,51468,0,0,2952,0),
	 (33936,0,51469,0,0,2954,0),
	 (33936,0,51470,0,0,2949,0),
	 (33936,0,51471,0,0,2953,0),
	 (33936,0,51472,0,0,2951,0),
	 (33936,0,51473,0,0,2948,0),
	 (33936,0,51474,0,0,2952,0),
	 (33936,0,51475,0,0,2954,0),
	 (33936,0,51476,0,0,2949,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33936,0,51477,0,0,2953,0),
	 (33936,0,51478,0,0,2951,0),
	 (33936,0,51479,0,0,2948,0),
	 (33936,0,51480,0,0,2936,0),
	 (33936,0,51482,0,0,2952,0),
	 (33936,0,51483,0,0,2954,0),
	 (33936,0,51484,0,0,2949,0),
	 (33936,0,51485,0,0,2953,0),
	 (33936,0,51486,0,0,2948,0),
	 (33936,0,51487,0,0,2952,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33936,0,51488,0,0,2954,0),
	 (33936,0,51489,0,0,2949,0),
	 (33936,0,51490,0,0,2953,0),
	 (33936,0,51491,0,0,2948,0),
	 (33936,0,51492,0,0,2952,0),
	 (33936,0,51493,0,0,2954,0),
	 (33936,0,51494,0,0,2949,0),
	 (33936,0,51495,0,0,2953,0),
	 (33936,0,51496,0,0,2948,0),
	 (33936,0,51497,0,0,2952,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33936,0,51498,0,0,2954,0),
	 (33936,0,51499,0,0,2949,0),
	 (33936,0,51500,0,0,2953,0),
	 (33936,0,51501,0,0,2951,0),
	 (33936,0,51502,0,0,2948,0),
	 (33936,0,51503,0,0,2952,0),
	 (33936,0,51504,0,0,2954,0),
	 (33936,0,51505,0,0,2949,0),
	 (33936,0,51506,0,0,2953,0),
	 (33936,0,51507,0,0,2951,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33936,0,51508,0,0,2948,0),
	 (33936,0,51509,0,0,2952,0),
	 (33936,0,51510,0,0,2954,0),
	 (33936,0,51511,0,0,2949,0),
	 (33936,0,51512,0,0,2953,0),
	 (33936,0,51513,0,0,2951,0),
	 (33936,0,51514,0,0,2948,0),
	 (33936,0,51515,0,0,2945,0),
	 (33936,0,51517,0,0,2945,0),
	 (33936,0,51519,0,0,2945,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33936,0,51521,0,0,2945,0),
	 (33936,0,51523,0,0,2945,0),
	 (33936,0,51525,0,0,2946,0),
	 (33936,0,51527,0,0,2946,0),
	 (33936,0,51530,0,0,2946,0),
	 (33936,0,51531,0,0,2951,0),
	 (33936,0,51532,0,0,2951,0),
	 (33936,0,51533,0,0,2950,0),
	 (33936,0,51535,0,0,2951,0),
	 (33936,0,51536,0,0,2952,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33936,0,51537,0,0,2954,0),
	 (33936,0,51538,0,0,2949,0),
	 (33936,0,51539,0,0,2953,0),
	 (33936,0,51540,0,0,2948,0),
	 (33936,0,51541,0,0,2952,0),
	 (33936,0,51542,0,0,2954,0),
	 (33936,0,51543,0,0,2949,0),
	 (33936,0,51544,0,0,2953,0),
	 (33936,0,51545,0,0,2948,0),
	 (33939,0,51388,0,0,2936,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33939,0,51390,0,0,2936,0),
	 (33939,0,51392,0,0,2936,0),
	 (33939,0,51394,0,0,2936,0),
	 (33939,0,51396,0,0,2950,0),
	 (33939,0,51397,0,0,2943,0),
	 (33939,0,51400,0,0,2936,0),
	 (33939,0,51402,0,0,2936,0),
	 (33939,0,51404,0,0,2936,0),
	 (33939,0,51406,0,0,2943,0),
	 (33939,0,51407,0,0,2950,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33939,0,51408,0,0,2950,0),
	 (33939,0,51409,0,0,2950,0),
	 (33939,0,51410,0,0,2951,0),
	 (33939,0,51411,0,0,2936,0),
	 (33939,0,51413,0,0,2952,0),
	 (33939,0,51414,0,0,2954,0),
	 (33939,0,51415,0,0,2949,0),
	 (33939,0,51416,0,0,2953,0),
	 (33939,0,51417,0,0,2951,0),
	 (33939,0,51418,0,0,2948,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33939,0,51419,0,0,2952,0),
	 (33939,0,51420,0,0,2954,0),
	 (33939,0,51421,0,0,2949,0),
	 (33939,0,51422,0,0,2953,0),
	 (33939,0,51423,0,0,2951,0),
	 (33939,0,51424,0,0,2948,0),
	 (33939,0,51425,0,0,2952,0),
	 (33939,0,51426,0,0,2954,0),
	 (33939,0,51427,0,0,2949,0),
	 (33939,0,51428,0,0,2953,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33939,0,51429,0,0,2951,0),
	 (33939,0,51430,0,0,2948,0),
	 (33939,0,51431,0,0,2936,0),
	 (33939,0,51433,0,0,2952,0),
	 (33939,0,51434,0,0,2954,0),
	 (33939,0,51435,0,0,2949,0),
	 (33939,0,51436,0,0,2953,0),
	 (33939,0,51437,0,0,2951,0),
	 (33939,0,51438,0,0,2948,0),
	 (33939,0,51439,0,0,2946,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33939,0,51441,0,0,2946,0),
	 (33939,0,51443,0,0,2946,0),
	 (33939,0,51445,0,0,2946,0),
	 (33939,0,51447,0,0,2946,0),
	 (33939,0,51449,0,0,2936,0),
	 (33939,0,51451,0,0,2951,0),
	 (33939,0,51452,0,0,2950,0),
	 (33939,0,51453,0,0,2943,0),
	 (33939,0,51455,0,0,2950,0),
	 (33939,0,51456,0,0,2936,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33939,0,51458,0,0,2952,0),
	 (33939,0,51459,0,0,2954,0),
	 (33939,0,51460,0,0,2949,0),
	 (33939,0,51461,0,0,2953,0),
	 (33939,0,51462,0,0,2948,0),
	 (33939,0,51463,0,0,2952,0),
	 (33939,0,51464,0,0,2954,0),
	 (33939,0,51465,0,0,2949,0),
	 (33939,0,51466,0,0,2953,0),
	 (33939,0,51467,0,0,2948,0);
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (33939,0,51468,0,0,2952,0),
	 (33939,0,51469,0,0,2954,0),
	 (33939,0,51470,0,0,2949,0),
	 (33939,0,51471,0,0,2953,0),
	 (33939,0,51472,0,0,2951,0),
	 (33939,0,51473,0,0,2948,0),
	 (33939,0,51474,0,0,2952,0),
	 (33939,0,51475,0,0,2954,0),
	 (33939,0,51476,0,0,2949,0),
	 (33939,0,51477,0,0,2953,0);
--Delete all S8 Gears
--Delete all 3.3 Rings
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,VerifiedBuild) VALUES
	 (32172,0,51557,0,0,2735,0),
	 (32172,0,51558,0,0,2737,0),
	 (32172,0,51559,0,0,2736,0),
	 (32172,0,51560,0,0,2738,0);

--Delete all 3.3 Rings
--Loot emblem fix
UPDATE item_loot_template
SET Item = '47241'
WHERE Item = '45624';
UPDATE gameobject_loot_template
SET Item = '47241'
WHERE Item = '45624';
UPDATE creature_loot_template
SET Item = '47241'
WHERE Item = '45624';
--Loot emblem fix
