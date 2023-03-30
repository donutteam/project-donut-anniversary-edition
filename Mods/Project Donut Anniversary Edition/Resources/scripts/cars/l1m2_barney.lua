-- AI  homer_v

Game.SetMass(1500.0)
Game.SetGasScale(({ 10.0, 12.0 })[Settings.MissionDifficulty]) --Acceleration
Game.SetSlipGasScale(({ 10.0, 12.0 })[Settings.MissionDifficulty]) --Turning(?) Acceleration
Game.SetBrakeScale(10.0)
Game.SetTopSpeedKmh(120.0)
Game.SetMaxWheelTurnAngle(30.0)
Game.SetHighSpeedSteeringDrop(1.6) -- was 1.0
Game.SetTireGrip(500.0)
Game.SetNormalSteering(350.0)
Game.SetSlipSteering(290.0)
Game.SetEBrakeEffect(0.7) -- ,3?

Game.SetSlipSteeringNoEBrake(65.0)
Game.SetSlipEffectNoEBrake(0.01)

Game.SetCMOffsetX(0.0)
Game.SetCMOffsetY(-0.3)
Game.SetCMOffsetZ(0.5) -- .1 or .2

Game.SetSuspensionLimit(0.6)
Game.SetSpringK(0.4)
Game.SetDamperC(0.3)

Game.SetSuspensionYOffset(0.0)

Game.SetHitPoints(30.0)

Game.SetShadowAdjustments(-0.3, -0.2, -0.3, 0.0, -0.3, 0.0, -0.3, 0.1)