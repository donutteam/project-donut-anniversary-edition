Game.SelectMission("m4")
	Game.SetDynaLoadData("l1r4a.p3d;l1z6.p3d;l1r6.p3d;")
	Game.SetMissionResetPlayerOutCar("m4_homer_start", "m4_carstart")

	Game.SetNumValidFailureHints(2)

	Game.UsePedGroup(7)

	Game.AddStage(0)
		Game.SetHUDIcon("pwrplant")
		Game.SetStageMessageIndex(101)

		Game.AddObjective("goto")
			Game.TurnGotoDialogOff()
			Game.SetDestination("m4_start_sd", "triggersphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(10)
		Game.RESET_TO_HERE()

		Game.SetHUDIcon("powercou")
		Game.SetStageMessageIndex(102)
		Game.SetStageTime(({ 110, 55 })[Settings.MissionDifficulty])

		Game.AddObjective("delivery","neither")
			Game.AddCollectible("PP_powerbox1")
			Game.AddCollectible("PP_powerbox2")
			Game.AddCollectible("PP_powerbox3")
			Game.AddCollectible("PP_powerbox4")
			Game.AddCollectible("PP_powerbox5")
			Game.AddCollectible("PP_powerbox6")
			Game.AddCollectible("PP_powerbox7")
			Game.AddCollectible("PP_powerbox8")
			Game.AddCollectible("PP_powerbox9")
		Game.CloseObjective()

		Game.AddCondition("timeout")
		Game.CloseCondition()

		Game.StageStartMusicEvent("M4_start")
		Game.SetStageMusicAlwaysOn()

		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("wstation")
		Game.SetStageMessageIndex(103)
		Game.AddStageTime(0)

		Game.AddObjective("goto")
			Game.AddNPC("burns", "m4_carl_sd")

			Game.SetDestination("m4_locator_sd", "triggersphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()

		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage(0)
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1, 0)      -- ( pc=0, npc=1) (nonrandom=0, random=1)
			Game.AmbientAnimationRandomize(0, 0)
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_hands_in_air")
			Game.SetDialogueInfo("homer","burns","sleep",0)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetStageMessageIndex(104)
		Game.SetStageTime(10)

		Game.AddStageVehicle("cVan","m4_cVan_carstart","NULL","special\\l1m4_van.con")

		Game.AddObjective("getin","neither")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage("final")
		Game.SetHUDIcon("cvan_v")
		Game.SetStageMessageIndex(105)

		Game.ActivateVehicle("cVan","NULL","evade")
		Game.SetVehicleAIParams("cVan", 100, 101)
		Game.SetStageAITargetCatchupParams("cVan", 20, 70)

		Game.AddStageWaypoint("m4_van_path1")
		Game.AddStageWaypoint("m4_van_path2")

		Game.AddObjective("follow","neither")
			Game.SetObjTargetVehicle("cVan")
		Game.CloseObjective()

		Game.AddCondition("followdistance")
			Game.SetFollowDistances(0, 175)
			Game.SetCondTargetVehicle("cVan")
		Game.CloseCondition()

		Game.SetCompletionDialog("skeleton")

		Game.SetFadeOut(1.0)
	Game.CloseStage()
Game.CloseMission()