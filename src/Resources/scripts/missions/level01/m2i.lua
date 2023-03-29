Game.SelectMission("m2")
	Game.SetMissionResetPlayerInCar("m2_carstart")
	Game.SetDynaLoadData("l1z1.p3d;l1r1.p3d;l1r7.p3d;")

	Game.UsePedGroup(0)

	Game.StreetRacePropsLoad("l1m7door.p3d;")
	Game.StreetRacePropsUnload("l1m7door.p3d:")

	Game.AddStage(0)
		Game.RESET_TO_HERE()

		Game.SetStageMessageIndex(101)

		Game.AddObjective("getin")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(3)
		Game.SetHUDIcon("tuxedo")
		Game.SetStageMessageIndex(102)
		Game.SetStageTime(8)

		Game.AddObjective("goto","both")
			Game.SetDestination("m2_object1","tux")
			
			Game.TurnGotoDialogOff()
		Game.CloseObjective()

		Game.AddCondition("timeout")
		Game.CloseCondition()

		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("lawnmwr")
		Game.SetStageMessageIndex(103)
		Game.AddStageTime(8)

		Game.AddObjective("goto","both")
			Game.AddNPC("barney", "m2_barney")

			Game.SetDestination("m2_object2","mower")

			Game.TurnGotoDialogOff()
		Game.CloseObjective()
		
		Game.AddCondition("timeout")
		Game.CloseCondition()

		Game.SetCompletionDialog("mower")

		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("barne")
		Game.SetStageMessageIndex(104)
		Game.AddStageTime(12)

		Game.AddObjective("talkto","both")
			Game.AddNPC("barney", "m2_barney")
			Game.AddObjectiveNPCWaypoint("barney", "barney_walk1")

			Game.SetTalkToTarget("barney", 0, 0)
		Game.CloseObjective()

		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage(0)
		Game.AddStageTime(12) -- 2023 Loren: WTF this is a dialogue stage, why is there a timeout?

		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1, 0)
			Game.AmbientAnimationRandomize(0, 0)
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_scratch_head")
			Game.AddAmbientPcAnimation("dialogue_shake_hand_in_air")
			Game.AddAmbientPcAnimation("none")
			Game.SetCamBestSide("m2_bestside_barn")
			Game.SetDialogueInfo("homer","barney","cooler",0)
			Game.SetDialoguePositions("m2_homer_barney","m2_barney","m2_carstart")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(3)
		Game.SetHUDIcon("cooler")
		Game.SetStageMessageIndex(105)
		Game.AddStageTime(8)

		Game.AddObjective("goto")
			Game.TurnGotoDialogOff()
			Game.SetDestination("m2_object3","coolr")
		Game.CloseObjective()

		Game.AddCondition("timeout")
		Game.CloseCondition()

		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("lawnchr")
		Game.SetStageMessageIndex(106)
		Game.AddStageTime(5)

		Game.AddObjective("goto","both")
			Game.SetDestination("m2_object4","lwnchair")
			Game.TurnGotoDialogOff()
		Game.CloseObjective()

		Game.AddCondition("timeout")
		Game.CloseCondition()

		Game.SetCompletionDialog("picture")

		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("photo")
		Game.SetStageMessageIndex(107)
		Game.AddStageTime(10)

		Game.AddObjective("goto","both")
			Game.SetDestination("m2_object5","flanpic")
			Game.TurnGotoDialogOff()
		Game.CloseObjective()

		Game.AddCondition("timeout")
		Game.CloseCondition()

		Game.SetCompletionDialog("inhaler")

		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("inhaler")
		Game.SetStageMessageIndex(108)
		Game.AddStageTime(10)

		Game.AddStageVehicle("plowk_v","m2_barney_carstart","NULL","Missions\\level01\\M2evade.con", "barney")

		Game.AddObjective("goto","both")
			Game.SetDestination("m2_object6","inhaler")

			Game.TurnGotoDialogOff()
		Game.CloseObjective()

		Game.AddCondition("timeout")
		Game.CloseCondition()

		Game.SetCompletionDialog("return")

		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("ned")
		Game.SetStageMessageIndex(109)
		Game.AddStageTime(17)

		Game.AddObjective("goto")
			Game.AddNPC("ned", "m2_ned_sd")

			Game.SetDestination( "m2_simpsonhouse_sd", "carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")
		Game.CloseCondition()

		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(18)
		Game.SetHUDIcon("barne")
		Game.SetStageMessageIndex(110)
		Game.SetStageTime(30)

		Game.ActivateVehicle("plowk_v", "NULL", "chase")

		Game.AddObjective("losetail")
			Game.SetObjTargetVehicle("plowk_v")
			Game.SetObjDistance(200)
		Game.CloseObjective()

		Game.AddCondition("timeout")
		Game.CloseCondition()

		Game.AddStageMusicChange()
		Game.StageStartMusicEvent("M3_drama")

		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("ned")
		Game.SetStageMessageIndex(109)

		Game.AddObjective( "goto" )
			Game.AddNPC("ned", "m2_ned_sd")

			Game.SetDestination("m2_nedhouse", "carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()

		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(4)
		Game.SetHUDIcon("ned")
		Game.SetStageMessageIndex(111)

		Game.AddObjective("talkto","both")
			Game.AddNPC("ned", "m2_ned_sd")
			Game.AddObjectiveNPCWaypoint("ned", "ned_walk_1")
			Game.AddObjectiveNPCWaypoint("ned", "ned_walk_2")
			Game.AddObjectiveNPCWaypoint("ned", "ned_walk_3")
			Game.AddObjectiveNPCWaypoint("ned", "ned_walk_2")
			Game.AddObjectiveNPCWaypoint("ned", "ned_walk_1")
			Game.SetTalkToTarget("ned", 0, 0)
		Game.CloseObjective()

		Game.AddStageMusicChange()
		
		Game.SetStageMusicAlwaysOn()
	Game.CloseStage()

	Game.AddStage("final")
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1, 0)
			Game.AmbientAnimationRandomize(0, 0)
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_yes")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_shake_hand_in_air")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_shaking_fist")
			Game.SetCamBestSide("m2_bestside")
			Game.SetDialogueInfo("homer","ned","reward",0)
			Game.SetDialoguePositions("m2_homer_ned","m2_ned_sd","m2_carstart",1)
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()