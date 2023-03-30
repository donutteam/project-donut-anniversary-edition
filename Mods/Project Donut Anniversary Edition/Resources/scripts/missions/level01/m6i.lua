Game.SelectMission("m6")
	Game.SetDynaLoadData("l1z3.p3d;l1r3.p3d;l1r2.p3d;")
	Game.SetMissionResetPlayerInCar("m6_canyanaro_sd")

	Game.InitLevelPlayerVehicle("marge_v","m6_canyanaro_sd","OTHER")

	Game.SetNumValidFailureHints(5)

	Game.UsePedGroup(3)

	Game.SetForcedCar()

	Game.AddStage()
		Game.RESET_TO_HERE()

		local NumberToCollect = ({ 11, 22 })[Settings.MissionDifficulty]
		local TimePerItem = ({ 15, 9 })[Settings.MissionDifficulty]

		Game.SetHUDIcon("bonestor")
		Game.SetStageMessageIndex(101)
		Game.AddStageVehicle("cBone","m6_cBone_carstart","target","special\\l1m6_bonestorm.con", "jimbo")

		Game.SetVehicleAIParams("cBone", -10, -9)

		Game.AddStageWaypoint("m6_cBone_path1")
		Game.AddStageWaypoint("m6_cBone_path2")
		Game.AddStageWaypoint("m6_cBone_path3")

		Game.SetStageTime(TimePerItem * NumberToCollect)

		Game.AddObjective("dump","neither")
			Game.AddNPC("marge", "m6_marge_hide")

			Game.SetObjTargetVehicle("cBone")

			for i = 1, NumberToCollect do
				Game.AddCollectible("m6_bonestorm" .. i, "bonestorm")
			end

			Game.SetCollectibleEffect("bonestorm_explosion")
		Game.CloseObjective()

		Game.AddCondition("damage")
			Game.SetCondMinHealth(0.0)
			Game.SetCondTargetVehicle("marge_v")
		Game.CloseCondition()

		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()

		Game.AddCondition("timeout")
		Game.CloseCondition()

		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("simpsons")
		Game.SetStageMessageIndex(102)

		Game.AddStageVehicle("wiggu_v","m6_wiggu_v_carstart","NULL","special\\l1m6_wiggum.con", "wiggum")

		Game.AddObjective("goto", "both")
			Game.SetDestination("m2_simpsonhouse_sd", "carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
		
		Game.AddCondition("damage")
			Game.SetCondMinHealth(0.0)
			Game.SetCondTargetVehicle("marge_v")
		Game.CloseCondition()

		Game.AddCondition("outofvehicle")
			Game.SetCondTime( 10000 )
		Game.CloseCondition()

		Game.SetCompletionDialog("life","wiggum")
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("wiggu_v")
		Game.SetStageMessageIndex(103)
		Game.SetStageTime(({ 80, 55 })[Settings.MissionDifficulty])

		Game.ActivateVehicle("wiggu_v","NULL","chase")

		Game.AddObjective("losetail")
			Game.SetObjTargetVehicle("wiggu_v")
			Game.SetObjDistance(({ 200, 300 })[Settings.MissionDifficulty])
		Game.CloseObjective()

		Game.AddCondition("damage")
			Game.SetCondMinHealth(0.0)
			Game.SetCondTargetVehicle("wiggu_v")
		Game.CloseCondition()

		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()

		Game.AddCondition("timeout")
		Game.CloseCondition()

		Game.AddStageMusicChange()
		Game.SetMusicState("Mission2", "wiggu_v")

		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("simpsons")
		Game.SetStageMessageIndex(104)

		Game.AddObjective("goto", "both")
			Game.SetDestination("m2_simpsonhouse_sd", "carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()

		Game.AddCondition("damage")
			Game.SetCondMinHealth(0.0)
			Game.SetCondTargetVehicle("marge_v")
		Game.CloseCondition()

		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()

		Game.SetFadeOut(1.0)

		Game.SwapInDefaultCar()
		Game.SetSwapDefaultCarLocator("m6_carstart")
		Game.SetSwapForcedCarLocator("m6_canyanaro_sd")
		Game.SetSwapPlayerLocator("level1_homer_walkto")
	Game.CloseStage()

	Game.AddStage()
		Game.AddObjective("timer")
			Game.AddNPC("marge", "m1_marge_sd")
			Game.StayInBlack()
			Game.SetDurationTime(1)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage("final")
		Game.AddObjective("dialogue")
			Game.AddNPC("marge", "m1_marge_sd")
			Game.AmbientAnimationRandomize(1, 0)
			Game.AmbientAnimationRandomize(0, 0)
			Game.SetConversationCam(0, "npc_far")
			Game.SetConversationCam(1, "pc_near")
			Game.SetConversationCam(2, "npc_far")
			Game.AddAmbientNpcAnimation("dialogue_open_arm_hand_gesture")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_cross_arms")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_yes")
			Game.AddAmbientPcAnimation("none")
			Game.SetDialogueInfo("homer","marge","sharing",0)
			Game.SetCamBestSide("bestside_m1")
			Game.SetDialoguePositions("level1_homer_walkto","m1_marge_sd","m6_carstart",1)
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()