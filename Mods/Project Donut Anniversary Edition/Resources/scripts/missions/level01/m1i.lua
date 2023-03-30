Game.SelectMission("m1")
	Game.SetDynaLoadData("l1z1.p3d;l1r1.p3d;l1r7.p3d;")
	Game.SetMissionResetPlayerOutCar("level1_homer_start","level1_carstart")

	Game.UsePedGroup(0)

	Game.StreetRacePropsLoad("l1m7door.p3d;")
	Game.StreetRacePropsUnload("l1m7door.p3d:")

	Game.AddStage(1)
		Game.RESET_TO_HERE()

		Game.SetHUDIcon("digest")
		Game.SetStageMessageIndex(101)
		Game.SetStageTime(10)

		Game.AddObjective("goto", "nearest road")
			Game.AddStageVehicle("skinn_v", "m1_skinner_place", "NULL", "special\\l1m1_skinner.con", "skinner")

			Game.SetDestination("m1_tomato","scien")

			Game.TurnGotoDialogOff()
		Game.CloseObjective()

		Game.AddCondition("timeout")
		Game.CloseCondition()

		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetStageMessageIndex(102)
		Game.SetStageTime(10)

		Game.AddObjective("getin", "neither")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()

		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage(18)
		Game.SetHUDIcon("skinn_v")
		Game.SetStageMessageIndex(103)

		Game.ActivateVehicle("skinn_v","NULL","target")
		Game.SetVehicleAIParams("skinn_v", -10, -9)

		Game.AddStageWaypoint("m1_AI_path1")
		Game.AddStageWaypoint("m1_AI_path1b")
		Game.AddStageWaypoint("m1_AI_path4")

		Game.AddObjective("destroy","neither")
			Game.SetObjTargetVehicle("skinn_v")
		Game.CloseObjective()

		Game.AddCondition("race")
			Game.SetCondTargetVehicle("skinn_v")
		Game.CloseCondition()

		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()

		Game.AddCondition("damage")
			Game.SetCondMinHealth(0.0)
			Game.SetCondTargetVehicle( "current" )
		Game.CloseCondition()

		Game.AddStageMusicChange()
		Game.StageStartMusicEvent("M7_drama")

		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(1)
		Game.SetHUDIcon("school")
		Game.SetStageMessageIndex(104)

		Game.SetMaxTraffic(2)

		Game.AddObjective("interior", "nearest road")
			Game.SetDestination("SpringfieldElementary", "school_mission_doorstar")
		Game.CloseObjective()

		Game.SetStageMusicAlwaysOn()
	Game.CloseStage()

	Game.AddStage(1)
		Game.SetHUDIcon("lisa")
		Game.SetStageMessageIndex(105)

		Game.SetMaxTraffic(2)

		Game.AddObjective("talkto", "nearest road")
			Game.AddNPC("lisa", "m1_lisa_place", "SpringfieldElementary")
			Game.AddObjectiveNPCWaypoint("lisa", "m1_lisa_walk_1")
			Game.AddObjectiveNPCWaypoint("lisa", "m1_lisa_walk_2")
			Game.AddObjectiveNPCWaypoint("lisa", "m1_lisa_walk_1")

			Game.SetTalkToTarget("lisa", 0, -0.5)
		Game.CloseObjective()

		Game.SetStageMusicAlwaysOn()
	Game.CloseStage()

	Game.AddStage("final")
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(0, 0)
			Game.AmbientAnimationRandomize(1, 0)

			Game.AddAmbientNpcAnimation("dialogue_yes")
			Game.AddAmbientPcAnimation("none")

			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_scratch_head")

			Game.AddAmbientNpcAnimation("dialogue_hands_on_hips")
			Game.AddAmbientPcAnimation("none")

			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_no")

			Game.AddAmbientNpcAnimation("dialogue_yes")
			Game.AddAmbientPcAnimation("none")

			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_yes")

			Game.SetDialogueInfo("homer","lisa","bladder",0)
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()

