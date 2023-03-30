-- Easy to Chase
-- Global AI vehicle file

Game.SetMass(1200.0)
Game.SetGasScale(({ 6.0, 8.0 })[Settings.MissionDifficulty])
Game.SetSlipGasScale(({ 8.0, 9.0 })[Settings.MissionDifficulty])
Game.SetBrakeScale(20.0)
Game.SetTopSpeedKmh(145.0) -- was 140
Game.SetMaxWheelTurnAngle(70.0)
Game.SetHighSpeedSteeringDrop(0.3) -- was 1.0
Game.SetTireGrip(90.0)
Game.SetNormalSteering(200.0)
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

Game.SetHitPoints(100.0)

Game.SetShadowAdjustments(-0.15, -0.3, -0.15, 0.0, -0.15, 0.0, -0.15, 0.2)