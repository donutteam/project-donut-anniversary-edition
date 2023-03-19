Game.SelectMission("m7sd")
	Game.SetAnimatedCameraName("mission7camShape")
	Game.SetAnimCamMulticontName("mission7cam")
	Game.SetMissionStartCameraName("mission7camShape")
	Game.SetMissionStartMulticontName("mission7cam")

	Game.SetDynaLoadData("l1z6.p3d;l1r6.p3d;")
	Game.SetMissionResetPlayerOutCar("m7_homer_start","m7_car_start")

	Game.UsePedGroup(7)

	Game.StreetRacePropsLoad("l1m7door.p3d;")
	Game.StreetRacePropsUnload("l1m7door.p3d:")

	Game.AddStage()
		Game.SetHUDIcon("pwrplant")
		Game.SetStageMessageIndex(8)

		Game.SetMaxTraffic(2)

		Game.AddObjective("goto")
			Game.AddNPC("carl","m7_carl_sd")
			Game.SetDestination("m4_powerplant","carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(5)
		Game.RESET_TO_HERE()

		Game.SetHUDIcon("carl")
		Game.SetStageMessageIndex(159)

		Game.AddObjective("talkto")
			Game.AddNPC("carl","m7_carl_sd")
			Game.AddObjectiveNPCWaypoint("carl","m7_carl_walk_1")
			Game.AddObjectiveNPCWaypoint("carl","m7_carl_walk_2")
			Game.AddObjectiveNPCWaypoint("carl","m7_carl_sd")
			Game.SetTalkToTarget("carl",0,0)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0)
		Game.AddObjective("dialogue")
			Game.SetPresentationBitmap("art/frontend/dynaload/images/mis01_07.p3d")

			Game.AmbientAnimationRandomize(1,0)
			Game.AmbientAnimationRandomize(0,0)

			Game.AddAmbientNpcAnimation("dialogue_shake_hand_in_air")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("none")
			
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_hands_in_air")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_shaking_fist")

			Game.SetDialogueInfo("homer","carl","adventure",0)

			Game.SetDialoguePositions("m7_homer","m7_carl_sd","m6_marge_walk_2")
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()