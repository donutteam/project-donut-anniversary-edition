-- SKinner AI L1M1

Game.SetMass(1000.0);
Game.SetGasScale(8);
Game.SetSlipGasScale(8);
Game.SetBrakeScale(6.0);
Game.SetTopSpeedKmh(80);
Game.SetMaxWheelTurnAngle(35.0);
Game.SetHighSpeedSteeringDrop(0.3); -- was 1.0
Game.SetTireGrip(30.0);
Game.SetNormalSteering(110.0);
Game.SetSlipSteering(65.0);
Game.SetEBrakeEffect(0.35); -- ,3?

Game.SetSlipSteeringNoEBrake(65.0);
Game.SetSlipEffectNoEBrake(0.01);

Game.SetCMOffsetX(0.0);
Game.SetCMOffsetY(-0.1);
Game.SetCMOffsetZ(0.2); -- .1 or .2

Game.SetSuspensionLimit(0.7);
Game.SetSpringK(0.4);
Game.SetDamperC(0.3);

Game.SetSuspensionYOffset(0.0);

Game.SetHitPoints(({ 0.55, 1.1 })[Settings.MissionDifficulty]);

Game.SetCharacterScale(0.9);

Game.SetShadowAdjustments(-0.3, -0.2, -0.3, 0.0, -0.3, 0.0, -0.3, 0.0);