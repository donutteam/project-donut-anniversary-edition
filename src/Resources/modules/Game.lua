local function OutputCommand(CommandName, Conditional, ...)
	local Args = ""
	local first = true
	for k,v in pairs({...}) do	
		if v ~= nil then
			if first then
				first = false
			else
				Args = Args .. ","
			end
			Args = Args .. "\""
			Args = Args .. tostring(v)
			Args = Args .. "\"" 
		end
	end
	
	Output(CommandName .. "(" .. Args .. ")")

	if Conditional then
		Output("{")
	else
		Output(";")
	end
end

Game = {}

function Game.SetMass(...)
	OutputCommand("SetMass", false, ...)
end

function Game.SetGasScale(...)
	OutputCommand("SetGasScale", false, ...)
end

function Game.SetHighSpeedGasScale(...)
	OutputCommand("SetHighSpeedGasScale", false, ...)
end

function Game.SetGasScaleSpeedThreshold(...)
	OutputCommand("SetGasScaleSpeedThreshold", false, ...)
end

function Game.SetSlipGasScale(...)
	OutputCommand("SetSlipGasScale", false, ...)
end

function Game.SetBrakeScale(...)
	OutputCommand("SetBrakeScale", false, ...)
end

function Game.SetTopSpeedKmh(...)
	OutputCommand("SetTopSpeedKmh", false, ...)
end

function Game.SetMaxWheelTurnAngle(...)
	OutputCommand("SetMaxWheelTurnAngle", false, ...)
end

function Game.SetHighSpeedSteeringDrop(...)
	OutputCommand("SetHighSpeedSteeringDrop", false, ...)
end

function Game.SetTireGrip(...)
	OutputCommand("SetTireGrip", false, ...)
end

function Game.SetNormalSteering(...)
	OutputCommand("SetNormalSteering", false, ...)
end

function Game.SetSlipSteering(...)
	OutputCommand("SetSlipSteering", false, ...)
end

function Game.SetEBrakeEffect(...)
	OutputCommand("SetEBrakeEffect", false, ...)
end

function Game.SetCMOffsetX(...)
	OutputCommand("SetCMOffsetX", false, ...)
end

function Game.SetCMOffsetY(...)
	OutputCommand("SetCMOffsetY", false, ...)
end

function Game.SetCMOffsetZ(...)
	OutputCommand("SetCMOffsetZ", false, ...)
end

function Game.SetSuspensionLimit(...)
	OutputCommand("SetSuspensionLimit", false, ...)
end

function Game.SetSpringK(...)
	OutputCommand("SetSpringK", false, ...)
end

function Game.SetDamperC(...)
	OutputCommand("SetDamperC", false, ...)
end

function Game.SetSuspensionYOffset(...)
	OutputCommand("SetSuspensionYOffset", false, ...)
end

function Game.SetHitPoints(...)
	OutputCommand("SetHitPoints", false, ...)
end

function Game.SetBurnoutRange(...)
	OutputCommand("SetBurnoutRange", false, ...)
end

function Game.SetMaxSpeedBurstTime(...)
	OutputCommand("SetMaxSpeedBurstTime", false, ...)
end

function Game.SetDonutTorque(...)
	OutputCommand("SetDonutTorque", false, ...)
end

function Game.SetSlipSteeringNoEBrake(...)
	OutputCommand("SetSlipSteeringNoEBrake", false, ...)
end

function Game.SetSlipEffectNoEBrake(...)
	OutputCommand("SetSlipEffectNoEBrake", false, ...)
end

function Game.SetWeebleOffset(...)
	OutputCommand("SetWeebleOffset", false, ...)
end

function Game.SetWheelieRange(...)
	OutputCommand("SetWheelieRange", false, ...)
end

function Game.SetWheelieOffsetY(...)
	OutputCommand("SetWheelieOffsetY", false, ...)
end

function Game.SetWheelieOffsetZ(...)
	OutputCommand("SetWheelieOffsetZ", false, ...)
end

function Game.SetShadowAdjustments(...)
	OutputCommand("SetShadowAdjustments", false, ...)
end

function Game.SetShininess(...)
	OutputCommand("SetShininess", false, ...)
end

function Game.SetDriver(...)
	OutputCommand("SetDriver", false, ...)
end

function Game.SetGamblingOdds(...)
	OutputCommand("SetGamblingOdds", false, ...)
end

function Game.SetHasDoors(...)
	OutputCommand("SetHasDoors", false, ...)
end

function Game.SetCharactersVisible(...)
	OutputCommand("SetCharactersVisible", false, ...)
end

function Game.SetIrisTransition(...)
	OutputCommand("SetIrisTransition", false, ...)
end

function Game.SetAllowSeatSlide(...)
	OutputCommand("SetAllowSeatSlide", false, ...)
end

function Game.SetHighRoof(...)
	OutputCommand("SetHighRoof", false, ...)
end

function Game.SetCharacterScale(...)
	OutputCommand("SetCharacterScale", false, ...)
end

function Game.SuppressDriver(...)
	OutputCommand("SuppressDriver", false, ...)
end

function Game.InitLevelPlayerVehicle(...)
	OutputCommand("InitLevelPlayerVehicle", false, ...)
end

function Game.PlacePlayerCar(...)
	OutputCommand("PlacePlayerCar", false, ...)
end

function Game.AddPurchaseCarReward(...)
	OutputCommand("AddPurchaseCarReward", false, ...)
end

function Game.SetPostLevelFMV(...)
	OutputCommand("SetPostLevelFMV", false, ...)
end

function Game.CreatePedGroup(...)
	OutputCommand("CreatePedGroup", false, ...)
end

function Game.AddPed(...)
	OutputCommand("AddPed", false, ...)
end

function Game.ClosePedGroup(...)
	OutputCommand("ClosePedGroup", false, ...)
end

function Game.UsePedGroup(...)
	OutputCommand("UsePedGroup", false, ...)
end

function Game.BindReward(...)
	OutputCommand("BindReward", false, ...)
end

function Game.CreateTrafficGroup(...)
	OutputCommand("CreateTrafficGroup", false, ...)
end

function Game.AddTrafficModel(...)
	OutputCommand("AddTrafficModel", false, ...)
end

function Game.CloseTrafficGroup(...)
	OutputCommand("CloseTrafficGroup", false, ...)
end

function Game.SetCarAttributes(...)
	OutputCommand("SetCarAttributes", false, ...)
end

function Game.SetTotalGags(...)
	OutputCommand("SetTotalGags", false, ...)
end

function Game.SetTotalWasps(...)
	OutputCommand("SetTotalWasps", false, ...)
end

function Game.AddGlobalProp(...)
	OutputCommand("AddGlobalProp", false, ...)
end

function Game.CreateChaseManager(...)
	OutputCommand("CreateChaseManager", false, ...)
end

function Game.DisableHitAndRun(...)
	OutputCommand("DisableHitAndRun", false, ...)
end

function Game.EnableHitAndRun(...)
	OutputCommand("EnableHitAndRun", false, ...)
end

function Game.SetHitAndRunMeter(...)
	OutputCommand("SetHitAndRunMeter", false, ...)
end

function Game.SetNumChaseCars(...)
	OutputCommand("SetNumChaseCars", false, ...)
end

function Game.SetChaseSpawnRate(...)
	OutputCommand("SetChaseSpawnRate", false, ...)
end

function Game.KillAllChaseAI(...)
	OutputCommand("KillAllChaseAI", false, ...)
end

function Game.ResetHitAndRun(...)
	OutputCommand("ResetHitAndRun", false, ...)
end

function Game.SetHitAndRunDecay(...)
	OutputCommand("SetHitAndRunDecay", false, ...)
end

function Game.SetHitAndRunDecayInterior(...)
	OutputCommand("SetHitAndRunDecayInterior", false, ...)
end

function Game.AddMission(...)
	OutputCommand("AddMission", false, ...)
end

function Game.AddBonusMission(...)
	OutputCommand("AddBonusMission", false, ...)
end

function Game.SetMissionNameIndex(...)
	OutputCommand("SetMissionNameIndex", false, ...)
end

function Game.SelectMission(...)
	OutputCommand("SelectMission", false, ...)
end

function Game.SetMissionResetPlayerInCar(...)
	OutputCommand("SetMissionResetPlayerInCar", false, ...)
end

function Game.SetMissionResetPlayerOutCar(...)
	OutputCommand("SetMissionResetPlayerOutCar", false, ...)
end

function Game.SetDynaLoadData(...)
	OutputCommand("SetDynaLoadData", false, ...)
end

function Game.AddBonusObjective(...)
	OutputCommand("AddBonusObjective", false, ...)
end

function Game.SetForcedCar(...)
	OutputCommand("SetForcedCar", false, ...)
end

function Game.CloseMission(...)
	OutputCommand("CloseMission", false, ...)
end

function Game.SetDemoLoopTime(...)
	OutputCommand("SetDemoLoopTime", false, ...)
end

function Game.StreetRacePropsLoad(...)
	OutputCommand("StreetRacePropsLoad", false, ...)
end

function Game.StreetRacePropsUnload(...)
	OutputCommand("StreetRacePropsUnload", false, ...)
end

function Game.UseElapsedTime(...)
	OutputCommand("UseElapsedTime", false, ...)
end

function Game.AttachStatePropCollectible(...)
	OutputCommand("AttachStatePropCollectible", false, ...)
end

function Game.ShowHUD(...)
	OutputCommand("ShowHUD", false, ...)
end

function Game.SetNumValidFailureHints(...)
	OutputCommand("SetNumValidFailureHints", false, ...)
end

function Game.AddStage(...)
	OutputCommand("AddStage", false, ...)
end

function Game.SetStageMessageIndex(...)
	OutputCommand("SetStageMessageIndex", false, ...)
end

function Game.SetStageTime(...)
	OutputCommand("SetStageTime", false, ...)
end

function Game.AddStageTime(...)
	OutputCommand("AddStageTime", false, ...)
end

function Game.AddStageVehicle(...)
	OutputCommand("AddStageVehicle", false, ...)
end

function Game.MoveStageVehicle(...)
	OutputCommand("MoveStageVehicle", false, ...)
end

function Game.ActivateVehicle(...)
	OutputCommand("ActivateVehicle", false, ...)
end

function Game.AddStageWaypoint(...)
	OutputCommand("AddStageWaypoint", false, ...)
end

function Game.AddStageCharacter(...)
	OutputCommand("AddStageCharacter", false, ...)
end

function Game.AddStageMusicChange(...)
	OutputCommand("AddStageMusicChange", false, ...)
end

function Game.SetStageMusicAlwaysOn(...)
	OutputCommand("SetStageMusicAlwaysOn", false, ...)
end

function Game.SetCompletionDialog(...)
	OutputCommand("SetCompletionDialog", false, ...)
end

function Game.StageStartMusicEvent(...)
	OutputCommand("StageStartMusicEvent", false, ...)
end

function Game.SetMusicState(...)
	OutputCommand("SetMusicState", false, ...)
end

function Game.SetStageCamera(...)
	OutputCommand("SetStageCamera", false, ...)
end

function Game.RESET_TO_HERE(...)
	OutputCommand("RESET_TO_HERE", false, ...)
end

function Game.SetMaxTraffic(...)
	OutputCommand("SetMaxTraffic", false, ...)
end

function Game.AddSafeZone(...)
	OutputCommand("AddSafeZone", false, ...)
end

function Game.SetBonusMissionStart(...)
	OutputCommand("SetBonusMissionStart", false, ...)
end

function Game.ShowStageComplete(...)
	OutputCommand("ShowStageComplete", false, ...)
end

function Game.SetHUDIcon(...)
	OutputCommand("SetHUDIcon", false, ...)
end

function Game.SetIrisWipe(...)
	OutputCommand("SetIrisWipe", false, ...)
end

function Game.SetFadeOut(...)
	OutputCommand("SetFadeOut", false, ...)
end

function Game.CloseStage(...)
	OutputCommand("CloseStage", false, ...)
end

function Game.SetVehicleAIParams(...)
	OutputCommand("SetVehicleAIParams", false, ...)
end

function Game.PlacePlayerAtLocatorName(...)
	OutputCommand("PlacePlayerAtLocatorName", false, ...)
end

function Game.msPlacePlayerCarAtLocatorName(...)
	OutputCommand("msPlacePlayerCarAtLocatorName", false, ...)
end

function Game.SwapInDefaultCar(...)
	OutputCommand("SwapInDefaultCar", false, ...)
end

function Game.SetSwapPlayerLocator(...)
	OutputCommand("SetSwapPlayerLocator", false, ...)
end

function Game.SetSwapDefaultCarLocator(...)
	OutputCommand("SetSwapDefaultCarLocator", false, ...)
end

function Game.SetSwapForcedCarLocator(...)
	OutputCommand("SetSwapForcedCarLocator", false, ...)
end

function Game.NoTrafficForStage(...)
	OutputCommand("NoTrafficForStage", false, ...)
end

function Game.ClearTrafficForStage(...)
	OutputCommand("ClearTrafficForStage", false, ...)
end

function Game.SetStageAIRaceCatchupParams(...)
	OutputCommand("SetStageAIRaceCatchupParams", false, ...)
end

function Game.SetStageAIEvadeCatchupParams(...)
	OutputCommand("SetStageAIEvadeCatchupParams", false, ...)
end

function Game.SetStageAITargetCatchupParams(...)
	OutputCommand("SetStageAITargetCatchupParams", false, ...)
end

function Game.SetCharacterToHide(...)
	OutputCommand("SetCharacterToHide", false, ...)
end

function Game.SetLevelOver(...)
	OutputCommand("SetLevelOver", false, ...)
end

function Game.SetGameOver(...)
	OutputCommand("SetGameOver", false, ...)
end

function Game.StayInBlack(...)
	OutputCommand("StayInBlack", false, ...)
end

function Game.AllowMissionAbort(...)
	OutputCommand("AllowMissionAbort", false, ...)
end

function Game.SetParTime(...)
	OutputCommand("SetParTime", false, ...)
end

function Game.SetRaceEnteryFee(...)
	OutputCommand("SetRaceEnteryFee", false, ...)
end

function Game.PutMFPlayerInCar(...)
	OutputCommand("PutMFPlayerInCar", false, ...)
end

function Game.SetStatepropShadow(...)
	OutputCommand("SetStatepropShadow", false, ...)
end

function Game.AddObjective(...)
	OutputCommand("AddObjective", false, ...)
end

function Game.CloseObjective(...)
	OutputCommand("CloseObjective", false, ...)
end

function Game.SetDestination(...)
	OutputCommand("SetDestination", false, ...)
end

function Game.AddNPC(...)
	OutputCommand("AddNPC", false, ...)
end

function Game.RemoveNPC(...)
	OutputCommand("RemoveNPC", false, ...)
end

function Game.AddDriver(...)
	OutputCommand("AddDriver", false, ...)
end

function Game.RemoveDriver(...)
	OutputCommand("RemoveDriver", false, ...)
end

function Game.SetTalkToTarget(...)
	OutputCommand("SetTalkToTarget", false, ...)
end

function Game.SetDialogueInfo(...)
	OutputCommand("SetDialogueInfo", false, ...)
end

function Game.SetDialoguePositions(...)
	OutputCommand("SetDialoguePositions", false, ...)
end

function Game.SetRaceLaps(...)
	OutputCommand("SetRaceLaps", false, ...)
end

function Game.TurnGotoDialogOff(...)
	OutputCommand("TurnGotoDialogOff", false, ...)
end

function Game.MustActionTrigger(...)
	OutputCommand("MustActionTrigger", false, ...)
end

function Game.SetCoinFee(...)
	OutputCommand("SetCoinFee", false, ...)
end

function Game.SetDurationTime(...)
	OutputCommand("SetDurationTime", false, ...)
end

function Game.AddCollectible(...)
	OutputCommand("AddCollectible", false, ...)
end

function Game.SetCollectibleEffect(...)
	OutputCommand("SetCollectibleEffect", false, ...)
end

function Game.BindCollectibleTo(...)
	OutputCommand("BindCollectibleTo", false, ...)
end

function Game.AllowUserDump(...)
	OutputCommand("AllowUserDump", false, ...)
end

function Game.SetVehicleToLoad(...)
	OutputCommand("SetVehicleToLoad", false, ...)
end

function Game.SetObjTargetVehicle(...)
	OutputCommand("SetObjTargetVehicle", false, ...)
end

function Game.SetObjDistance(...)
	OutputCommand("SetObjDistance", false, ...)
end

function Game.SetObjTargetBoss(...)
	OutputCommand("SetObjTargetBoss", false, ...)
end

function Game.AddCollectibleStateProp(...)
	OutputCommand("AddCollectibleStateProp", false, ...)
end

function Game.SetPickupTarget(...)
	OutputCommand("SetPickupTarget", false, ...)
end

function Game.AllowRockOut(...)
	OutputCommand("AllowRockOut", false, ...)
end

function Game.AddCondition(...)
	OutputCommand("AddCondition", false, ...)
end

function Game.CloseCondition(...)
	OutputCommand("CloseCondition", false, ...)
end

function Game.SetFollowDistances(...)
	OutputCommand("SetFollowDistances", false, ...)
end

function Game.SetCondTargetVehicle(...)
	OutputCommand("SetCondTargetVehicle", false, ...)
end

function Game.SetConditionPosition(...)
	OutputCommand("SetConditionPosition", false, ...)
end

function Game.SetCondTime(...)
	OutputCommand("SetCondTime", false, ...)
end

function Game.SetHitNRun(...)
	OutputCommand("SetHitNRun", false, ...)
end

function Game.EnableTutorialMode(...)
	OutputCommand("EnableTutorialMode", false, ...)
end

function Game.SetConversationCamName(...)
	OutputCommand("SetConversationCamName", false, ...)
end

function Game.SetConversationCamPcName(...)
	OutputCommand("SetConversationCamPcName", false, ...)
end

function Game.SetConversationCamNpcName(...)
	OutputCommand("SetConversationCamNpcName", false, ...)
end

function Game.SetConversationCam(...)
	OutputCommand("SetConversationCam", false, ...)
end

function Game.SetConversationCamDistance(...)
	OutputCommand("SetConversationCamDistance", false, ...)
end

function Game.AmbientAnimationRandomize(...)
	OutputCommand("AmbientAnimationRandomize", false, ...)
end

function Game.ClearAmbientAnimations(...)
	OutputCommand("ClearAmbientAnimations", false, ...)
end

function Game.AddAmbientPcAnimation(...)
	OutputCommand("AddAmbientPcAnimation", false, ...)
end

function Game.AddAmbientNpcAnimation(...)
	OutputCommand("AddAmbientNpcAnimation", false, ...)
end

function Game.CharacterIsChild(...)
	OutputCommand("CharacterIsChild", false, ...)
end

function Game.SetPresentationBitmap(...)
	OutputCommand("SetPresentationBitmap", false, ...)
end

function Game.SetAnimCamMulticontName(...)
	OutputCommand("SetAnimCamMulticontName", false, ...)
end

function Game.SetAnimatedCameraName(...)
	OutputCommand("SetAnimatedCameraName", false, ...)
end

function Game.SetMissionStartMulticontName(...)
	OutputCommand("SetMissionStartMulticontName", false, ...)
end

function Game.SetMissionStartCameraName(...)
	OutputCommand("SetMissionStartCameraName", false, ...)
end

function Game.SetCamBestSide(...)
	OutputCommand("SetCamBestSide", false, ...)
end

function Game.SetFMVInfo(...)
	OutputCommand("SetFMVInfo", false, ...)
end

function Game.StartCountdown(...)
	OutputCommand("StartCountdown", false, ...)
end

function Game.AddToCountdownSequence(...)
	OutputCommand("AddToCountdownSequence", false, ...)
end

function Game.SetCarStartCamera(...)
	OutputCommand("SetCarStartCamera", false, ...)
end

function Game.GoToPsScreenWhenDone(...)
	OutputCommand("GoToPsScreenWhenDone", false, ...)
end

function Game.SetPlayerCarName(...)
	OutputCommand("SetPlayerCarName", false, ...)
end

function Game.SetCondMinHealth(...)
	OutputCommand("SetCondMinHealth", false, ...)
end

function Game.LoadP3DFile(...)
	OutputCommand("LoadP3DFile", false, ...)
end

function Game.LoadDisposableCar(...)
	OutputCommand("LoadDisposableCar", false, ...)
end

function Game.SetRespawnRate(...)
	OutputCommand("SetRespawnRate", false, ...)
end

function Game.AddCharacter(...)
	OutputCommand("AddCharacter", false, ...)
end

function Game.AddNPCCharacterBonusMission(...)
	OutputCommand("AddNPCCharacterBonusMission", false, ...)
end

function Game.SetBonusMissionDialoguePos(...)
	OutputCommand("SetBonusMissionDialoguePos", false, ...)
end

function Game.AddAmbientCharacter(...)
	OutputCommand("AddAmbientCharacter", false, ...)
end

function Game.AddBonusMissionNPCWaypoint(...)
	OutputCommand("AddBonusMissionNPCWaypoint", false, ...)
end

function Game.AddObjectiveNPCWaypoint(...)
	OutputCommand("AddObjectiveNPCWaypoint", false, ...)
end

function Game.AddAmbientNPCWaypoint(...)
	OutputCommand("AddAmbientNPCWaypoint", false, ...)
end

function Game.AddPurchaseCarNPCWaypoint(...)
	OutputCommand("AddPurchaseCarNPCWaypoint", false, ...)
end

function Game.ActivateTrigger(...)
	OutputCommand("ActivateTrigger", false, ...)
end

function Game.DeactivateTrigger(...)
	OutputCommand("DeactivateTrigger", false, ...)
end

function Game.CreateAnimPhysObject(...)
	OutputCommand("CreateAnimPhysObject", false, ...)
end

function Game.CreateActionEventTrigger(...)
	OutputCommand("CreateActionEventTrigger", false, ...)
end

function Game.LinkActionToObjectJoint(...)
	OutputCommand("LinkActionToObjectJoint", false, ...)
end

function Game.LinkActionToObject(...)
	OutputCommand("LinkActionToObject", false, ...)
end

function Game.SetCoinDrawable(...)
	OutputCommand("SetCoinDrawable", false, ...)
end

function Game.SetParticleTexture(...)
	OutputCommand("SetParticleTexture", false, ...)
end

function Game.SetCharacterPosition(...)
	OutputCommand("SetCharacterPosition", false, ...)
end

function Game.ResetCharacter(...)
	OutputCommand("ResetCharacter", false, ...)
end

function Game.AddTeleportDest(...)
	OutputCommand("AddTeleportDest", false, ...)
end

function Game.SetInitialWalk(...)
	OutputCommand("SetInitialWalk", false, ...)
end

function Game.AddVehicleSelectInfo(...)
	OutputCommand("AddVehicleSelectInfo", false, ...)
end

function Game.ClearVehicleSelectInfo(...)
	OutputCommand("ClearVehicleSelectInfo", false, ...)
end

function Game.AddFlyingActor(...)
	OutputCommand("AddFlyingActor", false, ...)
end

function Game.AddFlyingActorByLocator(...)
	OutputCommand("AddFlyingActorByLocator", false, ...)
end

function Game.AddBehaviour(...)
	OutputCommand("AddBehaviour", false, ...)
end

function Game.SetCollisionAttributes(...)
	OutputCommand("SetCollisionAttributes", false, ...)
end

function Game.AddSpawnPoint(...)
	OutputCommand("AddSpawnPoint", false, ...)
end

function Game.AddSpawnPointByLocatorScript(...)
	OutputCommand("AddSpawnPointByLocatorScript", false, ...)
end

function Game.SetProjectileStats(...)
	OutputCommand("SetProjectileStats", false, ...)
end

function Game.PreallocateActors(...)
	OutputCommand("PreallocateActors", false, ...)
end

function Game.SetActorRotationSpeed(...)
	OutputCommand("SetActorRotationSpeed", false, ...)
end

function Game.AddShield(...)
	OutputCommand("AddShield", false, ...)
end

function Game.ClearGagBindings(...)
	OutputCommand("ClearGagBindings", false, ...)
end

function Game.AddGagBinding(...)
	OutputCommand("AddGagBinding", false, ...)
end

function Game.GagBegin(...)
	OutputCommand("GagBegin", false, ...)
end

function Game.GagSetInterior(...)
	OutputCommand("GagSetInterior", false, ...)
end

function Game.GagSetCycle(...)
	OutputCommand("GagSetCycle", false, ...)
end

function Game.GagSetWeight(...)
	OutputCommand("GagSetWeight", false, ...)
end

function Game.GagSetSound(...)
	OutputCommand("GagSetSound", false, ...)
end

function Game.GagSetTrigger(...)
	OutputCommand("GagSetTrigger", false, ...)
end

function Game.GagPlayFMV(...)
	OutputCommand("GagPlayFMV", false, ...)
end

function Game.GagSetPosition(...)
	OutputCommand("GagSetPosition", false, ...)
end

function Game.GagSetRandom(...)
	OutputCommand("GagSetRandom", false, ...)
end

function Game.GagSetIntro(...)
	OutputCommand("GagSetIntro", false, ...)
end

function Game.GagSetOutro(...)
	OutputCommand("GagSetOutro", false, ...)
end

function Game.GagSetCameraShake(...)
	OutputCommand("GagSetCameraShake", false, ...)
end

function Game.GagSetCoins(...)
	OutputCommand("GagSetCoins", false, ...)
end

function Game.GagSetSparkle(...)
	OutputCommand("GagSetSparkle", false, ...)
end

function Game.GagSetAnimCollision(...)
	OutputCommand("GagSetAnimCollision", false, ...)
end

function Game.GagEnd(...)
	OutputCommand("GagEnd", false, ...)
end

function Game.GagSetLoadDistances(...)
	OutputCommand("GagSetLoadDistances", false, ...)
end

function Game.GagSetSoundLoadDistances(...)
	OutputCommand("GagSetSoundLoadDistances", false, ...)
end

function Game.GagSetPersist(...)
	OutputCommand("GagSetPersist", false, ...)
end

function Game.GagCheckCollCards(...)
	OutputCommand("GagCheckCollCards", false, ...)
end

function Game.GagCheckMovie(...)
	OutputCommand("GagCheckMovie", false, ...)
end
		
if IsHackLoaded("AdditionalScriptFunctionality") then		
	-- CON Commands
	function Game.AddVehicleCharacter(...)
		OutputCommand("AddVehicleCharacter", false, ...)
	end

	function Game.AddVehicleCharacterSuppressionCharacter(...)
		OutputCommand("AddVehicleCharacterSuppressionCharacter", false, ...)
	end

	function Game.SetConditionalParameter(...)
		OutputCommand("SetConditionalParameter", false, ...)
	end

	function Game.SetVehicleCharacterAnimation(...)
		OutputCommand("SetVehicleCharacterAnimation", false, ...)
	end

	function Game.SetVehicleCharacterJumpOut(...)
		OutputCommand("SetVehicleCharacterJumpOut", false, ...)
	end

	function Game.SetVehicleCharacterScale(...)
		OutputCommand("SetVehicleCharacterScale", false, ...)
	end

	function Game.SetVehicleCharacterVisible(...)
		OutputCommand("SetVehicleCharacterVisible", false, ...)
	end

	-- Level MFK Commands
	function Game.SetCarChangeHitAndRunChange(...)
		OutputCommand("SetCarChangeHitAndRunChange", false, ...)
	end

	function Game.SetHitAndRunDecayHitAndRun(...)
		OutputCommand("SetHitAndRunDecayHitAndRun", false, ...)
	end

	function Game.SetHitAndRunFine(...)
		OutputCommand("SetHitAndRunFine", false, ...)
	end

	function Game.AddParkedCar(...)
		OutputCommand("AddParkedCar", false, ...)
	end

	-- Mission MFK Commands
	function Game.SetHUDMapDrawable(...)
		OutputCommand("SetHUDMapDrawable", false, ...)
	end

	function Game.SetParkedCarsEnabled(...)
		OutputCommand("SetParkedCarsEnabled", false, ...)
	end

	function Game.SetPedsEnabled(...)
		OutputCommand("SetPedsEnabled", false, ...)
	end

	function Game.UseTrafficGroup(...)
		OutputCommand("UseTrafficGroup", false, ...)
	end

	-- Stage MFK Commands
	function Game.AddStageVehicleCharacter(...)
		OutputCommand("AddStageVehicleCharacter", false, ...)
	end

	function Game.DisableTrigger(...)
		OutputCommand("DisableTrigger", false, ...)
	end

	function Game.RemoveStageVehicleCharacter(...)
		OutputCommand("RemoveStageVehicleCharacter", false, ...)
	end

	function Game.ResetStageHitAndRun(...)
		OutputCommand("ResetStageHitAndRun", false, ...)
	end

	function Game.SetNoHitAndRunMusicForStage(...)
		OutputCommand("SetNoHitAndRunMusicForStage", false, ...)
	end

	function Game.SetStageAllowMissionCancel(...)
		OutputCommand("SetStageAllowMissionCancel", false, ...)
	end

	function Game.SetStageCarChangeHitAndRunChange(...)
		OutputCommand("SetStageCarChangeHitAndRunChange", false, ...)
	end

	function Game.SetStageCharacterModel(...)
		OutputCommand("SetStageCharacterModel", false, ...)
	end

	function Game.SetStageHitAndRun(...)
		OutputCommand("SetStageHitAndRun", false, ...)
	end

	function Game.SetStageHitAndRunDecay(...)
		OutputCommand("SetStageHitAndRunDecay", false, ...)
	end

	function Game.SetStageHitAndRunDecayHitAndRun(...)
		OutputCommand("SetStageHitAndRunDecayHitAndRun", false, ...)
	end

	function Game.SetStageHitAndRunDecayInterior(...)
		OutputCommand("SetStageHitAndRunDecayInterior", false, ...)
	end

	function Game.SetStageHitAndRunFine(...)
		OutputCommand("SetStageHitAndRunFine", false, ...)
	end

	function Game.SetStageNumChaseCars(...)
		OutputCommand("SetStageNumChaseCars", false, ...)
	end

	function Game.SetStagePayout(...)
		OutputCommand("SetStagePayout", false, ...)
	end

	function Game.SetStageVehicleAllowSeatSlide(...)
		OutputCommand("SetStageVehicleAllowSeatSlide", false, ...)
	end

	function Game.SetStageVehicleCharacterAnimation(...)
		OutputCommand("SetStageVehicleCharacterAnimation", false, ...)
	end

	function Game.SetStageVehicleCharacterJumpOut(...)
		OutputCommand("SetStageVehicleCharacterJumpOut", false, ...)
	end

	function Game.SetStageVehicleCharacterScale(...)
		OutputCommand("SetStageVehicleCharacterScale", false, ...)
	end

	function Game.SetStageVehicleCharacterVisible(...)
		OutputCommand("SetStageVehicleCharacterVisible", false, ...)
	end

	function Game.SetStageVehicleNoDestroyedJumpOut(...)
		OutputCommand("SetStageVehicleNoDestroyedJumpOut", false, ...)
	end

	function Game.SetStageVehicleReset(...)
		OutputCommand("SetStageVehicleReset", false, ...)
	end

	-- Objective MFK Commands
	function Game.AddObjTargetModel(...)
		OutputCommand("AddObjTargetModel", false, ...)
	end

	function Game.SetCollectibleSoundEffect(...)
		OutputCommand("SetCollectibleSoundEffect", false, ...)
	end

	function Game.SetObjCameraName(...)
		OutputCommand("SetObjCameraName", false, ...)
	end

	function Game.SetObjMulticontName(...)
		OutputCommand("SetObjMulticontName", false, ...)
	end

	function Game.SetObjCanSkip(...)
		OutputCommand("SetObjCanSkip", false, ...)
	end

	function Game.SetObjDecay(...)
		OutputCommand("SetObjDecay", false, ...)
	end

	function Game.SetObjExplosion(...)
		OutputCommand("SetObjExplosion", false, ...)
	end

	function Game.SetObjMessageIndex(...)
		OutputCommand("SetObjMessageIndex", false, ...)
	end

	function Game.SetObjNoLetterbox(...)
		OutputCommand("SetObjNoLetterbox", false, ...)
	end

	function Game.SetObjSound(...)
		OutputCommand("SetObjSound", false, ...)
	end

	function Game.SetObjSpeedKMH(...)
		OutputCommand("SetObjSpeedKMH", false, ...)
	end

	function Game.SetObjThreshold(...)
		OutputCommand("SetObjThreshold", false, ...)
	end

	function Game.SetObjTotal(...)
		OutputCommand("SetObjTotal", false, ...)
	end

	function Game.SetObjTrigger(...)
		OutputCommand("SetObjTrigger", false, ...)
	end

	function Game.SetObjUseCameraPosition(...)
		OutputCommand("SetObjUseCameraPosition", false, ...)
	end

	-- Condition MFK Commands
	function Game.AddCondTargetModel(...)
		OutputCommand("AddCondTargetModel", false, ...)
	end

	function Game.SetCondDecay(...)
		OutputCommand("SetCondDecay", false, ...)
	end

	function Game.SetCondDelay(...)
		OutputCommand("SetCondDelay", false, ...)
	end

	function Game.SetCondDisplay(...)
		OutputCommand("SetCondDisplay", false, ...)
	end

	function Game.SetCondMessageIndex(...)
		OutputCommand("SetCondMessageIndex", false, ...)
	end

	function Game.SetCondSound(...)
		OutputCommand("SetCondSound", false, ...)
	end

	function Game.SetCondSpeedRangeKMH(...)
		OutputCommand("SetCondSpeedRangeKMH", false, ...)
	end

	function Game.SetCondThreshold(...)
		OutputCommand("SetCondThreshold", false, ...)
	end

	function Game.SetCondTotal(...)
		OutputCommand("SetCondTotal", false, ...)
	end

	function Game.SetCondTrigger(...)
		OutputCommand("SetCondTrigger", false, ...)
	end

	-- 1.25
	function Game.CHECKPOINT_HERE(...)
		OutputCommand("CHECKPOINT_HERE", false, ...)
	end

	function Game.IfCurrentCheckpoint(...)
		OutputCommand("IfCurrentCheckpoint", true, ...)
	end

	function Game.EndIf()
		Output("}")
	end

	function Game.SetCheckpointDynaLoadData(...)
		OutputCommand("SetCheckpointDynaLoadData", false, ...)
	end

	function Game.SetCheckpointPedGroup(...)
		OutputCommand("SetCheckpointPedGroup", false, ...)
	end

	function Game.SetCheckpointResetPlayerInCar(...)
		OutputCommand("SetCheckpointResetPlayerInCar", false, ...)
	end

	function Game.SetCheckpointResetPlayerOutCar(...)
		OutputCommand("SetCheckpointResetPlayerOutCar", false, ...)
	end

	function Game.SetCheckpointTrafficGroup(...)
		OutputCommand("SetCheckpointTrafficGroup", false, ...)
	end
end