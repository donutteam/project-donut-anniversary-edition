Game.SelectMission("m8sd")
	Game.ShowHUD("false")

	Game.AddStage(2)
		Game.SetCharacterToHide("homer")

		Game.AddObjective("timer")
			Game.SetDurationTime(2)
			
			Game.SetGameOver()
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
