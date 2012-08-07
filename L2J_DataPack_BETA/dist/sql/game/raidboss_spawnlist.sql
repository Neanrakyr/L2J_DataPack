CREATE TABLE IF NOT EXISTS `raidboss_spawnlist` (
  `boss_id` smallint(5) unsigned NOT NULL,
  `amount` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `loc_x` mediumint(6) NOT NULL,
  `loc_y` mediumint(6) NOT NULL,
  `loc_z` mediumint(6) NOT NULL,
  `heading` mediumint(6) NOT NULL DEFAULT '0',
  `respawn_min_delay` mediumint(6) unsigned NOT NULL DEFAULT '43200', -- 12 Hours (36 Hours - (24 Random Hours))
  `respawn_max_delay` mediumint(6) unsigned NOT NULL DEFAULT '129600', -- (36 Hours)
  `respawn_time` bigint(13) unsigned NOT NULL DEFAULT '0',
  `currentHp` decimal(8,0) DEFAULT NULL,
  `currentMp` decimal(8,0) DEFAULT NULL,
  PRIMARY KEY (`boss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

REPLACE INTO `raidboss_spawnlist` (`boss_id`,`loc_x`,`loc_y`,`loc_z`,`heading`,`respawn_min_delay`,`respawn_max_delay`,`currentHp`,`currentMp`) VALUES
(25001,-54416,146480,-2887,0,43200,129600,95986,514), -- Greyclaw Kutus (23)
(25004,-94208,100240,-3520,0,43200,129600,168366,731), -- Turek Mercenary Captain (30)
(25007,124240,75376,-2800,0,43200,129600,331522,1178), -- Retreat Spider Cletu (42)
(25010,113920,52960,-3735,0,43200,129600,624464,1975), -- Furious Thieles (55)
(25013,169744,11920,-2732,0,43200,129600,507285,1660), -- Ghost Of Peasant Leader (50)
(25016,76787,245775,-10376,0,43200,129600,730956,2301), -- The 3rd Underwater Guardian (60)
(25019,7376,169376,-3600,0,43200,129600,206185,575), -- Pan Dryad (25)
(25020,90384,125568,-2128,0,43200,129600,156584,860), -- Breka Warlock Pastu (34)
(25023,27280,101744,-3696,0,43200,129600,208019,860), -- Stakato Queen Zyrnna (34)
(25026,92976,7920,-3914,0,43200,129600,352421,1598), -- Katu Van Leader Atui (49)
(25029,54941,206705,-3728,0,43200,129600,578190,1847), -- Atraiban (53)
(25032,88532,245798,-10376,0,43200,129600,690320,2169), -- Eva's Guardian Millenu (58)
(25035,180968,12035,-2720,0,43200,129600,888658,2987), -- Shilen's Messenger Cabrio (70)
(25038,-57360,186272,-4967,0,43200,129600,116581,668), -- Tirak (28)
(25041,10416,126880,-3676,0,43200,129600,165289,893), -- Remmel (35)
(25044,107792,27728,-3488,0,43200,129600,319791,1476), -- Barion (47)
(25047,116352,27648,-3319,0,43200,129600,352421,1598), -- Karte (49)
(25050,125520,27216,-3632,0,43200,129600,771340,1722), -- Verfa (51)
(25051,117760,-9072,-3264,0,43200,129600,818959,2639), -- Rahha (65)
(25054,113432,16403,3960,0,43200,129600,945900,3347), -- Kernon (75)
(25057,107056,168176,-3456,0,43200,129600,288415,1355), -- Biconne Of Blue Sky (45)
(25060,-60428,188264,-4512,0,43200,129600,99367,545), -- Unrequited Kael (24)
(25063,-91024,116304,-3466,0,43200,129600,330579,893), -- Chertuba Of Great Soul (35)
(25064,96891,93825,-3720,0,43200,129600,218810,1062), -- Wizard Of Storm Teruk (40)
(25067,94992,-23168,-2176,0,43200,129600,554640,1784), -- Captain Of Red Flag Shaka (52)
(25070,125600,50100,-3600,0,43200,129600,451391,1975), -- Enchanted Forest Watcher Ruell (55)
(25073,143265,110044,-3944,0,43200,129600,875948,2917), -- Bloody Priest Rudelto (69)
(25076,-60976,127552,-2960,0,43200,129600,103092,575), -- Princess Molrang (25)
(25079,53712,102656,-1072,0,43200,129600,168366,731), -- Cat's Eye Bandit (30)
(25082,88512,140576,-3483,0,43200,129600,206753,1028), -- Leader Of Cat Gang (39)
(25085,66944,67504,-3704,0,43200,129600,371721,1296), -- Timak Orc Chief Ranger (44)
(25088,90848,16368,-5296,0,43200,129600,702418,1237), -- Crazy Mechanic Golem (43)
(25089,165424,93776,-2992,0,43200,129600,512194,2235), -- Soulless Wild Boar (59)
(25092,116151,16227,1944,0,43200,129600,888658,2987), -- Korim (70)
(25095,-37856,198128,-2672,0,43200,129600,121941,699), -- Elf Renoa (29)
(25098,123536,133504,-3584,0,43200,129600,330579,893), -- Sejarr's Servitor (35)
(25099,64048,16048,-3536,0,43200,129600,273375,1296), -- Rotten Tree Repiro (44)
(25102,113840,84256,-2480,0,43200,129600,576831,1355), -- Shacram (45)
(25103,135872,94592,-3735,0,43200,129600,451391,1975), -- Sorcerer Isirr (55)
(25106,173880,-11412,-2880,0,43200,129600,526218,2301), -- Ghost Of The Well Lidia (60)
(25109,152660,110387,-5520,0,43200,129600,935092,3274), -- Antharas Priest Cloe (74)
(25112,116128,139392,-3640,0,43200,129600,127782,731), -- Agent Of Beres, Meana (30)
(25115,125789,207644,-3752,0,43200,129600,294846,1062), -- Icarus Sample 1 (40)
(25118,50896,146576,-3645,0,43200,129600,330579,893), -- Guilotine, Warden Of The Execution Grounds (35)
(25119,121872,64032,-3536,0,43200,129600,507285,1660), -- Messenger Of Fairy Queen Berun (50)
(25122,86290,-8232,-3032,0,43200,129600,467209,2039), -- Refugee Hopeful Leo (56)
(25125,170656,85184,-2000,0,43200,129600,1637918,2639), -- Fierce Tiger King Angel (65)
(25126,116263,15916,6992,0,43200,129600,1974940,3643), -- Longhorn Golkonda (79)
(25127,-47552,219232,-2413,0,43200,129600,198734,545), -- Langk Matriarch Rashkos (24)
(25128,17696,179056,-3520,0,43200,129600,148507,827), -- Vuku Grand Seer Gharmash (33)
(25131,75488,-9360,-2720,0,43200,129600,369009,1660), -- Carnage Lord Gato (50)
(25134,87536,75872,-3591,0,43200,129600,218810,1062), -- Leto Chief Talkin (40)
(25137,125280,102576,-3305,0,43200,129600,451391,1975), -- Beleth's Seer Sephia (55)
(25143,113102,16002,6992,0,43200,129600,977229,3568), -- Fire Of Wrath Shuriel (78)
(25146,-13056,215680,-3760,0,43200,129600,90169,455), -- Serpent Demon Bifrons (21)
(25149,-12656,138176,-3584,0,43200,129600,103092,575), -- Zombie Lord Crowl (25)
(25152,43872,123968,-2928,0,43200,129600,165289,893), -- Flame Lord Shadar (35)
(25155,73520,66912,-3728,0,43200,129600,294846,1053), -- Shaman King Selu (40)
(25158,77104,5408,-3088,0,43200,129600,920790,1523), -- King Tarlk (48)
(25159,124984,43200,-3625,0,43200,129600,435256,1911), -- Paniel The Unicorn (54)
(25163,130500,59098,3584,0,43200,129600,1777317,2987), -- Roaring Skylancer (70)
(25166,-21800,152000,-2900,0,43200,129600,134813,575), -- Ikuntai (25)
(25169,-54464,170288,-3136,0,43200,129600,336732,731), -- Ragraman (30)
(25170,26064,121808,-3738,0,43200,129600,195371,994), -- Lizardmen Leader Hellion (38)
(25173,75968,110784,-2512,0,43200,129600,288415,1355), -- Tiger King Karuta (45)
(25176,92544,115232,-3200,0,43200,129600,451391,1975), -- Black Lily (55)
(25179,167152,53120,-4148,0,43200,129600,526218,2301), -- Guardian Of The Statue Of Giant Karum (60)
(25182,41966,215417,-3728,0,43200,129600,512194,2235), -- Demon Kurikups (59)
(25185,99732,204331,-3784,0,43200,129600,165289,893), -- Tasaba Patriarch Hellena (35)
(25188,127544,215264,-2960,0,43200,129600,255564,731), -- Apepi (30)
(25189,127837,200661,-3792,0,43200,129600,156584,860), -- Cronos's Servitor Mumu (34)
(25192,125920,190208,-3291,0,43200,129600,258849,1237), -- Earth Protector Panathen (43)
(25198,102656,157424,-3735,0,43200,129600,1777317,2987), -- Fafurion's Herald Lokness (70)
(25199,108096,157408,-3688,0,43200,129600,912634,3130), -- Water Dragon Seer Sheshark (72)
(25202,119760,157392,-3744,0,43200,129600,935092,3274), -- Krokian Padisha Sobekk (74)
(25205,123808,153408,-3671,0,43200,129600,956490,3420), -- Ocean Flame Ashakiel (76)
(25208,109663,213615,-3624,0,43200,129600,218810,1062), -- Water Couatle Ateka (40)
(25211,113456,198118,-3689,0,43200,129600,174646,927), -- Sebek (36)
(25214,111582,209341,-3687,0,43200,129600,218810,1062), -- Fafurion's Page Sika (40)
(25217,89904,105712,-3292,0,43200,129600,369009,1660), -- Cursed Clara (50)
(25220,113551,17083,-2120,0,43200,129600,924022,3202), -- Death Lord Hallate (73)
(25223,43152,152352,-2848,0,43200,129600,165289,893), -- Soul Collector Acheron (35)
(25226,104240,-3664,-3392,0,43200,129600,768537,2435), -- Roaring Lord Kastor (62)
(25229,137568,-19488,-3552,0,43200,129600,1891801,3347), -- Storm Winged Naga (75)
(25230,66672,46704,-3920,0,43200,129600,482650,2104), -- Timak Seer Ragoth (57)
(25233,185800,-26500,-2000,0,43200,129600,1256671,2917), -- Spirit Of Andras, The Betrayer (69)
(25234,120080,111248,-3047,0,43200,129600,1052436,2301), -- Ancient Weird Drake (60)
(25235,116400,-62528,-3264,0,43200,129600,912634,3130), -- Vanor Chief Kandra (72)
(25238,155000,85400,-3200,0,43200,129600,512194,2235), -- Abyss Brukunt (59)
(25241,165984,88048,-2384,0,43200,129600,624464,1975), -- Harit Hero Tamash (55)
(25244,171880,54868,-5992,0,43200,129600,1891801,3347), -- Last Lesser Giant Olkuth (75)
(25245,188809,47780,-5968,0,43200,129600,977229,3568), -- Last Lesser Giant Glaki (78)
(25248,127903,-13399,-3720,0,43200,129600,1825269,3130), -- Doom Blade Tanatos (72)
(25249,147104,-20560,-3377,0,43200,129600,945900,3347), -- Palatanos Of Horrific Power (75)
(25252,192376,22087,-3608,0,43200,129600,888658,2987), -- Palibati Queen Themis (70)
(25255,170048,-24896,-3440,0,43200,129600,1637918,2639), -- Gargoyle Lord Tiphon (65)
(25256,170320,42640,-4832,0,43200,129600,526218,2301), -- Taik High Prefect Arak (60)
(25259,42050,208107,-3752,0,43200,129600,1248928,1975), -- Zaken's Butcher Krantz (55)
(25260,93120,19440,-3607,0,43200,129600,392985,1355), -- Iron Giant Totem (45)
(25263,144400,-28192,-1920,0,43200,129600,848789,2777), -- Kernon's Faithful Servant Kelone (67)
(25266,188983,13647,-2672,0,43200,129600,945900,3347), -- Bloody Empress Decarbia (75)
(25269,123504,-23696,-3481,0,43200,129600,888658,3058), -- Beast Lord Behemoth (70)
(25272,49248,127792,-3552,0,43200,129600,233163,1415), -- Partisan Leader Talakin (28)
-- (25273,23800,119500,-8976,0,43200,129600,507285,2104), -- Carnamakos (50) -- (Spawn by Quest)
(25276,154088,-14116,-3736,0,43200,129600,1891801,3347), -- Death Lord Ipos (75)
(25277,54651,180269,-4976,0,43200,129600,507285,1660), -- Lilith's Witch Marilion (50)
(25280,85622,88766,-5120,0,43200,129600,1248928,1975), -- Pagan Watcher Cerberon (55)
(25281,151053,88124,-5424,0,43200,129600,1777317,2987), -- Anakim's Nemesis Zakaron (70)
(25282,179311,-7632,-4896,0,43200,129600,1891801,3347), -- Death Lord Shax (75)
-- (25283,184410,-10111,-5488,0,43200,129600,1639146,3793), -- Lilith (80) -- (Spawn by Seven Signs)
-- (25286,185000,-13000,-5488,0,43200,129600,1639146,3793), -- Anakim (80) -- (Spawn by Seven Signs)
-- (25290,186304,-43744,-3193,0,43200,129600,977229,3718), -- Daimon The White-Eyed (78) -- (Spawn by Quest 604_DaimontheWhiteEyedPart2)
(25293,134672,-115600,-1216,0,43200,129600,977229,3568), -- Hestia, Guardian Deity Of The Hot Springs (78)
-- (25296,158352,-121088,-2240,0,43200,129600,935092,3718), -- Icicle Emperor Bumbalump (74) -- (Spawn by Quest 625_TheFinestIngredientsPart2)
(25299,148160,-73808,-4919,0,43200,129600,714778,3718), -- Ketra's Hero Hekaton (80)
(25302,145504,-81664,-6016,0,43200,129600,773553,4183), -- Ketra's Commander Tayr (80)
(25305,145008,-84992,-6240,0,43200,129600,1639965,4553), -- Ketra's Chief Brakki (80)
-- (25306,142368,-82512,-6487,0,43200,129600,534922,3718), -- Soul Of Fire Nastron (80) -- (Spawn by Quest 616_MagicalPowerOfFirePart2)
(25309,115552,-39200,-2480,0,43200,129600,714778,3718), -- Varka's Hero Shadith (80)
(25312,109216,-36160,-938,0,43200,129600,773553,4183), -- Varka's Commander Mos (80)
(25315,105584,-43024,-1728,0,43200,129600,1639965,4553), -- Varka's Chief Horus (80)
-- (25316,105452,-36775,-1050,0,43200,129600,534922,3718), -- Soul Of Water Ashutar (80) -- (Spawn by Quest 610_MagicalPowerOfWaterPart2)
(25319,184542,-106330,-6304,0,43200,129600,1100996,4304), -- Ember (80)
(25322,93296,-75104,-1824,0,43200,129600,834231,2707), -- Demon's Agent Falston (66)
(25325,91008,-85904,-2736,0,43200,129600,888658,2987), -- Flame Of Splendor Barakiel (70)
(25328,59331,-42403,-3003,0,7200,10800,900867,3058), -- Eilhalder Von Hellmann (71) -- (Only Spawn at Night)
-- (25339,0,0,0,0,43200,129600,96646,3718), -- Shadow Of Halisha (81) -- (Spawn by Four Sepulchers Instance)
-- (25342,0,0,0,0,43200,129600,96646,3718), -- Shadow Of Halisha (81) -- (Spawn by Four Sepulchers Instance)
-- (25346,0,0,0,0,43200,129600,96646,3718), -- Shadow Of Halisha (81) -- (Spawn by Four Sepulchers Instance)
-- (25349,0,0,0,0,43200,129600,96646,3718), -- Shadow Of Halisha (81) -- (Spawn by Four Sepulchers Instance)
(25352,-16912,174912,-3264,0,43200,129600,127782,731), -- Giant Wasteland Basilisk (30)
(25354,-16096,184288,-3817,0,43200,129600,165289,893), -- Gargoyle Lord Sirocco (35)
(25357,-3456,112864,-3456,0,43200,129600,90169,455), -- Sukar Wererat Chief (21)
(25360,29216,179280,-3624,0,43200,129600,107186,606), -- Tiger Hornet (26)
(25362,-55920,186768,-3336,0,43200,129600,95986,514), -- Tracker Leader Sharuk (23)
(25365,-62000,190256,-3687,0,43200,129600,214372,606), -- Patriarch Kuroboros (26)
(25366,-62368,179440,-3594,0,43200,129600,95986,514), -- Kuroboros' Priest (23)
(25369,-45616,111024,-3808,0,43200,129600,103092,575), -- Soul Scavenger (25)
(25372,48000,243376,-6611,0,43200,129600,175392,426), -- Discarded Guardian (20)
(25373,9649,77467,-3808,0,43200,129600,90169,455), -- Malex Herald Of Dagoniel (21)
(25375,22500,80300,-2772,0,43200,129600,87696,426), -- Zombie Lord Farakelsus (20)
(25378,-54096,84288,-3512,0,43200,129600,87696,426), -- Madness Beast (20)
(25380,-47367,51548,-5904,0,43200,129600,90169,455), -- Kaysha Herald Of Icarus (21)
(25383,51632,153920,-3552,0,43200,129600,156584,860), -- Revenant Of Sir Calibus (34)
(25385,53600,143472,-3872,0,43200,129600,174646,927), -- Evil Spirit Tempest (36)
(25388,40128,101920,-1241,0,43200,129600,165289,893), -- Red Eye Captain Trakia (35)
(25391,45600,120592,-2455,0,43200,129600,297015,827), -- Nurka's Messenger (33)
(25392,29928,107160,-3708,0,43200,129600,141034,795), -- Captain Of Queen's Royal Guards (32)
(25394,129481,219722,-3600,0,43200,129600,390743,994), -- Premo Prime (38)
(25395,15000,119000,-11900,0,43200,129600,288415,1355), -- Archon Suscepter (45)
(25398,5000,189000,-3728,0,43200,129600,165289,893), -- Eye Of Beleth (35)
(25401,117808,102880,-3600,0,43200,129600,141034,795), -- Skyla (32)
(25404,35992,191312,-3104,0,43200,129600,148507,827), -- Corsair Captain Kylon (33)
(25407,115072,112272,-3018,0,43200,129600,526218,2301), -- Lord Ishka (60)
(25410,72192,125424,-3657,0,43200,129600,218810,1062), -- Road Scavenger Leader (40)
(25415,128352,138464,-3467,0,43200,129600,218810,1062), -- Nakondas (40)
(25418,62416,8096,-3376,0,43200,129600,273375,1296), -- Dread Avenger Kraven (44)
(25420,42032,24128,-4704,0,43200,129600,335987,1537), -- Orfen's Handmaiden (48)
(25423,113600,47120,-4640,0,43200,129600,539706,2368), -- Fairy Queen Timiniel (61)
(25426,-18048,-101264,-2112,0,43200,129600,103092,575), -- Betrayer Of Urutu Freki (25)
(25429,172064,-214752,-3565,0,43200,129600,103092,575), -- Mammon Collector Talos (25)
(25431,79648,18320,-5232,0,43200,129600,273375,1296), -- Flamestone Golem (44)
(25434,104096,-16896,-1803,0,43200,129600,451391,1975), -- Bandit Leader Barda (55)
(25437,67296,64128,-3723,0,43200,129600,576831,1355), -- Timak Orc Gosmos (45)
(25438,107000,92000,-2272,0,43200,129600,273375,1296), -- Thief Kelbar (44)
(25441,111440,82912,-2912,0,43200,129600,288415,1355), -- Evil Spirit Cyrion (45)
(25444,113232,17456,-4384,0,43200,129600,588136,2639), -- Enmity Ghost Ramdal (65)
(25447,113200,17552,-1424,0,43200,129600,645953,3058), -- Immortal Savior Mardil (71)
(25450,113600,15104,9559,0,43200,129600,987470,3643), -- Cherub Galaxia (79)
(25453,156704,-6096,-4185,0,43200,129600,888658,2987), -- Meanas Anor (70)
(25456,133632,87072,-3623,0,43200,129600,352421,1598), -- Mirror Of Oblivion (49)
(25460,150304,67776,-3688,0,43200,129600,385670,1722), -- Deadman Ereve (51)
(25463,166288,68096,-3264,0,43200,129600,467209,2039), -- Harit Guardian Garangky (56)
(25473,175712,29856,-3776,0,43200,129600,402319,1784), -- Grave Robber Kim (52)
(25475,183568,24560,-3184,0,43200,129600,451391,1975), -- Ghost Knight Kabed (55)
(25478,168288,28368,-3632,0,43200,129600,588136,2639), -- Shilen's Priest Hisilrome (65)
(25481,53517,205413,-3728,0,43200,129600,418874,1847), -- Magus Kenishee (53)
(25484,43160,220463,-3680,0,43200,129600,369009,1660), -- Zaken's Chief Mate Tillion (50)
(25493,83174,254428,-10873,0,43200,129600,451391,1975), -- Eva's Spirit Niniel (55)
(25496,88300,258000,-10200,0,43200,129600,402319,1784), -- Fafurion's Envoy Pingolpin (52)
(25498,126624,174448,-3056,0,43200,129600,288415,1355), -- Fafurion's Henchman Istary (45)
(25501,48575,-106191,-1568,0,43200,129600,127782,731), -- Boss Akata (30)
(25504,123000,-141000,-1100,0,43200,129600,206753,1028), -- Nellis' Vengeful Spirit (39)
(25506,127900,-160600,-1100,0,43200,129600,184670,960), -- Rayito The Looter (37)
(25523,170000,-60000,-3500,0,43200,129600,1848045,3202), -- Plague Golem (73)
(25524,144600,-5500,-4100,0,43200,129600,956490,3420), -- Flamestone Giant (76)
(25527,3776,-6768,-3276,0,43200,129600,1608553,451), -- Uruka (80)
-- (25528,0,0,0,0,43200,129600,49148,9999), -- Tiberias (22) -- handled by instance script
-- (25531,0,0,0,0,43200,129600,2140552,9999), -- Darnel (81) -- stats to be done
-- (25532,0,0,0,0,43200,129600,534278,9999), -- Kechi (82) -- stats to be done
-- (25534,0,0,0,0,43200,129600,2129066,9999), -- Tears (83) -- stats to be done
-- (25536,0,0,0,0,43200,129600,1027906,9999), -- Hannibal (83) -- stats to be done
(25539,-17475,253163,-3432,0,43200,129600,2076371,9999), -- Typhoon (84)
-- (25540,0,0,0,0,43200,129600,3524173,9999), -- Demon Prince (83) -- stats to be done
-- (25542,0,0,0,0,43200,129600,3524173,9999), -- Ranku (83) -- stats to be done
(25544,-12557,273901,-9000,0,43200,129600,2682423,4177), -- Tully (83)
(25603,20886,244088,11062,0,43200,129600,2308600,4255), -- Darion (87)
-- (25609,0,0,0,0,43200,129600,9999,9999), -- Epidos (?) -- stats to be done
-- (25610,0,0,0,0,43200,129600,9999,9999), -- Epidos (?) -- stats to be done
-- (25611,0,0,0,0,43200,129600,9999,9999), -- Epidos (?) -- stats to be done
-- (25612,0,0,0,0,43200,129600,9999,9999), -- Epidos (?) -- stats to be done
-- (25623,-192361,254528,15,0,43200,129600,99999,99999), -- Valdstone (?) -- stats to be done
-- (25624,-174600,219711,44,0,43200,129600,99999,99999), -- Rok (?) -- stats to be done
-- (25625,-181989,208968,44,0,43200,129600,99999,99999), -- Enira (?) -- stats to be done
-- (25626,-252898,235845,53,0,43200,129600,99999,99999), -- Dius (?) -- stats to be done
-- (25643,0,0,0,0,43200,129600,9999,9999), -- Awakened Ancient Sentry (?) -- stats to be done
-- (25644,0,0,0,0,43200,129600,9999,9999), -- Awakened Ancient Severer (?) -- stats to be done
-- (25645,0,0,0,0,43200,129600,9999,9999), -- Awakened Ancient Soul Extractor (?) -- stats to be done
-- (25646,0,0,0,0,43200,129600,9999,9999), -- Awakened Ancient Soul Devourer (?) -- stats to be done
-- (25647,0,0,0,0,43200,129600,9999,9999), -- Awakened Ancient Fighter (?) -- stats to be done
-- (25648,0,0,0,0,43200,129600,9999,9999), -- Awakened Ancient Fighter (?) -- stats to be done
-- (25649,0,0,0,0,43200,129600,9999,9999), -- Awakened Ancient Executor (?) -- stats to be done
-- (25650,0,0,0,0,43200,129600,9999,9999), -- Awakened Ancient Executor (?) -- stats to be done
-- (25651,0,0,0,0,43200,129600,9999,9999), -- Awakened Ancient Prophet  (?) -- stats to be done
-- (25652,0,0,0,0,43200,129600,9999,9999), -- Awakened Ancient Prophet (?) -- stats to be done
-- (25665,0,0,0,0,43200,129600,9999,9999), -- Yehan Klodekus (?) -- stats to be done
-- (25666,0,0,0,0,43200,129600,9999,9999), -- Yehan Klanikus (?) -- stats to be done
-- (25667,0,0,0,0,43200,129600,9999,9999), -- Cannibalistic Stakato Chief (?) -- stats to be done
(25671,79634,-55428,-6104,0,43200,86400,743801,4022), -- Queen Shyeed (84)
(25674,86534,216888,-3176,0,43200,129600,736436,3945), -- Gwindorr (83)
(25677,83056,183232,-3616,0,43200,129600,743801,4022), -- Water Spirit Lian (84)
(25680,193902,54135,-4184,0,0,21600,2035459,3869), -- Giant Marpanak (82)
(25681,186210,61479,-4000,0,0,21600,729145,3869), -- Gorgolos (82)
(25684,186919,56297,-4480,0,0,21600,736436,3945), -- Last Titan Utenus (83)
-- (25687,191777,56197,-7624,0,0,3600,1027906,3945), -- Hekaton Prime (83) (Spawn by Quest)
(25701,112798,-76800,-10,-15544,43200,129600,2231403,48422), -- Anays (84)
(29040,189400,-105702,-782,0,604800,604800,520605,4140), -- Wings of Flame Ixion (84)
(29054,11882,-49216,-3008,0,0,0,1352750,1494), -- Venom (75)
-- (29060,106000,-128000,-3000,0,43200,129600,1566263,9999), -- Captain Of The Ice Queen's Royal Guard (59) (Spawn by Quest)
-- (29062,-16373,-53562,-10197,0,43200,129600,275385,9999), -- Andreas Van Halter (80) -- stats to be done (Spawn by Quest)
-- (29065,26528,-8244,-2007,0,43200,129600,1639965,9999), -- Sailren (80) -- stats to be done (Spawn by Quest)
(29095,141569,-45908,-2387,0,43200,129600,2289038,4553); -- Gordon (80) -- walking around Goddard