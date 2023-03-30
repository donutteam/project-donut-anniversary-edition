Game.SelectMission("m5")
	Game.SetDynaLoadData("l1z1.p3d;l1r1.p3d;l1r7.p3d;")
	Game.SetMissionResetPlayerInCar("m5_carstart")

	Game.UsePedGroup(0)

	Game.AddStage()
		Game.SetStageMessageIndex(101)

		Game.AddObjective("gooutside")
			Game.SetDestination("outside_Simpsons_house_locator")
		Game.CloseObjective()

		Game.SetMusicState("Mission7", "Stage2")
	Game.CloseStage()

	Game.AddStage()
		Game.RESET_TO_HERE()

		Game.SetHUDIcon("cvan_v")
		Game.SetStageMessageIndex(102)

		Game.AddStageVehicle("cVan","m5_van_carstart","NULL","special\\l1m5_van.con")

		Game.AddObjective("goto","nearest road")
			Game.SetDestination("m5_van_start", "carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon( "cvan_v" )
		Game.SetStageMessageIndex(103)
		
		Game.ActivateVehicle("cVan","NULL","evade")
		Game.SetVehicleAIParams("cVan", 100, 101)
		Game.SetStageAITargetCatchupParams("cVan", 20, 70)
		
		Game.AddStageWaypoint("m5_van_path1")
		Game.AddStageWaypoint("m5_van_path2")
		Game.AddStageWaypoint("m5_van_path3")
		Game.AddStageWaypoint("m5_van_path4")
		Game.AddStageWaypoint("m5_van_path5")
		Game.AddStageWaypoint("m5_van_path6")
		Game.AddStageWaypoint("m5_van_path7")

		-- Removes one of the turn arounds on Easy
		if Settings.MissionDifficulty == 2 then
			Game.AddStageWaypoint("m5_van_path8")
			Game.AddStageWaypoint("m5_van_path9")
		end

		Game.AddStageWaypoint("m5_van_path10")

		Game.AddObjective("follow","neither")
			Game.SetObjTargetVehicle("cVan")
		Game.CloseObjective()

		Game.AddCondition("followdistance")
			Game.SetFollowDistances(0, ({ 280, 230 })[Settings.MissionDifficulty])
			Game.SetCondTargetVehicle("cVan")
		Game.CloseCondition()

		Game.SetCompletionDialog("skeleton")

		Game.SetFadeOut(1.0)
	Game.CloseStage()

	Game.AddStage()
		Game.AddObjective("timer")
			Game.AddNPC("npd", "m5_marge_end")
			Game.StayInBlack()
			Game.AddStageCharacter("homer", "m5_homer_end", "", "current", "m5_car_end")
			Game.SetDurationTime(1)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage()
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1, 0)
			Game.AmbientAnimationRandomize(0, 0)

			Game.SetConversationCam(0, "pc_near")

			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_hands_in_air")

			Game.SetDialogueInfo("homer","npd","skeleton",0)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage("final")
		Game.AddObjective("timer")
			Game.SetDurationTime(1)
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()