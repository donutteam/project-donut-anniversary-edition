Game.SelectMission("m5sd")
	Game.SetMissionStartCameraName("mission1camShape")
	Game.SetMissionStartMulticontName("mission1cam")
	Game.SetAnimatedCameraName("mission1camShape")
	Game.SetAnimCamMulticontName("mission1cam")

	Game.SetMissionResetPlayerOutCar("level1_homer_start","m2_carstart")
	Game.SetDynaLoadData("l1z1.p3d;l1r1.p3d;l1r7.p3d;")

	Game.UsePedGroup(0)

	Game.AddStage()
		Game.SetHUDIcon("simpsons")
		Game.SetStageMessageIndex(1)
		
		Game.SetMaxTraffic(2)

		Game.AddObjective("goto")
			Game.AddStageVehicle("cVan","m5_van_carstart","NULL","EasyRace\\AI_5th.con")
			Game.SetDestination("m2_simpsonhouse_sd","carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage()
		Game.RESET_TO_HERE()

		Game.SetHUDIcon("simpsons")
		Game.SetStageMessageIndex(2)

		Game.AddObjective("interior")
			Game.SetDestination("SimpsonsHouse","simp_mission_doorstar")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("simpsons")
		Game.SetStageMessageIndex(3)

		Game.AddObjective("goto")
			Game.SetPresentationBitmap("art/frontend/dynaload/images/mis01_05.p3d")

			Game.SetDestination("m5_locator_sd","triggersphere")
			Game.SetCollectibleEffect("wrench_collect")

			Game.MustActionTrigger()
			Game.TurnGotoDialogOff()
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage()
		Game.AddObjective("fmv")
			Game.SetFMVInfo("fmv2.rmv")
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()