 -- Easy to Destroy
-- Global AI vehicle file

Game.SetMass(1500.0)
Game.SetGasScale(({ 5.0, 6.0 })[Settings.MissionDifficulty])
Game.SetSlipGasScale(7.0)
Game.SetBrakeScale(10.0)
Game.SetTopSpeedKmh(({ 70.0, 80.0 })[Settings.MissionDifficulty])
Game.SetMaxWheelTurnAngle(35.0)
Game.SetHighSpeedSteeringDrop(0.3) -- was 1.0
Game.SetTireGrip(30.0)
Game.SetNormalSteering(110.0)
Game.SetSlipSteering(65.0)
Game.SetEBrakeEffect(0.35) -- ,3?

Game.SetSlipSteeringNoEBrake(65.0)
Game.SetSlipEffectNoEBrake(0.01)

Game.SetCMOffsetX(0.0)
Game.SetCMOffsetY(-0.1)
Game.SetCMOffsetZ(0.2) -- .1 or .2

Game.SetSuspensionLimit(0.7)
Game.SetSpringK(0.4)
Game.SetDamperC(0.3)

Game.SetSuspensionYOffset(0.0)

Game.SetHitPoints(({ 2.5, 5.0 })[Settings.MissionDifficulty])

Game.SetShadowAdjustments(-0.1, 0.45, -0.1, 0.0, -0.1, 0.0, -0.1, -0.35)