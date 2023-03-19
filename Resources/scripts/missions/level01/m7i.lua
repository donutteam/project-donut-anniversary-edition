Game.SelectMission("m7")
	Game.SetDynaLoadData("l1z6.p3d;l1r6.p3d;")
	Game.SetMissionResetPlayerInCar("m7_car_start")

	Game.UsePedGroup(7)

	Game.StreetRacePropsLoad("l1m7door.p3d;")
	Game.StreetRacePropsUnload("l1m7door.p3d:")


	Game.AddStage(0)
		Game.RESET_TO_HERE()

		Game.SetStageMessageIndex(101)
		Game.SetStageTime(10)

		Game.PlacePlayerCar("current", "m7_car_start")

		Game.AddStageVehicle("smithalt","pd_smithers_carstart","race","Missions\\level01\\M7race.con",  "smithers")
		Game.AddStageVehicle("cLimo",   "m7_bart_carstart",    "race","Missions\\level01\\M7race2.con", "apu")
		Game.AddStageVehicle("cVan",    "m7_surv_carstart",    "race","Missions\\level01\\M7race3.con", "jimbo")
		Game.AddStageVehicle("cDonut",  "m7_moleman_carstart", "race","Missions\\level01\\M7race4.con", "moleman")

		Game.NoTrafficForStage()

		Game.AddObjective("getin","neither")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()


		Game.AddCondition("timeout")

		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("mansion")
		Game.SetStageMessageIndex(102)
		Game.SetStageTime(112)

		Game.SetMaxTraffic(5)

		Game.AddCondition("damage")
			Game.SetCondMinHealth(0.0)
			Game.SetCondTargetVehicle("current")
		Game.CloseCondition()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()

		Game.AddCondition("position")
			Game.SetConditionPosition(1)
		Game.CloseCondition()

		Game.AddCondition("race", "intersection")
			-- Game.SetCondTargetVehicle("smithalt")
		Game.CloseCondition()

		Game.AddCondition("timeout")
		Game.CloseCondition()
		
		Game.ActivateVehicle("smithalt", "NULL", "race")
		Game.ActivateVehicle("cLimo",    "NULL", "race")
		Game.ActivateVehicle("cVan",     "NULL", "race")
		Game.ActivateVehicle("cDonut",   "NULL", "race")
		
		Game.StartCountdown("count")
			Game.AddToCountdownSequence("3", 1000)
			Game.AddToCountdownSequence("2", 1000)
			Game.AddToCountdownSequence("1", 1000)
			Game.AddToCountdownSequence("GO", 1000)
		
		Game.AddStageWaypoint("m7_smithers_race1")
		Game.AddStageWaypoint("m5_smithers_nav1")
		Game.AddStageWaypoint("m7_smithers_race1b")
		Game.AddStageWaypoint("m7_smithers_race9")

		Game.AddObjective("race","neither")
			Game.AddNPC("burns", "m7_burns_place")

			Game.AddCollectible("m7_smithers_race1")
			Game.AddCollectible("m7_smithers_race2")
			Game.AddCollectible("m7_smithers_race3")
			Game.AddCollectible("m7_smithers_race5")
			Game.AddCollectible("m7_smithers_race6")
			Game.AddCollectible("m7_smithers_race7")
			Game.AddCollectible("m7_smithers_race9")
		Game.CloseObjective()

		Game.ShowStageComplete()
		
		Game.StageStartMusicEvent("M7_drama")
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("burns")
		Game.SetStageMessageIndex(103)

		Game.SetMaxTraffic(2)

		Game.AddObjective("talkto")
			Game.AddNPC("burns", "m7_burns_place")

			Game.AddObjectiveNPCWaypoint("burns", "m7_burns_walk_1")

			Game.SetTalkToTarget("burns")
		Game.CloseObjective()

		Game.SetCompletionDialog("there")
	Game.CloseStage()

	Game.AddStage("final")
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1, 0)
			Game.AmbientAnimationRandomize(0, 0)
			
			Game.SetConversationCam(0, "pc_far")
			Game.SetConversationCam(1, "npc_far")
			Game.SetConversationCam(2, "pc_far")
			Game.SetConversationCam(3, "npc_far")
			Game.SetConversationCam(4, "pc_far")
			Game.SetConversationCam(5, "npc_far")

			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_yes")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_cross_arms")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_yes")
			
			Game.AddAmbientPcAnimation("dialogue_shaking_fist")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_no")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_hands_in_air")

			Game.SetCamBestSide("m7_bestside2" )

			Game.SetDialogueInfo("homer","burns","accuse",0)

			Game.SetDialoguePositions("m7_homer_burns","m7_burns_place","race_finish",1)
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()