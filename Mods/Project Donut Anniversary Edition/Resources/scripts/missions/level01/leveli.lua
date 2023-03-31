Game.EnableTutorialMode(1)

Game.InitLevelPlayerVehicle("famil_v", "level1_carstart", "DEFAULT")
 
Game.AddCharacter("homer","homer")

Game.CreateChaseManager(HitAndRunCarModel, "gen\\hitandrun.con", 1)
Game.SetHitAndRunDecay(0.1)
Game.SetNumChaseCars(Settings.HitAndRunCarCount)

Game.AddNPCCharacterBonusMission("milhouse", "npd", "sr1_mhouse_sd", "sr1", "checkered", "intro", 0, "checkeredfinish")
	Game.SetBonusMissionDialoguePos("sr1", "sr1_player", "sr1_mhouse_sd", "level1_carstart")

	Game.SetConversationCam(0, "pc_far", "sr1")	
	Game.SetConversationCam(1, "npc_far", "sr1")

	Game.ClearAmbientAnimations("sr1")

	Game.AddAmbientNpcAnimation("dialogue_scratch_head", "sr1")
	Game.AddAmbientPcAnimation("dialogue_open_arm_hand_gesture", "sr1")

	Game.AddAmbientNpcAnimation("dialogue_no", "sr1")
	Game.AddAmbientPcAnimation("dialogue_scratch_head", "sr1")

	Game.SetCamBestSide("bm1_bestside", "sr1")

	Game.AddBonusMissionNPCWaypoint("milhouse", "sr1_player")
	Game.AddBonusMissionNPCWaypoint("milhouse", "sr1_mhouse_sd")

Game.AddNPCCharacterBonusMission("nelson", "npd", "sr2_nelson_sd", "sr2", "checkered", "intro", 0, "checkeredfinish")
	Game.SetBonusMissionDialoguePos("sr2", "sr2_player", "sr2_nelson_sd", "level1_carstart")

	Game.SetConversationCam(0, "pc_far", "sr2")	
	Game.SetConversationCam(1, "npc_far", "sr2")

	Game.ClearAmbientAnimations("sr2")

	Game.AddAmbientNpcAnimation("none", "sr2")
	Game.AddAmbientPcAnimation("dialogue_open_arm_hand_gesture", "sr2")

	Game.AddAmbientNpcAnimation("dialogue_hands_in_air", "sr2")
	Game.AddAmbientPcAnimation("dialogue_cross_arms", "sr2")

	Game.SetCamBestSide("eddie_walk2", "sr2")

Game.AddNPCCharacterBonusMission("ralph", "npd", "sr3_ralph_sd", "sr3", "checkered", "intro", 0, "checkeredfinish")
	Game.SetBonusMissionDialoguePos("sr3","sr3_player","sr3_ralph_sd","level1_carstart")

	Game.SetConversationCam(0, "pc_far", "sr3")
	Game.SetConversationCam(1, "npc_far", "sr3")

	Game.ClearAmbientAnimations("sr3")

	Game.AddAmbientNpcAnimation("none", "sr3")
	Game.AddAmbientPcAnimation("dialogue_open_arm_hand_gesture", "sr3")

	Game.AddAmbientNpcAnimation("dialogue_hands_on_hips", "sr3")
	Game.AddAmbientPcAnimation("dialogue_scratch_head", "sr3")

	Game.SetCamBestSide("bm1_bestside", "sr3")

	Game.AddBonusMissionNPCWaypoint("ralph", "sr3_player")
	Game.AddBonusMissionNPCWaypoint("ralph", "sr3_ralph_sd")

Game.AddNPCCharacterBonusMission("louie", "npd", "sr4_louie_sd", "gr1", "dice", "intro", 0)

Game.AddNPCCharacterBonusMission("cletus", "npd", "bm1_cletus_sd", "bm1", "exclamation", "jug", 1, "exclamation_shadow")
	Game.SetBonusMissionDialoguePos("bm1","bm1_player","bm1_cletus_sd","level1_carstart")

	Game.SetConversationCam(0, "pc_near", "bm1")	
	Game.SetConversationCam(1, "npc_far", "bm1")
	Game.SetConversationCam(2, "pc_far",	"bm1")	
	Game.SetConversationCam(3, "npc_near", "bm1")
	Game.SetConversationCam(4, "pc_near", "bm1")	
	Game.SetConversationCam(5, "npc_far", "bm1")

	Game.ClearAmbientAnimations("bm1")

	Game.AddAmbientNpcAnimation("dialogue_thinking","bm1")
	Game.AddAmbientPcAnimation("dialogue_scratch_head", "bm1")
	
	Game.AddAmbientNpcAnimation("dialogue_no", "bm1")
	Game.AddAmbientPcAnimation("none", "bm1")

	Game.AddAmbientNpcAnimation("none", "bm1")	
	Game.AddAmbientPcAnimation("dialogue_yes", "bm1")

	Game.AddAmbientNpcAnimation("dialogue_thinking",	"bm1")
	Game.AddAmbientPcAnimation("none", "bm1")

	Game.AddAmbientNpcAnimation("none", "bm1")
	Game.AddAmbientPcAnimation("dialogue_hands_in_air", "bm1")

	Game.AddAmbientNpcAnimation("dialogue_shake_hand_in_air", "bm1")
	Game.AddAmbientPcAnimation("none", "bm1")

	Game.SetCamBestSide("bm1_bestside", "bm1")

	Game.AddBonusMissionNPCWaypoint("cletus", "bm1_cletus_walk1")
	Game.AddBonusMissionNPCWaypoint("cletus", "bm1_cletus_walk2")
	Game.AddBonusMissionNPCWaypoint("cletus", "bm1_cletus_sd")

Game.AddAmbientCharacter("apu", "m0_apu_place", 1.8)

Game.AddAmbientCharacter("ralph", "ambient_ralph", 1.3)
	Game.AddAmbientNPCWaypoint("ralph", "ralph_walk1")
	Game.AddAmbientNPCWaypoint("ralph", "ralph_walk2")
	Game.AddAmbientNPCWaypoint("ralph", "ralph_walk3")
	
Game.AddAmbientCharacter("moleman", "ambient_moleman", 0)
	Game.AddAmbientNPCWaypoint("moleman", "moleman_walk1")
	Game.AddAmbientNPCWaypoint("moleman", "moleman_walk2")
	Game.AddAmbientNPCWaypoint("moleman", "moleman_walk3")
	Game.AddAmbientNPCWaypoint("moleman", "moleman_walk4")
	Game.AddAmbientNPCWaypoint("moleman", "moleman_walk3")
	Game.AddAmbientNPCWaypoint("moleman", "moleman_walk2")
	Game.AddAmbientNPCWaypoint("moleman", "moleman_walk1")
	
Game.AddAmbientCharacter("grandpa", "ambient_grandpa", 0)
	Game.AddAmbientNPCWaypoint("grandpa", "grandpa_walk1")
	Game.AddAmbientNPCWaypoint("grandpa", "grandpa_walk2")
	Game.AddAmbientNPCWaypoint("grandpa", "grandpa_walk3")
	Game.AddAmbientNPCWaypoint("grandpa", "grandpa_walk4")
	Game.AddAmbientNPCWaypoint("grandpa", "grandpa_walk5")
	Game.AddAmbientNPCWaypoint("grandpa", "grandpa_walk4")
	Game.AddAmbientNPCWaypoint("grandpa", "grandpa_walk3")
	Game.AddAmbientNPCWaypoint("grandpa", "grandpa_walk2")
	Game.AddAmbientNPCWaypoint("grandpa", "grandpa_walk1")
	
Game.AddAmbientCharacter("patty", "ambient_patty", 1.3)
	Game.AddAmbientNPCWaypoint("patty", "patty_walk1")
	Game.AddAmbientNPCWaypoint("patty", "patty_walk2")
	Game.AddAmbientNPCWaypoint("patty", "patty_walk3")
	Game.AddAmbientNPCWaypoint("patty", "patty_walk4")
	Game.AddAmbientNPCWaypoint("patty", "patty_walk5")
	Game.AddAmbientNPCWaypoint("patty", "patty_walk4")
	Game.AddAmbientNPCWaypoint("patty", "patty_walk3")
	Game.AddAmbientNPCWaypoint("patty", "patty_walk2")
	Game.AddAmbientNPCWaypoint("patty", "patty_walk1")

Game.AddAmbientCharacter("lisa", "m1_lisa_place", 1.3)
		
Game.AddAmbientCharacter("willie", "ambient_willie", 1.3)
	Game.AddAmbientNPCWaypoint("willie", "willie_walk1")
	Game.AddAmbientNPCWaypoint("willie", "willie_walk2")
	Game.AddAmbientNPCWaypoint("willie", "willie_walk3")
	Game.AddAmbientNPCWaypoint("willie", "willie_walk2")
	Game.AddAmbientNPCWaypoint("willie", "willie_walk1")

Game.AddAmbientCharacter("eddie", "ambient_eddie", 0)
	Game.AddAmbientNPCWaypoint("eddie", "eddie_walk1")
	Game.AddAmbientNPCWaypoint("eddie", "eddie_walk2")
	Game.AddAmbientNPCWaypoint("eddie", "eddie_walk3")
	Game.AddAmbientNPCWaypoint("eddie", "eddie_walk4")
	Game.AddAmbientNPCWaypoint("eddie", "eddie_walk5")
	Game.AddAmbientNPCWaypoint("eddie", "eddie_walk4")
	Game.AddAmbientNPCWaypoint("eddie", "eddie_walk3")
	Game.AddAmbientNPCWaypoint("eddie", "eddie_walk2")
	Game.AddAmbientNPCWaypoint("eddie", "eddie_walk1")

Game.AddAmbientCharacter("krusty", "ambient_krusty", 0)
	Game.AddAmbientNPCWaypoint("krusty", "krusty_walk1")
	Game.AddAmbientNPCWaypoint("krusty", "krusty_walk2")
	Game.AddAmbientNPCWaypoint("krusty", "krusty_walk3")
	Game.AddAmbientNPCWaypoint("krusty", "krusty_walk2")
	Game.AddAmbientNPCWaypoint("krusty", "krusty_walk1")

Game.AddAmbientCharacter("lenny", "ambient_lenny", 0)
	Game.AddAmbientNPCWaypoint("lenny", "lenny_walk1")
	Game.AddAmbientNPCWaypoint("lenny", "lenny_walk2")
	Game.AddAmbientNPCWaypoint("lenny", "lenny_walk3")
	Game.AddAmbientNPCWaypoint("lenny", "lenny_walk2")
	Game.AddAmbientNPCWaypoint("lenny", "lenny_walk1")

Game.AddAmbientCharacter("moe", "ambient_moe", 1.3)
	Game.AddAmbientNPCWaypoint("moe", "moe_walk1")
	Game.AddAmbientNPCWaypoint("moe", "moe_walk2")
	Game.AddAmbientNPCWaypoint("moe", "moe_walk1")

Game.AddAmbientCharacter("addy", "ambient_addy", 1.3)
	Game.AddAmbientNPCWaypoint("addy", "ambient_addy_walk1")
	Game.AddAmbientNPCWaypoint("addy", "ambient_addy_walk2")

Game.AddAmbientCharacter("jake", "ambient_jake", 1.3)
	Game.AddAmbientNPCWaypoint("jake", "ambient_jake_walk1")
	Game.AddAmbientNPCWaypoint("jake", "ambient_jake_walk2")
	Game.AddAmbientNPCWaypoint("jake", "ambient_jake_walk3")

Game.AddAmbientCharacter("jeff", "ambient_jeff", 1.3)
	Game.AddAmbientNPCWaypoint("jeff", "ambient_jeff_walk1")
	Game.AddAmbientNPCWaypoint("jeff", "ambient_jeff_walk2")

Game.AddAmbientCharacter("kenny", "ambient_kenny", 1.3)
	Game.AddAmbientNPCWaypoint("kenny", "ambient_kenny_walk1")
	Game.AddAmbientNPCWaypoint("kenny", "ambient_kenny_walk2")
	Game.AddAmbientNPCWaypoint("kenny", "ambient_kenny_walk3")
	Game.AddAmbientNPCWaypoint("kenny", "ambient_kenny_walk4")

Game.AddAmbientCharacter("loren", "ambient_loren", 1.3)
	Game.AddAmbientNPCWaypoint("loren", "ambient_loren_walk1")
	Game.AddAmbientNPCWaypoint("loren", "ambient_loren_walk2")
	Game.AddAmbientNPCWaypoint("loren", "ambient_loren_walk3")
	Game.AddAmbientNPCWaypoint("loren", "ambient_loren_walk4")
	Game.AddAmbientNPCWaypoint("loren", "ambient_loren_walk3")
	Game.AddAmbientNPCWaypoint("loren", "ambient_loren_walk2")
	Game.AddAmbientNPCWaypoint("loren", "ambient_loren_walk1")

Game.AddAmbientCharacter("lucas", "ambient_lucas", 1.3)
	Game.AddAmbientNPCWaypoint("lucas", "ambient_lucas_walk1")
	Game.AddAmbientNPCWaypoint("lucas", "ambient_lucas_walk2")

Game.AddAmbientCharacter("maz", "ambient_maz", 1.3)
	Game.AddAmbientNPCWaypoint("maz", "ambient_maz_walk1")
	Game.AddAmbientNPCWaypoint("maz", "ambient_maz_walk2")

Game.AddAmbientCharacter("soleil", "ambient_sol", 1.3)
	Game.AddAmbientNPCWaypoint("soleil", "ambient_sol_walk1")
	Game.AddAmbientNPCWaypoint("soleil", "ambient_sol_walk2")
	
Game.AddPurchaseCarReward("gil", "gil", "npd", "gil_loc", 1.3, "gil_car")
	Game.AddPurchaseCarNPCWaypoint("gil", "gil_walk1")

Game.AddPurchaseCarReward("simpson", "barney", "npd", "barney_loc", 1.3, "barney_car")
	Game.AddPurchaseCarNPCWaypoint("barney", "barney_walk1")

Game.CreateTrafficGroup(0)
	Game.AddTrafficModel("compactA",  1)
    Game.AddTrafficModel("dtstruck",  1, 1)
	Game.AddTrafficModel("garbage",   1, 1)
	Game.AddTrafficModel("glastruc",  1, 1)
	Game.AddTrafficModel("kumquat",   1, 1)
	Game.AddTrafficModel("minivanA",  1)
	Game.AddTrafficModel("nuctruck",  1, 1)
	Game.AddTrafficModel("pickupA",   1)
	Game.AddTrafficModel("schoolbu",  1, 1)
	Game.AddTrafficModel("SUVA",      1)
Game.CloseTrafficGroup()

-- Z1/R1
Game.CreatePedGroup(0)
	Game.AddPed("male6",  2)
	Game.AddPed("girl4",  1)
	Game.AddPed("fem4",   2)
	Game.AddPed("boy3",   2)
Game.ClosePedGroup()

-- Z2
Game.CreatePedGroup(1)
	Game.AddPed("olady1", 2)
	Game.AddPed("olady2", 2)
	Game.AddPed("fem3",   2)
	Game.AddPed("male3",  1)
Game.ClosePedGroup()

-- R2
Game.CreatePedGroup(2)
	Game.AddPed("male2",  2)
	Game.AddPed("olady3", 2)
	Game.AddPed("girl1",  2)
	Game.AddPed("fem4",   1)
Game.ClosePedGroup()

-- Z3
Game.CreatePedGroup(3)
	Game.AddPed("boy2",  2)
	Game.AddPed("boy3",  1)
	Game.AddPed("girl2", 2)
	Game.AddPed("girl3", 2)
Game.ClosePedGroup()

-- R3/Z4
Game.CreatePedGroup(4)
	Game.AddPed("fem4",  2)
	Game.AddPed("busm1", 2)
	Game.AddPed("busw1", 2)
	Game.AddPed("busm2", 1)
Game.ClosePedGroup()

-- R6/Z7
Game.CreatePedGroup(5)
	Game.AddPed("farmr1", 2)
	Game.AddPed("rednk1", 1)
	Game.AddPed("bum",    2)
	Game.AddPed("hooker", 2)
Game.ClosePedGroup()

-- R7
Game.CreatePedGroup(6)
	Game.AddPed("joger1", 2)
	Game.AddPed("male5",  1)
	Game.AddPed("male2",  2)
	Game.AddPed("fem2",   2)
Game.ClosePedGroup()

-- Z6
Game.CreatePedGroup(7)
	Game.AddPed("nuclear", 7)
Game.ClosePedGroup()

Game.SetCoinDrawable("coinShape_000")

Game.SetParticleTexture(0, "scratch2.bmp")   -- sparkles.
Game.SetParticleTexture(1, "spark4.bmp")	  -- sparks when vehicle hits.
Game.SetParticleTexture(2, "cloud.tga")	  -- dust cloud when running/jumping.
Game.SetParticleTexture(3, "cloud.tga")	  -- leaves when hitting shrubs/trees.
Game.SetParticleTexture(4, "star.tga")	      -- stars when hitting something static.
Game.SetParticleTexture(5, "cloud.tga")	  -- paint chips when vehicle is damaged.
Game.SetParticleTexture(6, "halo.bmp")       -- Ring for shock wave fx.

Game.PreallocateActors("beecamera", "3")
Game.SetProjectileStats("waspray", "90.0", "10")
Game.AddBehaviour("beecamera", "EVADE_PLAYER",  "1.0",  "3.5",  "1.0", "2.0", "30" )
Game.AddBehaviour("beecamera", "ATTRACTION",    "2.0",  "10",   "10.0")
Game.AddBehaviour("beecamera", "ATTACK_PLAYER", "15.0", "3.0" , "1.0")

Game.SetActorRotationSpeed("beecamera", "160.0")

if Settings.EnableWaspCameraShields then
	Game.AddShield("beecamera", "beeshield")
end

-- Start positioning Wasp Cameras. ~ Adelaide
-- Chunk 1
Game.AddSpawnPointByLocatorScript("1_1_RedHouse","beecamera","Shelley","1_1_RedHouse",25,25)
Game.AddSpawnPointByLocatorScript("1_2_ParkSlide","beecamera","Shelley","1_2_ParkSlide",25,25)
Game.AddSpawnPointByLocatorScript("1_3_FlandSide","beecamera","Shelley","1_3_FlandSide",20,20)
Game.AddSpawnPointByLocatorScript("1_4_Wiggums","beecamera","Shelley","1_4_Wiggums",20,20)
Game.AddSpawnPointByLocatorScript("1_5_Shadow","beecamera","Shelley","1_5_Shadow",15,15)
Game.AddSpawnPointByLocatorScript("1_6_Krusty","beecamera","Shelley","1_6_Krusty",15,15)

-- Chunk 2
Game.AddSpawnPointByLocatorScript("2_1_Bridge","beecamera","Shelley","2_1_Bridge",20,20)
Game.AddSpawnPointByLocatorScript("2_2_Driveway","beecamera","Shelley","2_2_Driveway",15,15)
Game.AddSpawnPointByLocatorScript("2_3_TrailerParkA","beecamera","Shelley","2_3_TrailerParkA",15,15)
Game.AddSpawnPointByLocatorScript("2_4_TrailerParkB","beecamera","Shelley","2_4_TrailerParkB",15,15)
Game.AddSpawnPointByLocatorScript("2_5_TireFire","beecamera","Shelley","2_5_TireFire",20,20)
Game.AddSpawnPointByLocatorScript("2_6_TomaccoA","beecamera","Shelley","2_6_TomaccoA",15,15)
Game.AddSpawnPointByLocatorScript("2_7_TomaccoB","beecamera","Shelley","2_7_TomaccoB",15,15)
Game.AddSpawnPointByLocatorScript("2_8_Ramp","beecamera","Shelley","2_8_Ramp",15,15)

-- Chunk 3
Game.AddSpawnPointByLocatorScript("3_1_Tank","beecamera","Shelley","3_1_Tank",15,15)
Game.AddSpawnPointByLocatorScript("3_2_Catwalk","beecamera","Shelley","3_2_Catwalk",15,15)
Game.AddSpawnPointByLocatorScript("3_3_LargePipes","beecamera","Shelley","3_3_LargePipes",15,15)
Game.AddSpawnPointByLocatorScript("3_4_Chess","beecamera","Shelley","3_4_Chess",15,15)
Game.AddSpawnPointByLocatorScript("3_5_Grass","beecamera","Shelley","3_5_Grass",30,30)
Game.AddSpawnPointByLocatorScript("3_6_TunnelA","beecamera","Shelley","3_6_TunnelA",30,30)
Game.AddSpawnPointByLocatorScript("3_7_TunnelB","beecamera","Shelley","3_7_TunnelB",30,30)

-- Chunk 4
Game.AddSpawnPointByLocatorScript("4_1_Roundabout","beecamera","Shelley","4_1_Roundabout",30,30)
Game.AddSpawnPointByLocatorScript("4_2_Pool","beecamera","Shelley","4_2_Pool",20,20)
Game.AddSpawnPointByLocatorScript("4_3_Bricks","beecamera","Shelley","4_3_Bricks",20,20)
Game.AddSpawnPointByLocatorScript("4_4_GasStation","beecamera","Shelley","4_4_GasStation",20,20)
Game.AddSpawnPointByLocatorScript("4_5_Bridge","beecamera","Shelley","4_5_Bridge",15,15)
Game.AddSpawnPointByLocatorScript("4_6_Tower","beecamera","Shelley","4_6_Tower",15,15)

-- Chunk 5
Game.AddSpawnPointByLocatorScript("5_1_GroceryStore","beecamera","Shelley","5_1_GroceryStore",20,20)
Game.AddSpawnPointByLocatorScript("5_2_SchoolSlide","beecamera","Shelley","5_2_SchoolSlide",15,15)
Game.AddSpawnPointByLocatorScript("5_3_SchoolRoof","beecamera","Shelley","5_3_SchoolRoof",20,20)
Game.AddSpawnPointByLocatorScript("5_4_Krusty","beecamera","Shelley","5_4_Krusty",20,20)
Game.AddSpawnPointByLocatorScript("5_5_Church","beecamera","Shelley","5_5_Church",25,25)

-- Chunk 6
Game.AddSpawnPointByLocatorScript("6_1_Driveway","beecamera","Shelley","6_1_Driveway",20,20)
Game.AddSpawnPointByLocatorScript("6_2_Retirement","beecamera","Shelley","6_2_Retirement",25,25)
Game.AddSpawnPointByLocatorScript("6_3_Truck","beecamera","Shelley","6_3_Truck",20,20)
Game.AddSpawnPointByLocatorScript("6_4_FireTruck","beecamera","Shelley","6_4_FireTruck",15,15)
Game.AddSpawnPointByLocatorScript("6_5_KwikEMartA","beecamera","Shelley","6_5_KwikEMartA",15,15)
Game.AddSpawnPointByLocatorScript("6_6_KwikEMartB","beecamera","Shelley","6_6_KwikEMartB",15,15)
Game.AddSpawnPointByLocatorScript("6_7_Parking","beecamera","Shelley","6_7_Parking",20,20)
Game.AddSpawnPointByLocatorScript("6_8_DuffTruck","beecamera","Shelley","6_8_DuffTruck",15,15)