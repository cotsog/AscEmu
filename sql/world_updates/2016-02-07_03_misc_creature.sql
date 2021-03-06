--
-- Delete wrong creature_names IceCrownCitadel
--
DELETE FROM `creature_names` WHERE `entry` IN(14928,14929,14930,37562,38602,38760,38761);
DELETE FROM `creature_names` WHERE `entry` IN(10097,10098,10099,37886,38166,38724,38734);
DELETE FROM `creature_names` WHERE `entry` IN(14975,14976,14977);
DELETE FROM `creature_names` WHERE `entry` IN(14995,14996,14997,38156,38637,38638,36939);
DELETE FROM `creature_names` WHERE `entry` IN(10208,10209,10210,36980,38320,38321,38322);
DELETE FROM `creature_names` WHERE `entry` IN(14607,14608,14609,36968,38403,38675,38676);
DELETE FROM `creature_names` WHERE `entry` IN(14592,14593,14594,37117,38257,38677,38678);
DELETE FROM `creature_names` WHERE `entry` IN(15023,15024,15025,37032,38087);
DELETE FROM `creature_names` WHERE `entry` IN(15013,15014,15015,37033,38088);
DELETE FROM `creature_names` WHERE `entry` IN(15016,15017,15018,37149,38089);
DELETE FROM `creature_names` WHERE `entry` IN(15032,15033,15034,37031,38090);
DELETE FROM `creature_names` WHERE `entry` IN(14978,14979,14980,37030,38091);
DELETE FROM `creature_names` WHERE `entry` IN(14595,14596,14597,36957,38404,38679,38680);
DELETE FROM `creature_names` WHERE `entry` IN(14972,14973,14974,37029,38092);
DELETE FROM `creature_names` WHERE `entry` IN(14598,14599,14600,36982,38405,38681,38682);
DELETE FROM `creature_names` WHERE `entry` IN(14616,14617,14618,36960,38262,38683,38684);
DELETE FROM `creature_names` WHERE `entry` IN(15029,15030,15031,37146,38093);
DELETE FROM `creature_names` WHERE `entry` IN(14589,14590,14591,37034,38095);
DELETE FROM `creature_names` WHERE `entry` IN(14969,14970,14971,37035,38096);
DELETE FROM `creature_names` WHERE `entry` IN(14672,14673,14674,36897,38138);

--
-- Delete wrong creature_proto IceCrownCitadel
--
DELETE FROM `creature_proto` WHERE `entry` IN(14928,14929,14930,37562,38602,38760,38761);
DELETE FROM `creature_proto` WHERE `entry` IN(10097,10098,10099,37886,38166,38724,38734);
DELETE FROM `creature_proto` WHERE `entry` IN(14975,14976,14977);
DELETE FROM `creature_proto` WHERE `entry` IN(14995,14996,14997,38156,38637,38638,36939);
DELETE FROM `creature_proto` WHERE `entry` IN(10208,10209,10210,36980,38320,38321,38322);
DELETE FROM `creature_proto` WHERE `entry` IN(14607,14608,14609,36968,38403,38675,38676);
DELETE FROM `creature_proto` WHERE `entry` IN(14592,14593,14594,37117,38257,38677,38678);
DELETE FROM `creature_proto` WHERE `entry` IN(15023,15024,15025,37032,38087);
DELETE FROM `creature_proto` WHERE `entry` IN(15013,15014,15015,37033,38088);
DELETE FROM `creature_proto` WHERE `entry` IN(15016,15017,15018,37149,38089);
DELETE FROM `creature_proto` WHERE `entry` IN(15032,15033,15034,37031,38090);
DELETE FROM `creature_proto` WHERE `entry` IN(14978,14979,14980,37030,38091);
DELETE FROM `creature_proto` WHERE `entry` IN(14595,14596,14597,36957,38404,38679,38680);
DELETE FROM `creature_proto` WHERE `entry` IN(14972,14973,14974,37029,38092);
DELETE FROM `creature_proto` WHERE `entry` IN(14598,14599,14600,36982,38405,38681,38682);
DELETE FROM `creature_proto` WHERE `entry` IN(14616,14617,14618,36960,38262,38683,38684);
DELETE FROM `creature_proto` WHERE `entry` IN(15029,15030,15031,37146,38093);
DELETE FROM `creature_proto` WHERE `entry` IN(14589,14590,14591,37034,38095);
DELETE FROM `creature_proto` WHERE `entry` IN(14969,14970,14971,37035,38096);
DELETE FROM `creature_proto` WHERE `entry` IN(14672,14673,14674,36897,38138);

--
-- Insert creature_names IceCrownCitadel
--
INSERT INTO `creature_names` (`entry`, `name`, `subname`, `info_str`, `flags1`, `type`, `family`, `rank`, `encounter`, `killcredit1`, `killcredit2`, `male_displayid`, `female_displayid`, `male_displayid2`, `female_displayid2`, `unknown_float1`, `unknown_float2`, `leader`, `questitem1`, `questitem2`, `questitem3`, `questitem4`, `questitem5`, `questitem6`, `waypointid`) VALUES
	(38602, 'Gas Cloud (1)', '', '', 72, 10, 0, 0, 0, 37562, 0, 30707, 0, 0, 0, 70, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(38760, 'Gas Cloud (2)', '', '', 72, 10, 0, 0, 0, 37562, 0, 30707, 0, 0, 0, 70, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(38761, 'Gas Cloud (3)', '', '', 72, 10, 0, 0, 0, 37562, 0, 30707, 0, 0, 0, 70, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(37562, 'Gas Cloud', '', '', 72, 10, 0, 0, 0, 0, 0, 30707, 0, 0, 0, 70, 1, 0, 0, 0, 0, 0, 0, 0, 133),
	(38166, 'Gluttonous Abomination (1)', '', '', 8, 6, 0, 1, 0, 37886, 0, 7858, 0, 0, 0, 65, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(38724, 'Gluttonous Abomination (2)', '', '', 8, 6, 0, 1, 0, 37886, 0, 7858, 0, 0, 0, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(38734, 'Gluttonous Abomination (3)', '', '', 8, 6, 0, 1, 0, 37886, 0, 7858, 0, 0, 0, 65, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(37886, 'Gluttonous Abomination', '', '', 8, 6, 0, 1, 0, 0, 0, 7858, 0, 0, 0, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(38156, 'High Overlord Saurfang (1)', '', '', 76, 7, 0, 3, 0, 36939, 0, 30583, 0, 0, 0, 300, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(38637, 'High Overlord Saurfang (2)', '', '', 76, 7, 0, 3, 0, 36939, 0, 30583, 0, 0, 0, 300, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(38638, 'High Overlord Saurfang (3)', '', '', 76, 7, 0, 3, 0, 36939, 0, 30583, 0, 0, 0, 300, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(36939, 'High Overlord Saurfang', '', '', 76, 7, 0, 1, 0, 0, 0, 30416, 0, 0, 0, 175, 1, 0, 0, 0, 0, 0, 0, 0, 164),
	(38320, 'Ice Tomb (1)', '', '', 64, 10, 0, 0, 0, 36980, 0, 30890, 0, 0, 0, 36, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(38321, 'Ice Tomb (2)', '', '', 64, 10, 0, 0, 0, 36980, 0, 30890, 0, 0, 0, 9, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(38322, 'Ice Tomb (3)', '', '', 64, 10, 0, 0, 0, 36980, 0, 30890, 0, 0, 0, 36, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(36980, 'Ice Tomb', '', '', 64, 10, 0, 0, 0, 0, 0, 30890, 0, 0, 0, 9, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(38403, 'Kor\'kron Axethrower (1)', '', '', 72, 7, 0, 1, 0, 36968, 0, 30739, 30740, 0, 0, 16, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(38675, 'Kor\'kron Axethrower (2)', '', '', 72, 7, 0, 1, 0, 36968, 0, 30739, 30740, 0, 0, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(38676, 'Kor\'kron Axethrower (3)', '', '', 72, 7, 0, 1, 0, 36968, 0, 30739, 30740, 0, 0, 16, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(36968, 'Kor\'kron Axethrower', '', '', 72, 7, 0, 1, 0, 0, 0, 30739, 30740, 0, 0, 8, 1, 0, 0, 0, 0, 0, 0, 0, 144),
	(38257, 'Kor\'kron Battle-Mage (1)', '', '', 72, 7, 0, 1, 0, 37117, 0, 30741, 30742, 30743, 30744, 60, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(38677, 'Kor\'kron Battle-Mage (2)', '', '', 72, 7, 0, 1, 0, 37117, 0, 30741, 30742, 30743, 30744, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(38678, 'Kor\'kron Battle-Mage (3)', '', '', 72, 7, 0, 1, 0, 37117, 0, 30741, 30742, 30743, 30744, 60, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(37117, 'Kor\'kron Battle-Mage', '', '', 72, 7, 0, 1, 0, 0, 0, 30741, 30742, 30743, 30744, 15, 1, 0, 0, 0, 0, 0, 0, 0, 144),
	(15023, 'Kor\'kron Defender (1)', '', '', 72, 7, 0, 1, 0, 37032, 0, 30474, 30475, 0, 0, 35, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(15024, 'Kor\'kron Defender (2)', '', '', 72, 7, 0, 1, 0, 37032, 0, 30474, 30475, 0, 0, 35, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(15025, 'Kor\'kron Defender (3)', '', '', 72, 7, 0, 1, 0, 37032, 0, 30474, 30475, 0, 0, 35, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(37032, 'Kor\'kron Defender', '', '', 72, 7, 0, 1, 0, 0, 0, 30474, 30475, 0, 0, 35, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(15013, 'Kor\'kron Invoker (1)', '', '', 72, 7, 0, 1, 0, 37033, 0, 30476, 30477, 0, 0, 25, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(15014, 'Kor\'kron Invoker (2)', '', '', 72, 7, 0, 1, 0, 37033, 0, 30476, 30477, 0, 0, 25, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(15015, 'Kor\'kron Invoker (3)', '', '', 72, 7, 0, 1, 0, 37033, 0, 30476, 30477, 0, 0, 25, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(37033, 'Kor\'kron Invoker', '', '', 72, 7, 0, 1, 0, 0, 0, 30476, 30477, 0, 0, 25, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(15016, 'Kor\'kron Necrolyte (1)', '', '', 72, 7, 0, 1, 0, 37149, 0, 30532, 30534, 0, 0, 25, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(15017, 'Kor\'kron Necrolyte (2)', '', '', 72, 7, 0, 1, 0, 37149, 0, 30532, 30534, 0, 0, 25, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(15018, 'Kor\'kron Necrolyte (3)', '', '', 72, 7, 0, 1, 0, 37149, 0, 30532, 30534, 0, 0, 25, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(37149, 'Kor\'kron Necrolyte', '', '', 72, 7, 0, 1, 0, 0, 0, 30532, 30534, 0, 0, 25, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(15032, 'Kor\'kron Oracle (1)', '', '', 72, 7, 0, 1, 0, 37031, 0, 30478, 30479, 0, 0, 25, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(15033, 'Kor\'kron Oracle (2)', '', '', 72, 7, 0, 1, 0, 37031, 0, 30478, 30479, 0, 0, 25, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(15034, 'Kor\'kron Oracle (3)', '', '', 72, 7, 0, 1, 0, 37031, 0, 30478, 30479, 0, 0, 25, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(37031, 'Kor\'kron Oracle', '', '', 72, 7, 0, 1, 0, 0, 0, 30478, 30479, 0, 0, 25, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(14978, 'Kor\'kron Primalist (1)', '', '', 72, 7, 0, 1, 0, 37030, 0, 30480, 30481, 0, 0, 25, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(14979, 'Kor\'kron Primalist (2)', '', '', 72, 7, 0, 1, 0, 37030, 0, 30480, 30481, 0, 0, 25, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(14980, 'Kor\'kron Primalist (3)', '', '', 72, 7, 0, 1, 0, 37030, 0, 30480, 30481, 0, 0, 25, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(37030, 'Kor\'kron Primalist', '', '', 72, 7, 0, 1, 0, 0, 0, 30480, 30481, 0, 0, 25, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(38404, 'Kor\'kron Reaver (1)', '', '', 72, 7, 0, 1, 0, 36957, 0, 30750, 30751, 30752, 0, 16, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(38679, 'Kor\'kron Reaver (2)', '', '', 72, 7, 0, 1, 0, 36957, 0, 30750, 30751, 30752, 0, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(38680, 'Kor\'kron Reaver (3)', '', '', 72, 7, 0, 1, 0, 36957, 0, 30750, 30751, 30752, 0, 16, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(36957, 'Kor\'kron Reaver', '', '', 72, 7, 0, 1, 0, 0, 0, 30750, 30751, 30752, 0, 8, 1, 0, 0, 0, 0, 0, 0, 0, 144),
	(14972, 'Kor\'kron Reaver (1)', '', '', 72, 7, 0, 1, 0, 37029, 0, 30482, 30484, 0, 0, 30, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(14973, 'Kor\'kron Reaver (2)', '', '', 72, 7, 0, 1, 0, 37029, 0, 30482, 30484, 0, 0, 30, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(14974, 'Kor\'kron Reaver (3)', '', '', 72, 7, 0, 1, 0, 37029, 0, 30482, 30484, 0, 0, 30, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(37029, 'Kor\'kron Reaver', '', '', 72, 7, 0, 1, 0, 0, 0, 30482, 30484, 0, 0, 30, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(38405, 'Kor\'kron Rocketeer (1)', '', '', 72, 7, 0, 1, 0, 36982, 0, 30748, 30749, 0, 0, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(38681, 'Kor\'kron Rocketeer (2)', '', '', 72, 7, 0, 1, 0, 36982, 0, 30748, 30749, 0, 0, 3.5, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(38682, 'Kor\'kron Rocketeer (3)', '', '', 72, 7, 0, 1, 0, 36982, 0, 30748, 30749, 0, 0, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(36982, 'Kor\'kron Rocketeer', '', '', 72, 7, 0, 1, 0, 0, 0, 30748, 30749, 0, 0, 3.5, 1, 0, 0, 0, 0, 0, 0, 0, 144),
	(38262, 'Kor\'kron Sergeant (1)', '', '', 72, 7, 0, 1, 0, 36960, 0, 30745, 30746, 30747, 0, 40, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(38683, 'Kor\'kron Sergeant (2)', '', '', 72, 7, 0, 1, 0, 36960, 0, 30745, 30746, 30747, 0, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(38684, 'Kor\'kron Sergeant (3)', '', '', 72, 7, 0, 1, 0, 36960, 0, 30745, 30746, 30747, 0, 40, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(36960, 'Kor\'kron Sergeant', '', '', 72, 7, 0, 1, 0, 0, 0, 30745, 30746, 30747, 0, 20, 1, 0, 0, 0, 0, 0, 0, 0, 144),
	(15029, 'Kor\'kron Sniper (1)', '', '', 72, 7, 0, 1, 0, 37146, 0, 30530, 30531, 0, 0, 30, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(15030, 'Kor\'kron Sniper (2)', '', '', 72, 7, 0, 1, 0, 37146, 0, 30530, 30531, 0, 0, 30, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(15031, 'Kor\'kron Sniper (3)', '', '', 72, 7, 0, 1, 0, 37146, 0, 30530, 30531, 0, 0, 30, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(37146, 'Kor\'kron Sniper', '', '', 72, 7, 0, 1, 0, 0, 0, 30530, 30531, 0, 0, 30, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(14589, 'Kor\'kron Templar (1)', '', '', 72, 7, 0, 1, 0, 37034, 0, 30487, 30488, 0, 0, 75, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(14590, 'Kor\'kron Templar (2)', '', '', 72, 7, 0, 1, 0, 37034, 0, 30487, 30488, 0, 0, 25, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(14591, 'Kor\'kron Templar (3)', '', '', 72, 7, 0, 1, 0, 37034, 0, 30487, 30488, 0, 0, 75, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(37034, 'Kor\'kron Templar', '', '', 72, 7, 0, 1, 0, 0, 0, 30487, 30488, 0, 0, 25, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(14969, 'Kor\'kron Vanquisher (1)', '', '', 72, 7, 0, 1, 0, 37035, 0, 30489, 30490, 0, 0, 35, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(14970, 'Kor\'kron Vanquisher (2)', '', '', 72, 7, 0, 1, 0, 37035, 0, 30489, 30490, 0, 0, 35, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(14971, 'Kor\'kron Vanquisher (3)', '', '', 72, 7, 0, 1, 0, 37035, 0, 30489, 30490, 0, 0, 35, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(37035, 'Kor\'kron Vanquisher', '', '', 72, 7, 0, 1, 0, 0, 0, 30489, 30490, 0, 0, 35, 10, 0, 0, 0, 0, 0, 0, 0, 0),
	(14672, 'Little Ooze (1)', '', '', 72, 10, 0, 1, 0, 36897, 0, 12349, 0, 0, 0, 500, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(14673, 'Little Ooze (2)', '', '', 72, 10, 0, 1, 0, 36897, 0, 12349, 0, 0, 0, 500, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(14674, 'Little Ooze (3)', '', '', 72, 10, 0, 1, 0, 36897, 0, 12349, 0, 0, 0, 500, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(36897, 'Little Ooze', '', '', 72, 10, 0, 1, 0, 0, 0, 12349, 0, 0, 0, 500, 1, 0, 0, 0, 0, 0, 0, 0, 0);


--
-- Insert creature_proto IceCrownCitadel
--
INSERT INTO `creature_proto` (`entry`, `minlevel`, `maxlevel`, `faction`, `minhealth`, `maxhealth`, `mana`, `scale`, `npcflags`, `attacktime`, `attacktype`, `mindamage`, `maxdamage`, `can_ranged`, `rangedattacktime`, `rangedmindamage`, `rangedmaxdamage`, `respawntime`, `armor`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `combat_reach`, `bounding_radius`, `auras`, `boss`, `money`, `invisibility_type`, `walk_speed`, `run_speed`, `fly_speed`, `extra_a9_flags`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `spell_flags`, `modImmunities`, `isTrainingDummy`, `guardtype`, `summonguard`, `spelldataid`, `vehicleid`, `rooted`) VALUES
	(38602, 82, 82, 14, 1581160, 1581160, 0, 1, 0, 2000, 0, 683.2, 898.8, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38760, 82, 82, 14, 395290, 395290, 0, 1, 0, 2000, 0, 683.2, 898.8, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38761, 82, 82, 14, 1581160, 1581160, 0, 1, 0, 2000, 0, 683.2, 898.8, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(37562, 82, 82, 14, 395290, 395290, 0, 1, 0, 2000, 0, 683.2, 898.8, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 70215, 72455, 71203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38166, 83, 83, 16, 906425, 906425, 0, 1, 0, 2000, 0, 3817.5, 5122.5, 1, 2000, 742, 1070, 0, 10627, 0, 0, 0, 0, 0, 0, 2.625, 0.875, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38724, 83, 83, 16, 278900, 278900, 0, 1, 0, 2000, 0, 3817.5, 5122.5, 1, 2000, 742, 1070, 0, 10627, 0, 0, 0, 0, 0, 0, 2.625, 0.875, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38734, 83, 83, 16, 906425, 906425, 0, 1, 0, 2000, 0, 3817.5, 5122.5, 1, 2000, 742, 1070, 0, 10627, 0, 0, 0, 0, 0, 0, 2.625, 0.875, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(37886, 83, 83, 16, 278900, 278900, 0, 1, 0, 2000, 0, 3817.5, 5122.5, 1, 2000, 742, 1070, 0, 10627, 0, 0, 0, 0, 0, 0, 2.625, 0.875, '', 0, 0, 0, 2.5, 8, 14, 0, 70633, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0),
	(38637, 83, 83, 83, 2440375, 2440375, 0, 1, 0, 1500, 0, 2863.12, 3841.88, 1, 2000, 742, 1070, 0, 10627, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5631, 0, 0, 0, 0, 0, 0),
	(38638, 83, 83, 83, 4183500, 4183500, 0, 1, 0, 2000, 0, 3817.5, 5122.5, 1, 2000, 742, 1070, 0, 10627, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5631, 0, 0, 0, 0, 0, 0),
	(36939, 83, 83, 83, 2440375, 2440375, 0, 1, 0, 1500, 0, 2863.12, 3841.88, 1, 2000, 742, 1070, 0, 10673, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 15284, 70309, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38156, 83, 83, 83, 4183500, 4183500, 0, 1, 0, 2000, 0, 3817.5, 5122.5, 1, 2000, 742, 1070, 0, 10627, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5631, 0, 0, 0, 0, 0, 0),
	(38320, 80, 80, 14, 453600, 453600, 0, 1, 0, 2000, 0, 590.8, 820.4, 0, 0, 0, 0, 0, 9730, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38321, 80, 80, 14, 113400, 113400, 0, 1, 0, 2000, 0, 590.8, 820.4, 0, 0, 0, 0, 0, 9730, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38322, 80, 80, 14, 453600, 453600, 0, 1, 0, 2000, 0, 590.8, 820.4, 0, 0, 0, 0, 0, 9730, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(36980, 80, 80, 14, 113400, 113400, 0, 1, 0, 2000, 0, 590.8, 820.4, 0, 0, 0, 0, 0, 9730, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38403, 82, 82, 83, 215969, 215969, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38675, 82, 82, 83, 107848, 107848, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38676, 82, 82, 83, 215969, 215969, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(36968, 82, 82, 83, 107848, 107848, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10356, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 71339, 70161, 72539, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38257, 82, 82, 83, 808860, 808860, 4169, 1, 0, 2000, 0, 3472.5, 4800, 0, 0, 0, 0, 0, 10225, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38677, 82, 82, 83, 202215, 202215, 4169, 1, 0, 2000, 0, 3472.5, 4800, 0, 0, 0, 0, 0, 10225, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38678, 82, 82, 83, 808860, 808860, 4169, 1, 0, 2000, 0, 3472.5, 4800, 0, 0, 0, 0, 0, 10225, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(37117, 82, 82, 83, 202215, 202215, 4169, 1, 0, 2000, 0, 3472.5, 4800, 0, 0, 0, 0, 0, 10253, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 69705, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(15023, 82, 82, 83, 1213290, 1213290, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 8505, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(15024, 82, 82, 83, 471835, 471835, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 8505, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(15025, 82, 82, 83, 1213290, 1213290, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 8505, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(37032, 82, 82, 83, 471835, 471835, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10356, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 8505, 0, 2.5, 8, 14, 0, 69902, 69903, 72645, 69901, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(15013, 82, 82, 83, 808800, 808800, 91600, 1, 0, 2000, 0, 2715, 3900, 0, 0, 0, 0, 0, 8262, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 9723, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(15014, 82, 82, 83, 269600, 269600, 91600, 1, 0, 2000, 0, 2715, 3900, 0, 0, 0, 0, 0, 8262, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 9723, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(15015, 82, 82, 83, 808800, 808800, 91600, 1, 0, 2000, 0, 2715, 3900, 0, 0, 0, 0, 0, 8262, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 9723, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(37033, 82, 82, 83, 269600, 269600, 91600, 1, 0, 2000, 0, 2715, 3900, 0, 0, 0, 0, 0, 8340, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 9723, 0, 2.5, 8, 14, 0, 69904, 69869, 71130, 69811, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(15016, 82, 82, 83, 808800, 808800, 91600, 1, 0, 2000, 0, 2715, 3900, 0, 0, 0, 0, 0, 8262, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 10133, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(15017, 82, 82, 83, 269600, 269600, 91600, 1, 0, 2000, 0, 2715, 3900, 0, 0, 0, 0, 0, 8262, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 10133, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(15018, 82, 82, 83, 808800, 808800, 91600, 1, 0, 2000, 0, 2715, 3900, 0, 0, 0, 0, 0, 8262, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 10133, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(37149, 82, 82, 83, 269600, 269600, 91600, 1, 0, 2000, 0, 2715, 3900, 0, 0, 0, 0, 0, 8340, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 10133, 0, 2.5, 8, 14, 0, 69969, 71124, 69973, 71135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(15032, 82, 82, 83, 1011075, 1011075, 41690, 1, 0, 2000, 0, 3472.5, 4800, 0, 0, 0, 0, 0, 10225, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 8929, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(15033, 82, 82, 83, 337025, 337025, 41690, 1, 0, 2000, 0, 3472.5, 4800, 0, 0, 0, 0, 0, 10225, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 8929, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(15034, 82, 82, 83, 1011075, 1011075, 41690, 1, 0, 2000, 0, 3472.5, 4800, 0, 0, 0, 0, 0, 10225, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 8929, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(37031, 82, 82, 83, 337025, 337025, 41690, 1, 0, 2000, 0, 3472.5, 4800, 0, 0, 0, 0, 0, 10253, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 8929, 0, 2.5, 8, 14, 0, 69923, 71120, 69926, 69958, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(14978, 82, 82, 83, 808800, 808800, 91600, 1, 0, 2000, 0, 2715, 3900, 0, 0, 0, 0, 0, 8262, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 8668, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(14979, 82, 82, 83, 269600, 269600, 91600, 1, 0, 2000, 0, 2715, 3900, 0, 0, 0, 0, 0, 8262, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 8668, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(14980, 82, 82, 83, 808800, 808800, 91600, 1, 0, 2000, 0, 2715, 3900, 0, 0, 0, 0, 0, 8262, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 8668, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(37030, 82, 82, 83, 269600, 269600, 91600, 1, 0, 2000, 0, 2715, 3900, 0, 0, 0, 0, 0, 8340, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 8668, 0, 2.5, 8, 14, 0, 69899, 71121, 69882, 71141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38404, 82, 82, 83, 215696, 215696, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38679, 82, 82, 83, 107848, 107848, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38680, 82, 82, 83, 215696, 215696, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(36957, 82, 82, 83, 107848, 107848, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10356, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 71339, 69647, 72536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(14972, 82, 82, 83, 1078480, 1078480, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 8676, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(14973, 82, 82, 83, 404430, 404430, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 8676, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(14974, 82, 82, 83, 1078480, 1078480, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 8676, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(37029, 82, 82, 83, 404430, 404430, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10356, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 8676, 0, 2.5, 8, 14, 0, 69916, 69912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38405, 82, 82, 83, 94367, 94367, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38681, 82, 82, 83, 47184, 47184, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38682, 82, 82, 83, 94367, 94367, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(36982, 82, 82, 83, 47184, 47184, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10356, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 69679, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38262, 82, 82, 83, 539240, 539240, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38683, 82, 82, 83, 269620, 269620, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38684, 82, 82, 83, 539240, 539240, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(36960, 82, 82, 83, 269620, 269620, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10356, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 2.5, 8, 14, 0, 69653, 69652, 71339, 69647, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(15029, 82, 82, 83, 517200, 517200, 41690, 1, 0, 2000, 0, 3472.5, 4800, 0, 0, 0, 0, 0, 10225, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 9749, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(15030, 82, 82, 83, 404430, 404430, 41690, 1, 0, 2000, 0, 1736.25, 2400, 0, 0, 0, 0, 0, 10225, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 9749, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(15031, 82, 82, 83, 517200, 517200, 41690, 1, 0, 2000, 0, 3472.5, 4800, 0, 0, 0, 0, 0, 10225, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 9749, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(37146, 82, 82, 83, 404430, 404430, 41690, 1, 0, 1000, 0, 1736.25, 2400, 0, 0, 0, 0, 0, 10253, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 9749, 0, 2.5, 8, 14, 0, 69989, 71116, 69975, 71126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(14589, 82, 82, 83, 808800, 808800, 91600, 1, 0, 2000, 0, 2715, 3900, 0, 0, 0, 0, 0, 8262, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 9225, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(14590, 82, 82, 83, 269600, 269600, 91600, 1, 0, 2000, 0, 2715, 3900, 0, 0, 0, 0, 0, 8262, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 9225, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(14591, 82, 82, 83, 808800, 808800, 91600, 1, 0, 2000, 0, 2715, 3900, 0, 0, 0, 0, 0, 8262, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 9225, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(37034, 82, 82, 83, 269600, 269600, 91600, 1, 0, 2000, 0, 2715, 3900, 0, 0, 0, 0, 0, 8340, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 9225, 0, 2.5, 8, 14, 0, 69963, 71131, 69910, 69967, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(14969, 82, 82, 83, 1213290, 1213290, 41690, 1, 0, 2000, 0, 3472.5, 4800, 0, 0, 0, 0, 0, 10225, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 9559, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(14970, 82, 82, 83, 471835, 471835, 41690, 1, 0, 2000, 0, 3472.5, 4800, 0, 0, 0, 0, 0, 10225, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 9559, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(14971, 82, 82, 83, 1213290, 1213290, 41690, 1, 0, 2000, 0, 3472.5, 4800, 0, 0, 0, 0, 0, 10225, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 9559, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(37035, 82, 82, 83, 471835, 471835, 41690, 1, 0, 2000, 0, 3472.5, 4800, 0, 0, 0, 0, 0, 10253, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 9559, 0, 2.5, 8, 14, 0, 69927, 71117, 69930, 71122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(14672, 82, 82, 14, 4235250, 4235250, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 1.5, 0.35, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(14673, 82, 82, 14, 2823500, 2823500, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 1.5, 0.35, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(14674, 82, 82, 14, 4235250, 4235250, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10328, 0, 0, 0, 0, 0, 0, 1.5, 0.35, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(36897, 82, 82, 14, 2823500, 2823500, 0, 1, 0, 2000, 0, 3660, 4815, 0, 0, 0, 0, 0, 10356, 0, 0, 0, 0, 0, 0, 1.5, 0.35, '', 0, 0, 0, 2.5, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Update creature_difficulty IceCrownCitadel
--
REPLACE INTO `creature_difficulty` VALUES (37032, 15023, 15024, 15025);
REPLACE INTO `creature_difficulty` VALUES (37033, 15013, 15014, 15015);
REPLACE INTO `creature_difficulty` VALUES (37149, 15016, 15017, 15018);
REPLACE INTO `creature_difficulty` VALUES (37031, 15032, 15033, 15034);
REPLACE INTO `creature_difficulty` VALUES (37030, 14978, 14979, 14980);
REPLACE INTO `creature_difficulty` VALUES (37029, 14972, 14973, 14974);
REPLACE INTO `creature_difficulty` VALUES (37146, 15029, 15030, 15031);
REPLACE INTO `creature_difficulty` VALUES (37034, 14589, 14590, 14591);
REPLACE INTO `creature_difficulty` VALUES (37035, 14969, 14970, 14971);
REPLACE INTO `creature_difficulty` VALUES (36897, 14672, 14673, 14674);

--
-- Update world db version
--
UPDATE `world_db_version` SET `LastUpdate` = '2016-01-07_03_misc_creature' WHERE `LastUpdate` = '2016-01-07_02_misc_creature';
