Game.SelectMission("m0")
	Game.SetDynaLoadData("l1z1.p3d;l1r1.p3d;l1r7.p3d;")
	Game.SetMissionResetPlayerInCar("level1_carstart")

	Game.UsePedGroup(0)

	Game.StreetRacePropsLoad("l1m7door.p3d;")
	Game.StreetRacePropsUnload("l1m7door.p3d:")

	Game.AddStage(0)
		Game.SetStageMessageIndex(101)

		Game.AddObjective("getin", "neither")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(1)
		Game.RESET_TO_HERE()

		Game.SetHUDIcon("kwike")
		Game.SetStageMessageIndex(102)
		Game.SetStageTime(({ 45, 15 })[Settings.MissionDifficulty])

		Game.AddObjective("goto")
			Game.SetDestination("m0_kwikemart","carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()

		Game.AddCondition("timeout")
		Game.CloseCondition()

		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()

		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(1)
		Game.SetHUDIcon("kwike")
		Game.SetStageMessageIndex(103)

		Game.SetMaxTraffic(2)

		Game.AddObjective("interior","neither")
			Game.SetDestination("KwikEMart", "kwik_mission_doorstar")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(2)
		Game.SetHUDIcon("apu")
		Game.SetStageMessageIndex(104)

		Game.AddObjective("talkto","nearest road")
			Game.SetTalkToTarget("apu", 0, -0.3, "3.0")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(3)
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1, 0)
			Game.AmbientAnimationRandomize(0, 0)

			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_hands_on_hips")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_shake_hand_in_air")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_scratch_head")
			Game.AddAmbientPcAnimation("none")

			Game.SetDialogueInfo("homer","apu","congrats",0)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage("final")
		Game.SetHUDIcon("icecream")
		Game.SetStageMessageIndex(105)

		Game.AddObjective("goto")
			Game.TurnGotoDialogOff()
			Game.SetDestination("m0_cola", "icebuck")
		Game.CloseObjective()

		Game.SetCompletionDialog("congrats2", "bart")
	Game.CloseStage()
Game.CloseMission()
