Game.SelectMission("bm1")
	Game.SetDynaLoadData("l1z7.p3d;l1r6.p3d;l1r7.p3d;")
	Game.SetMissionResetPlayerInCar("bm1_carstart")

	Game.UsePedGroup(5)

	Game.AddStage(0)
		Game.RESET_TO_HERE()

		Game.SetStageMessageIndex(0)

		Game.AddObjective("getin")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(16)
		Game.SetHUDIcon("cardboar")
		Game.SetStageMessageIndex(1)
		Game.SetStageTime(250)

		Game.AddObjective("delivery")
			for index = 1, 15 do
				Game.AddCollectible("bm1_cardboard" .. index, "poster_t")
			end
		Game.CloseObjective()

		Game.AddCondition("timeout")
		Game.CloseCondition()

		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("tamacco")
		Game.SetStageMessageIndex(2)
		Game.AddStageTime(5)

		Game.AddObjective("goto")
			Game.AddNPC("cletus","bm1_cletus_sd")

			Game.SetDestination("bm1_tomacco", "carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()

		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage(16)
		Game.SetHUDIcon("tamacco")
		Game.SetStageMessageIndex(3)
		Game.AddStageTime(5)

		Game.AddObjective("delivery")
			for i = 1, 12 do
				Game.AddCollectible("bm1_tomacco" .. i, "tomat")
			end

			Game.SetCollectibleEffect("bonestorm_explosion")
		Game.CloseObjective()

		Game.AddCondition("timeout")
		Game.CloseCondition()

		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("cletushs")
		Game.SetStageMessageIndex(215)
		Game.AddStageTime(45)

		Game.AddObjective("goto")
			Game.AddNPC("cletus","bm1_cletus_sd")

			Game.SetDestination("bm_cletushouse", "carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()

		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("cletus")
		Game.SetStageMessageIndex(25)

		Game.AddObjective("talkto")
			Game.AddNPC("cletus","bm1_cletus_sd")

			Game.AddObjectiveNPCWaypoint("cletus", "bm1_cletus_walk1")
			Game.SetTalkToTarget("cletus", 0, 0)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0, "final")
		Game.AddObjective("dialogue")
			Game.SetCamBestSide("bm1_bestside")
			Game.SetDialogueInfo("homer","cletus","cityboy",0)
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
