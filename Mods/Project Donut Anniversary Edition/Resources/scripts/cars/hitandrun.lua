local LevelStats =
{
	-- Level 1
	{
		HitPoints = 0.5,
		GasScale = 10.0,
		SlipGasScale = 10.0,
		TopSpeed = 140.0,
	},

	-- Level 2
	{
		HitPoints = 1.5,
		GasScale = 12.0,
		SlipGasScale = 10.0,
		TopSpeed = 150.0,
	},

	-- Level 3
	{
		HitPoints = 1.5,
		GasScale = 12.0,
		SlipGasScale = 10.0,
		TopSpeed = 160.0,
	},

	-- Level 4
	{
		HitPoints = 2.5,
		GasScale = 12.0,
		SlipGasScale = 10.0,
		TopSpeed = 170.0,
	},

	-- Level 5
	{
		HitPoints = 2.5,
		GasScale = 14.0,
		SlipGasScale = 10.0,
		TopSpeed = 180.0,
	},

	-- Level 6
	{
		HitPoints = 2.5,
		GasScale = 14.0,
		SlipGasScale = 10.0,
		TopSpeed = 180.0,
	},

	-- Level 7
	{
		HitPoints = 2.5,
		GasScale = 14.0,
		SlipGasScale = 11.0,
		TopSpeed = 180.0,
	},
}

local Stats = LevelStats[Settings.HitAndRunCarStats]

Game.SetMass(1750.0)
Game.SetGasScale(Stats.GasScale)
Game.SetSlipGasScale(Stats.SlipGasScale)
Game.SetBrakeScale(8.0)
Game.SetTopSpeedKmh(Stats.TopSpeed)
Game.SetMaxWheelTurnAngle(35.0)
Game.SetHighSpeedSteeringDrop(0.3)
Game.SetTireGrip(30.0)
Game.SetNormalSteering(110.0)
Game.SetSlipSteering(65.0)
Game.SetEBrakeEffect(0.35)

Game.SetSlipSteeringNoEBrake(65.0)
Game.SetSlipEffectNoEBrake(0.01)

Game.SetCMOffsetX(0.0)
Game.SetCMOffsetY(-0.1)
Game.SetCMOffsetZ(0.2)

Game.SetSuspensionLimit(0.7)
Game.SetSpringK(0.4)
Game.SetDamperC(0.3)

Game.SetSuspensionYOffset(0.0)

Game.SetHitPoints(Stats.HitPoints)

if Settings.HitAndRunCarModel == 1 then
	-- Hearse
	Game.SetShadowAdjustments(-0.3, -0.1, -0.3, 0.0, -0.3, 0.0, -0.3, -0.2)
elseif Settings.HitAndRunCarModel == 2 then
	-- Hijacked Alien Police Car
	Game.SetShadowAdjustments(-0.1, 0.0, -0.1, 0.0, -0.1, 0.0, -0.1, -0.1)
elseif Settings.HitAndRunCarModel == 3 then
	-- Mini UFO
	-- 	No Shadow
elseif Settings.HitAndRunCarModel == 4 then
	-- Standard Police Car
	Game.SetShadowAdjustments(-0.1, 0.0, -0.1, 0.0, -0.1, 0.0, -0.1, -0.1)
elseif Settings.HitAndRunCarModel == 5 then
	-- Wasp Bike
	Game.SetShadowAdjustments(-1, -1.6, -1, 0.05, -1, 0.15, -1, 1.7)
end