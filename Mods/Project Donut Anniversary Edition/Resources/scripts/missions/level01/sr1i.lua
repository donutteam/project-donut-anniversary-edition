local function DerbyStage(HUDIcon, StageMessageIndex, CarName, CarLocator, CarCON, CarDriver, IsFirstStage)
	Game.AddStage()
		Game.SetHUDIcon(HUDIcon)
		Game.SetStageMessageIndex(StageMessageIndex)

		local RoundTime = ({ 120, 70 })[Settings.MissionDifficulty]

		Game.SetStageTime(RoundTime)

		if IsFirstStage then
			Game.StartCountdown("count")
			Game.AddToCountdownSequence("3", 1500)
			Game.AddToCountdownSequence("2", 900)
			Game.AddToCountdownSequence("1", 1000)
			Game.AddToCountdownSequence("GO", 400)
			
			Game.PlacePlayerCar("current", "sr1_carstart")
			Game.PutMFPlayerInCar()
		end

        Game.DisableHitAndRun()
		Game.NoTrafficForStage()

		Game.AddStageVehicle(CarName, CarLocator, "chase", CarCON, CarDriver)
       
		Game.AddObjective("destroy", "neither")
			Game.SetObjTargetVehicle(CarName)
		Game.CloseObjective()

		Game.AddCondition("damage")
			Game.SetCondMinHealth(0.0)
			Game.SetCondTargetVehicle("current")
		Game.CloseCondition()

		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()

		Game.AddCondition("timeout")
		Game.CloseCondition()

        Game.ShowStageComplete()
	Game.CloseStage()
end

Game.SelectMission("sr1")
	-- Game.SetAnimatedCameraName("race1camShape")
	-- Game.SetAnimCamMulticontName("race1cam")
	
	Game.SetDynaLoadData("l1z7.p3d;l1r7.p3d;l1r6.p3d;")
	Game.SetMissionResetPlayerInCar("sr1_carstart")
	
	Game.UsePedGroup(5)
	
	Game.StreetRacePropsLoad("l1_sr1p.p3d;")
	Game.StreetRacePropsUnload("l1_sr1p.p3d:")

	DerbyStage("bart",    1, "light_v", "sr1_light_carstart",    "missions\\level01\\sr1\\light_v.con", "bart", true)
 
	DerbyStage("apu",     2, "apu_v",   "sr1_longhorn_carstart", "missions\\level01\\sr1\\apu_v.con",   "apu")

	DerbyStage("moleman", 3, "cBone",   "sr1_bone_carstart",     "missions\\level01\\sr1\\cBone.con",   "moleman")

	DerbyStage("marage",  4, "marge_v", "sr1_marge_carstart",    "missions\\level01\\sr1\\marge_v.con", "m_prison")

	Game.AddStage(4,"final")
		Game.AddObjective("dialogue")
			Game.AddNPC("patty", "sr1_patty")
			Game.AddNPC("selma", "sr1_selma")
			Game.SetDialogueInfo("patty","homer","success",0)
			Game.SetDialoguePositions("sr1_patty","sr1_homer","sr1_carstart")
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()