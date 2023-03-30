Game.SelectMission("sr3")
	Game.SetAnimatedCameraName("race3camShape")
	Game.SetAnimCamMulticontName("race3cam")

	Game.SetDynaLoadData("l1z2.p3d;l1r2.p3d;l1z3.p3d;")
	Game.SetMissionResetPlayerInCar("sr3_carstart")

	Game.UsePedGroup(2)

	Game.StreetRacePropsLoad("l1_sr3p.p3d;")
	Game.StreetRacePropsUnload("l1_sr3p.p3d:")

	Game.AddStage(0)
		local StageTime = ({ 110, 87 })[Settings.MissionDifficulty]

		Game.RESET_TO_HERE()

		Game.SetHUDIcon("race")
		Game.SetStageMessageIndex(0)
		Game.SetStageTime(StageTime)

		Game.PlacePlayerCar("current", "sr3_carstart")

		Game.PutMFPlayerInCar()

		Game.StartCountdown("count")
		Game.AddToCountdownSequence("1", 1000)
		Game.AddToCountdownSequence("1", 1000)
		Game.AddToCountdownSequence("1", 900)
		Game.AddToCountdownSequence("GO", 400)

		Game.AddStageVehicle("light_v","sr3_AI_carstart2","evade","special\\l1sr3_1st.con","bart")
		Game.SetStageAIRaceCatchupParams("light_v", 100, 0.6, 1.0, 1.75)

		Game.AddStageVehicle("apu_v","sr3_AI_carstart4","target`","special\\l1sr3_2nd.con","apu")
		Game.SetStageAIRaceCatchupParams("apu_v", 80, 0.6, 0.9, 1.25)

		Game.AddStageVehicle("hype_v","sr3_AI_carstart3","target","special\\l1sr3_3rd.con","moleman")
		Game.SetStageAIRaceCatchupParams("hype_v", 80, 0.6, 0.9, 1.25)

		Game.AddStageVehicle("cPolice","sr3_AI_carstart1","race","special\\l1sr3_4th.con","jimbo")
		Game.SetStageAIRaceCatchupParams("cPolice", 80, 0.6, 0.9, 1.25)

		Game.AddStageWaypoint("sr3_navpoint1")
		Game.AddStageWaypoint("sr3_navpoint2")
		Game.AddStageWaypoint("sr3_navpoint3")
		Game.AddStageWaypoint("sr3_navpoint4")

		Game.AddObjective("race","intersection")
			Game.AddNPC("patty", "sr3_patty")
			Game.AddNPC("selma", "sr3_selma")

			Game.AddCollectible("sr3_waypoint1","carsphere")
			Game.AddCollectible("sr3_waypoint2","carsphere")
			Game.AddCollectible("sr3_waypoint3","carsphere")
			Game.AddCollectible("sr3_waypoint4","carsphere")
			Game.AddCollectible("sr3_finish","carsphere")

			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()

		Game.AddCondition("damage")
			Game.SetCondMinHealth(0.0)
			Game.SetCondTargetVehicle("current")
		Game.CloseCondition()

		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()

		Game.AddCondition("position")
			Game.SetConditionPosition(1)
		Game.CloseCondition()

		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage("final")
		Game.AddObjective("dialogue")
			Game.AddNPC("patty", "sr3_patty")
			Game.AddNPC("selma", "sr3_selma")
			Game.SetDialogueInfo("patty","homer","success",0)
			Game.SetDialoguePositions("sr3_patty","sr3_homer_end","sr3_car_end")
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()