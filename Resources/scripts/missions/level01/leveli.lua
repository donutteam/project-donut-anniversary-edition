Game.EnableTutorialMode(1);

Game.InitLevelPlayerVehicle("famil_v", "level1_carstart", "DEFAULT");
 
Game.AddCharacter("homer","homer");

Game.CreateChaseManager("cPolice","Pursuit\\L1cop.con",1);
Game.SetHitAndRunDecay(0.1);
Game.SetNumChaseCars("1");

Game.AddNPCCharacterBonusMission("milhouse", "npd", "sr1_mhouse_sd", "sr1", "checkered", "intro", 0, "checkeredfinish");
	Game.SetBonusMissionDialoguePos("sr1", "sr1_player", "sr1_mhouse_sd", "level1_carstart");

	Game.SetConversationCam(0, "pc_far", "sr1");	
	Game.SetConversationCam(1, "npc_far", "sr1");

	Game.ClearAmbientAnimations("sr1");

	Game.AddAmbientNpcAnimation("dialogue_scratch_head", "sr1");
	Game.AddAmbientPcAnimation("dialogue_open_arm_hand_gesture", "sr1");

	Game.AddAmbientNpcAnimation("dialogue_no", "sr1");
	Game.AddAmbientPcAnimation("dialogue_scratch_head", "sr1");

	Game.SetCamBestSide("bm1_bestside", "sr1");

	Game.AddBonusMissionNPCWaypoint("milhouse", "sr1_player");
	Game.AddBonusMissionNPCWaypoint("milhouse", "sr1_mhouse_sd");

Game.AddNPCCharacterBonusMission("nelson", "npd", "sr2_nelson_sd", "sr2", "checkered", "intro", 0, "checkeredfinish");
	Game.SetBonusMissionDialoguePos("sr2", "sr2_player", "sr2_nelson_sd", "level1_carstart");

	Game.SetConversationCam(0, "pc_far", "sr2");	
	Game.SetConversationCam(1, "npc_far", "sr2");

	Game.ClearAmbientAnimations("sr2");

	Game.AddAmbientNpcAnimation("none", "sr2");
	Game.AddAmbientPcAnimation("dialogue_open_arm_hand_gesture", "sr2");

	Game.AddAmbientNpcAnimation("dialogue_hands_in_air", "sr2");
	Game.AddAmbientPcAnimation("dialogue_cross_arms", "sr2");

	Game.SetCamBestSide("eddie_walk2", "sr2");

Game.AddNPCCharacterBonusMission("ralph", "npd", "sr3_ralph_sd", "sr3", "checkered", "intro", 0, "checkeredfinish");
	Game.SetBonusMissionDialoguePos("sr3","sr3_player","sr3_ralph_sd","level1_carstart");

	Game.SetConversationCam(0, "pc_far", "sr3");	
	Game.SetConversationCam(1, "npc_far", "sr3");

	Game.ClearAmbientAnimations("sr3");

	Game.AddAmbientNpcAnimation("none", "sr3");
	Game.AddAmbientPcAnimation("dialogue_open_arm_hand_gesture", "sr3");

	Game.AddAmbientNpcAnimation("dialogue_hands_on_hips", "sr3");
	Game.AddAmbientPcAnimation("dialogue_scratch_head", "sr3");

	Game.SetCamBestSide("bm1_bestside", "sr3");

	Game.AddBonusMissionNPCWaypoint("ralph", "sr3_player");
	Game.AddBonusMissionNPCWaypoint("ralph", "sr3_ralph_sd");

Game.AddNPCCharacterBonusMission("louie", "npd", "sr4_louie_sd", "gr1", "dice", "intro", 0);

Game.AddNPCCharacterBonusMission("cletus", "npd", "bm1_cletus_sd", "bm1", "exclamation", "jug", 1, "exclamation_shadow");
	Game.SetBonusMissionDialoguePos("bm1","bm1_player","bm1_cletus_sd","level1_carstart");

	Game.SetConversationCam(0, "pc_near", "bm1");	
	Game.SetConversationCam(1, "npc_far", "bm1");
	Game.SetConversationCam(2, "pc_far",	"bm1");	
	Game.SetConversationCam(3, "npc_near", "bm1");
	Game.SetConversationCam(4, "pc_near", "bm1");	
	Game.SetConversationCam(5, "npc_far", "bm1");

	Game.ClearAmbientAnimations("bm1");

	Game.AddAmbientNpcAnimation("dialogue_thinking","bm1");
	Game.AddAmbientPcAnimation("dialogue_scratch_head", "bm1");
	
	Game.AddAmbientNpcAnimation("dialogue_no", "bm1");
	Game.AddAmbientPcAnimation("none", "bm1");

	Game.AddAmbientNpcAnimation("none", "bm1");	
	Game.AddAmbientPcAnimation("dialogue_yes", "bm1");

	Game.AddAmbientNpcAnimation("dialogue_thinking",	"bm1");
	Game.AddAmbientPcAnimation("none", "bm1");

	Game.AddAmbientNpcAnimation("none", "bm1");
	Game.AddAmbientPcAnimation("dialogue_hands_in_air", "bm1");

	Game.AddAmbientNpcAnimation("dialogue_shake_hand_in_air", "bm1");
	Game.AddAmbientPcAnimation("none", "bm1");

	Game.SetCamBestSide("bm1_bestside", "bm1");

	Game.AddBonusMissionNPCWaypoint("cletus", "bm1_cletus_walk1");
	Game.AddBonusMissionNPCWaypoint("cletus", "bm1_cletus_walk2");
	Game.AddBonusMissionNPCWaypoint("cletus", "bm1_cletus_sd");

Game.AddAmbientCharacter("apu", "m0_apu_place", 1.8);

Game.AddAmbientCharacter("ralph", "ambient_ralph", 1.3);
	Game.AddAmbientNPCWaypoint("ralph", "ralph_walk1");
	Game.AddAmbientNPCWaypoint("ralph", "ralph_walk2");
	Game.AddAmbientNPCWaypoint("ralph", "ralph_walk3");
	
Game.AddAmbientCharacter("moleman", "ambient_moleman", 0);
	Game.AddAmbientNPCWaypoint("moleman", "moleman_walk1");
	Game.AddAmbientNPCWaypoint("moleman", "moleman_walk2");
	Game.AddAmbientNPCWaypoint("moleman", "moleman_walk3");
	Game.AddAmbientNPCWaypoint("moleman", "moleman_walk4");
	Game.AddAmbientNPCWaypoint("moleman", "moleman_walk3");
	Game.AddAmbientNPCWaypoint("moleman", "moleman_walk2");
	Game.AddAmbientNPCWaypoint("moleman", "moleman_walk1");
	
Game.AddAmbientCharacter("grandpa", "ambient_grandpa", 0);
	Game.AddAmbientNPCWaypoint("grandpa", "grandpa_walk1");
	Game.AddAmbientNPCWaypoint("grandpa", "grandpa_walk2");
	Game.AddAmbientNPCWaypoint("grandpa", "grandpa_walk3");
	Game.AddAmbientNPCWaypoint("grandpa", "grandpa_walk4");
	Game.AddAmbientNPCWaypoint("grandpa", "grandpa_walk5");
	Game.AddAmbientNPCWaypoint("grandpa", "grandpa_walk4");
	Game.AddAmbientNPCWaypoint("grandpa", "grandpa_walk3");
	Game.AddAmbientNPCWaypoint("grandpa", "grandpa_walk2");
	Game.AddAmbientNPCWaypoint("grandpa", "grandpa_walk1");
	
Game.AddAmbientCharacter("patty", "ambient_patty", 1.3);
	Game.AddAmbientNPCWaypoint("patty", "patty_walk1");
	Game.AddAmbientNPCWaypoint("patty", "patty_walk2");
	Game.AddAmbientNPCWaypoint("patty", "patty_walk3");
	Game.AddAmbientNPCWaypoint("patty", "patty_walk4");
	Game.AddAmbientNPCWaypoint("patty", "patty_walk5");
	Game.AddAmbientNPCWaypoint("patty", "patty_walk4");
	Game.AddAmbientNPCWaypoint("patty", "patty_walk3");
	Game.AddAmbientNPCWaypoint("patty", "patty_walk2");
	Game.AddAmbientNPCWaypoint("patty", "patty_walk1");

Game.AddAmbientCharacter("lisa", "m1_lisa_place", 1.3);
		
Game.AddAmbientCharacter("willie", "ambient_willie", 1.3);
	Game.AddAmbientNPCWaypoint("willie", "willie_walk1");
	Game.AddAmbientNPCWaypoint("willie", "willie_walk2");
	Game.AddAmbientNPCWaypoint("willie", "willie_walk3");
	Game.AddAmbientNPCWaypoint("willie", "willie_walk2");
	Game.AddAmbientNPCWaypoint("willie", "willie_walk1");

Game.AddAmbientCharacter("eddie", "ambient_eddie", 0);
	Game.AddAmbientNPCWaypoint("eddie", "eddie_walk1");
	Game.AddAmbientNPCWaypoint("eddie", "eddie_walk2");
	Game.AddAmbientNPCWaypoint("eddie", "eddie_walk3");
	Game.AddAmbientNPCWaypoint("eddie", "eddie_walk4");
	Game.AddAmbientNPCWaypoint("eddie", "eddie_walk5");
	Game.AddAmbientNPCWaypoint("eddie", "eddie_walk4");
	Game.AddAmbientNPCWaypoint("eddie", "eddie_walk3");
	Game.AddAmbientNPCWaypoint("eddie", "eddie_walk2");
	Game.AddAmbientNPCWaypoint("eddie", "eddie_walk1");

Game.AddAmbientCharacter("krusty", "ambient_krusty", 0);
	Game.AddAmbientNPCWaypoint("krusty", "krusty_walk1");
	Game.AddAmbientNPCWaypoint("krusty", "krusty_walk2");
	Game.AddAmbientNPCWaypoint("krusty", "krusty_walk3");
	Game.AddAmbientNPCWaypoint("krusty", "krusty_walk2");
	Game.AddAmbientNPCWaypoint("krusty", "krusty_walk1");

Game.AddAmbientCharacter("lenny", "ambient_lenny", 0);
	Game.AddAmbientNPCWaypoint("lenny", "lenny_walk1");
	Game.AddAmbientNPCWaypoint("lenny", "lenny_walk2");
	Game.AddAmbientNPCWaypoint("lenny", "lenny_walk3");
	Game.AddAmbientNPCWaypoint("lenny", "lenny_walk2");
	Game.AddAmbientNPCWaypoint("lenny", "lenny_walk1");

Game.AddAmbientCharacter("moe", "ambient_moe", 1.3);
	Game.AddAmbientNPCWaypoint("moe", "moe_walk1");
	Game.AddAmbientNPCWaypoint("moe", "moe_walk2");
	Game.AddAmbientNPCWaypoint("moe", "moe_walk1");
	
Game.AddPurchaseCarReward("gil", "gil", "npd", "gil_loc", 1.3, "gil_car");
	Game.AddPurchaseCarNPCWaypoint("gil", "gil_walk1");

Game.AddPurchaseCarReward("simpson", "barney", "npd", "barney_loc", 1.3, "barney_car");
	Game.AddPurchaseCarNPCWaypoint("barney", "barney_walk1");

Game.CreateTrafficGroup(0);
	Game.AddTrafficModel("minivanA",  2);
	Game.AddTrafficModel("glastruc",  1, 1);
	-- Game.AddTrafficModel("cDonut", 1, 1);
	Game.AddTrafficModel("nuctruck",	 1, 1);
	Game.AddTrafficModel("pickupA",   1);
Game.CloseTrafficGroup();

-- Z1/R1
Game.CreatePedGroup(0);
	Game.AddPed("male6",  2);
	Game.AddPed("girl4",  1);
	Game.AddPed("fem4",   2);
	Game.AddPed("boy3",   2);
Game.ClosePedGroup();

-- Z2
Game.CreatePedGroup(1);
	Game.AddPed("olady1", 2);
	Game.AddPed("olady2", 2);
	Game.AddPed("fem3",   2);
	Game.AddPed("male3",  1);
Game.ClosePedGroup();

-- R2
Game.CreatePedGroup(2);
	Game.AddPed("male2",  2);
	Game.AddPed("olady3", 2);
	Game.AddPed("girl1",  2);
	Game.AddPed("fem4",   1);
Game.ClosePedGroup();

-- Z3
Game.CreatePedGroup(3);
	Game.AddPed("boy2",  2);
	Game.AddPed("boy3",  1);
	Game.AddPed("girl2", 2);
	Game.AddPed("girl3", 2);
Game.ClosePedGroup();

-- R3/Z4
Game.CreatePedGroup(4);
	Game.AddPed("fem4",  2);
	Game.AddPed("busm1", 2);
	Game.AddPed("busw1", 2);
	Game.AddPed("busm2", 1);
Game.ClosePedGroup();

-- R6/Z7
Game.CreatePedGroup(5);
	Game.AddPed("farmr1", 2);
	Game.AddPed("rednk1", 1);
	Game.AddPed("bum",    2);
	Game.AddPed("hooker", 2);
Game.ClosePedGroup();

-- R7
Game.CreatePedGroup(6);
	Game.AddPed("joger1", 2);
	Game.AddPed("male5",  1);
	Game.AddPed("male2",  2);
	Game.AddPed("fem2",   2);
Game.ClosePedGroup();

-- Z6
Game.CreatePedGroup(7);
	Game.AddPed("nuclear", 7);
Game.ClosePedGroup();

Game.SetCoinDrawable("coinShape_000");

Game.SetParticleTexture(0, "scratch2.bmp");   -- sparkles.
Game.SetParticleTexture(1, "spark4.bmp");	  -- sparks when vehicle hits.
Game.SetParticleTexture(2, "cloud.tga");	  -- dust cloud when running/jumping.
Game.SetParticleTexture(3, "cloud.tga");	  -- leaves when hitting shrubs/trees.
Game.SetParticleTexture(4, "star.tga");	      -- stars when hitting something static.
Game.SetParticleTexture(5, "cloud.tga");	  -- paint chips when vehicle is damaged.
Game.SetParticleTexture(6, "halo.bmp");       -- Ring for shock wave fx.

Game.PreallocateActors("beecamera", "3");
Game.SetProjectileStats("waspray", "90.0", "10");
Game.AddBehaviour("beecamera", "EVADE_PLAYER",  "1.0",  "3.5",  "1.0", "2.0", "30" );
Game.AddBehaviour("beecamera", "ATTRACTION",    "2.0",  "10",   "10.0");
Game.AddBehaviour("beecamera", "ATTACK_PLAYER", "15.0", "3.0" , "1.0");

Game.SetActorRotationSpeed("beecamera", "160.0");

if Settings.ShieldedWaspCameras then
	Game.AddShield("beecamera", "beeshield");
end

Game.AddSpawnPointByLocatorScript("w_lemon","beecamera","Shelley","w_lemon","15.0","60");

Game.AddSpawnPointByLocatorScript("w_schoolroof1","beecamera","Shelley","w_schoolroof1","15.0","60");

Game.AddSpawnPointByLocatorScript("w_bonuscar","beecamera","Shelley","w_bonuscar","50.0","60");

Game.AddSpawnPointByLocatorScript("w_stonetemple","beecamera","Shelley","w_stonetemple","60.0","60");

Game.AddSpawnPointByLocatorScript("w_trailor1","beecamera","Shelley","w_trailor1","50.0","60");

Game.AddSpawnPointByLocatorScript("w_trailor2","beecamera","Shelley","w_trailor2","50.0","60");

Game.AddSpawnPointByLocatorScript("w_cardguard","beecamera","Shelley","w_cardguard","60.0","60");

Game.AddSpawnPointByLocatorScript("w_bridge1","beecamera","Shelley","w_bridge1","30.0","60");

Game.AddSpawnPointByLocatorScript("w_bridge2","beecamera","Shelley","w_bridge2","30.0","60");

Game.AddSpawnPointByLocatorScript("w_barn","beecamera","Shelley","w_barn","20.0","60");

Game.AddSpawnPointByLocatorScript("w_simpsons","beecamera","Shelley","w_simpsons","10.0","60");
	Game.AddBehaviour("w_simpsons", "ATTACK_PLAYER", "10.0", "5.0" , "-1.0");
	Game.AddBehaviour("w_simpsons", "ATTRACTION", "2.0","20","-1");

Game.AddSpawnPointByLocatorScript("w_flanders","beecamera","Shelley","w_flanders","10.0","60");
	Game.AddBehaviour("w_flanders", "ATTACK_PLAYER", "10.0", "5.0" , "-1.0");
	Game.AddBehaviour("w_flanders", "ATTRACTION", "2.0","20","-1");

Game.AddSpawnPointByLocatorScript("w_wiggum","beecamera","Shelley","w_wiggum","8.0","60");
	Game.AddBehaviour("w_wiggum", "ATTACK_PLAYER", "20.0", "5.0" , "-1.0");
	Game.AddBehaviour("w_wiggum", "ATTRACTION", "2.0","20","-1");

Game.AddSpawnPointByLocatorScript("w_kwickemart","beecamera","Shelley","w_kwickemart","10.0","60");
	Game.AddBehaviour("w_kwickemart", "ATTACK_PLAYER", "10.0", "5.0" , "-1.0");
	Game.AddBehaviour("w_kwickemart", "ATTRACTION", "2.0","20","-1");

Game.AddSpawnPointByLocatorScript("w_lardlad","beecamera","Shelley","w_lardlad","8.0","60");
	Game.AddBehaviour("w_lardlad", "ATTACK_PLAYER", "20.0", "5.0" , "-1.0");
	Game.AddBehaviour("w_lardlad", "ATTRACTION", "2.0","20","-1");

Game.AddSpawnPointByLocatorScript("w_gasroof","beecamera","Shelley","w_gasroof","15.0","60");
	Game.AddBehaviour("w_gasroof", "ATTACK_PLAYER", "10.0", "5.0" , "-1.0");
	Game.AddBehaviour("w_gasroof", "ATTRACTION", "2.0", "20", "-1");

Game.AddSpawnPointByLocatorScript("w_schoolroof2","beecamera","Shelley","w_schoolroof2","15.0","60");
	Game.AddBehaviour("w_schoolroof2", "ATTACK_PLAYER", "20.0", "5.0" , "-1.0");
	Game.AddBehaviour("w_schoolroof2", "ATTRACTION", "2.0","20","-1");

Game.AddSpawnPointByLocatorScript("w_playground","beecamera","Shelley","w_playground","15.0","60");
	Game.AddBehaviour("w_playground", "ATTACK_PLAYER", "10.0", "5.0" , "-1.0");
	Game.AddBehaviour("w_playground", "ATTRACTION", "2.0", "20", "-1");

Game.AddSpawnPointByLocatorScript("w_schoolstairs","beecamera","Shelley","w_schoolstairs","15.0","60");
	Game.AddBehaviour("w_schoolstairs", "ATTACK_PLAYER", "20.0", "5.0" , "-1.0");
	Game.AddBehaviour("w_schoolstairs", "ATTRACTION", "2.0", "20", "-1");

Game.AddSpawnPointByLocatorScript("w_tower","beecamera","Shelley","w_tower","15.0","60");
	Game.AddBehaviour("w_tower", "ATTACK_PLAYER", "20.0", "5.0", "-1.0");
	Game.AddBehaviour("w_tower", "ATTRACTION", "2.0", "20", "-1");

Game.AddSpawnPointByLocatorScript("w_powerplant2","beecamera","Shelley","w_powerplant2","20.0","60"); -- In the Entrance of the Powerplant by Homer's Office

Game.AddSpawnPointByLocatorScript("w_powerplant3","beecamera","Shelley","w_powerplant3","20.0","60"); -- In the Entrance of the Powerplant by Homer's Office

Game.AddSpawnPointByLocatorScript("w_powerplant4","beecamera","Shelley","w_powerplant4","20.0","60"); -- In the Entrance of the Powerplant by Homer's Office

Game.AddSpawnPointByLocatorScript("w_b_riverburger","beecamera","Shelley","w_b_riverburger","15.0","60"); --Behind Krusty Burger by the River
	Game.AddBehaviour("w_b_riverburger", "ATTACK_PLAYER", "10.0", "5.0" , "-1.0");
	Game.AddBehaviour("w_b_riverburger", "EVADE_PLAYER", "2.0","20","-1");

Game.AddSpawnPointByLocatorScript("w_b_everterr","beecamera","Shelley","w_b_everterr","15.0","60"); --Behind Evergreen Terrace Sign
	Game.AddBehaviour("w_b_everterr", "ATTACK_PLAYER", "20.0", "5.0", "-1.0");
	Game.AddBehaviour("w_b_everterr", "ATTRACTION", "2.0","20","-1");

Game.AddSpawnPointByLocatorScript("w_b_firetruck","beecamera","Shelley","w_b_firetruck","15.0","60"); --Behind Crashsite
	Game.AddBehaviour("w_b_firetruck", "ATTACK_PLAYER", "20.0", "5.0", "-1.0");
	Game.AddBehaviour("w_b_firetruck", "ATTRACTION", "2.0","20","-1");

Game.AddSpawnPointByLocatorScript("w_b_crashburger","beecamera","Shelley","w_b_crashburger","15.0","60"); --On top of Krusty Burger by Crashsite
	Game.AddBehaviour("w_b_crashburger", "ATTACK_PLAYER", "20.0", "5.0", "-1.0");
	Game.AddBehaviour("w_b_crashburger", "ATTRACTION", "2.0","20","-1");

Game.AddSpawnPointByLocatorScript("w_b_driveway","beecamera","Shelley","w_b_driveway","15.0","60"); --In driveway on Sideroad by Crashsite
	Game.AddBehaviour("w_b_driveway", "ATTACK_PLAYER", "20.0", "5.0", "-1.0");
	Game.AddBehaviour("w_b_driveway", "ATTRACTION", "2.0", "20", "-1");

Game.AddSpawnPointByLocatorScript("w_b_retire","beecamera","Shelley","w_b_retire","15.0","60"); --On top of Krusty Burger by Crashsite
	Game.AddBehaviour("w_b_retire", "ATTACK_PLAYER", "20.0", "5.0", "-1.0");
	Game.AddBehaviour("w_b_retire", "ATTRACTION", "2.0", "20", "-1");

Game.AddSpawnPointByLocatorScript("w_b_dip","beecamera","Shelley","w_b_dip","15.0","60"); --Under Drawbridge
	Game.AddBehaviour("w_b_dip", "ATTACK_PLAYER", "20.0", "5.0", "-1.0");
	Game.AddBehaviour("w_b_dip", "ATTRACTION", "2.0", "20", "-1");

Game.AddSpawnPointByLocatorScript("w_b_stopnshop","beecamera","Shelley","w_b_stopnshop","15.0","60"); --Under Drawbridge
	Game.AddBehaviour("w_b_stopnshop", "ATTACK_PLAYER", "20.0", "5.0" , "-1.0");

Game.AddSpawnPointByLocatorScript("w_b2_opphouse","beecamera","Shelley","w_b2_opphouse","15.0","60"); --In the driveway of the house opposite the Simpsons.
	Game.AddBehaviour("w_b2_opphouse", "ATTACK_PLAYER", "20.0", "5.0", "-1.0");

Game.AddSpawnPointByLocatorScript("w_b2_tree","beecamera","Shelley","w_b2_tree","15.0","60"); --Behind a tree near Evergreen Terrace
	Game.AddBehaviour("w_b2_tree", "ATTACK_PLAYER", "20.0", "5.0", "-1.0");

Game.AddSpawnPointByLocatorScript("w_b2_gil7","beecamera","Shelley","w_b2_gil7","15.0","60"); --Behind Crashsite
	Game.AddBehaviour("w_b2_gil7", "ATTACK_PLAYER", "20.0", "5.0", "-1.0");

Game.AddSpawnPointByLocatorScript("w_b2_oppkb","beecamera","Shelley","w_b2_oppkb","15.0","60"); --Near the Krusty Burger by the School
	Game.AddBehaviour("w_b2_oppkb", "ATTACK_PLAYER", "20.0", "5.0", "-1.0");

Game.AddSpawnPointByLocatorScript("w_b2_battingcage","beecamera","Shelley","w_b2_battingcage","15.0","60"); --Behind the School's Batting Cage
	Game.AddBehaviour("w_b2_battingcage", "ATTACK_PLAYER", "20.0", "5.0", "-1.0");

Game.AddSpawnPointByLocatorScript("w_b2_schoolparkinglot","beecamera","Shelley","w_b2_schoolparkinglot","15.0","60"); --In the School's Parking Lot
	Game.AddBehaviour("w_b2_schoolparkinglot", "ATTACK_PLAYER", "20.0", "5.0", "-1.0");

Game.AddSpawnPointByLocatorScript("w_b2_stairs","beecamera","Shelley","w_b2_stairs","15.0","60"); --On stairs on the Rich Side
	Game.AddBehaviour("w_b2_stairs", "ATTACK_PLAYER", "20.0", "5.0", "-1.0");

Game.AddSpawnPointByLocatorScript("w_b2_pool","beecamera","Shelley","w_b2_pool","15.0","60"); --Near the Rich Side pool
	Game.AddBehaviour("w_b2_pool", "ATTACK_PLAYER", "20.0", "5.0", "-1.0");

Game.AddSpawnPointByLocatorScript("w_b2_burns","beecamera","Shelley","w_b2_burns","15.0","60"); --In the back of Mr Burns Mansion
	Game.AddBehaviour("w_b2_burns", "ATTACK_PLAYER", "20.0", "5.0", "-1.0");