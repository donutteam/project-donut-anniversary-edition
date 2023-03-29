Game.SelectMission("m3")
	Game.SetMissionResetPlayerInCar("m3_carstart")
	Game.SetDynaLoadData("l1z1.p3d;l1r1.p3d;l1r7.p3d;")

	Game.SetNumValidFailureHints(5)

	Game.UsePedGroup(1)

	Game.StreetRacePropsLoad("l1m7door.p3d;")
	Game.StreetRacePropsUnload("l1m7door.p3d:")

	Game.AddStage()
		Game.SetStageMessageIndex(101)

		Game.AddObjective("getin")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("kburger")
		Game.SetStageMessageIndex(102)

		Game.AddObjective("goto")
			Game.AddNPC("lenny", "m3_lenny")

			Game.SetDestination("m3_lardlads", "carsphere")
			Game.SetCollectibleEffect("wrench_collect")

			Game.TurnGotoDialogOff()
		Game.CloseObjective()

		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()

		Game.AddCondition("damage")
			Game.SetCondMinHealth(0.0)
			Game.SetCondTargetVehicle("current")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.RESET_TO_HERE()

		Game.SetHUDIcon("kwike")
		Game.SetStageMessageIndex(103)
		Game.SetStageTime(32)

		Game.AddStageVehicle("smith_v", "m3_smithers_carstart", "NULL", "Missions\\level01\\M3dest.con", "smithers")

		Game.AddObjective("goto")
			Game.SetDestination("m3_kwikemart", "carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()

		Game.AddCondition("timeout")
		Game.CloseCondition()

		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()

		Game.AddCondition("damage")
			Game.SetCondMinHealth(0.0)
			Game.SetCondTargetVehicle("current")
		Game.CloseCondition()

		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("smith_v")
		Game.SetStageMessageIndex(104)

		Game.ActivateVehicle("smith_v","NULL","target")
		Game.SetVehicleAIParams("smith_v", -10, -9)

		Game.AddStageWaypoint("m4_smithers_path1")
		Game.AddStageWaypoint("m4_smithers_path2")

		Game.AddObjective("destroy","neither")
			Game.SetObjTargetVehicle("smith_v")
		Game.CloseObjective()

		Game.AddCondition("race")
			Game.SetCondTargetVehicle("smith_v")
		Game.CloseCondition()

		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()

		Game.AddCondition("damage")
			Game.SetCondMinHealth(0.0)
			Game.SetCondTargetVehicle("current")
		Game.CloseCondition()

		Game.AddStageMusicChange()
		Game.StageStartMusicEvent("M3_drama")

		Game.SetCompletionDialog("convertible", "smithers")
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("pwrplant")
		Game.SetStageMessageIndex(105)

		Game.AddStageVehicle("cVan", "m3_cVan_carstart", "NULL", "Missions\\level01\\M3evade.con", "jimbo")

		Game.AddObjective("goto")
			Game.SetDestination("m3_pwrplant", "carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()

		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()

		Game.AddCondition("damage")
			Game.SetCondMinHealth(0.0)
			Game.SetCondTargetVehicle("current")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("cvan_v")
		Game.SetStageMessageIndex(106)
		Game.SetStageTime(40)

		Game.ActivateVehicle("cVan","NULL","chase")

		Game.AddObjective("losetail")
			Game.SetObjTargetVehicle("cVan")
			Game.SetObjDistance(200)
		Game.CloseObjective()

		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()

		Game.AddCondition("damage")
			Game.SetCondMinHealth(0.0)
			Game.SetCondTargetVehicle("current")
		Game.CloseCondition()

		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage("final")
		Game.SetHUDIcon("pwrplant")
		Game.SetStageMessageIndex(105)

		Game.AddObjective("goto")
			Game.SetDestination("m3_pwrplant", "carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()

		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()

		Game.AddCondition("damage")
			Game.SetCondMinHealth(0.0)
			Game.SetCondTargetVehicle("current")
		Game.CloseCondition()
	Game.CloseStage()
Game.CloseMission()


