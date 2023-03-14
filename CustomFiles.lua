--
-- Imports
--

dofile(GetModPath() .. "/Resources/modules/Game.lua")

--
-- Globals
--

Settings = GetSettings()

HitAndRunCarCONs =
{
	"Pursuit\\L1cop.con",
	"Pursuit\\L2cop.con",
	"Pursuit\\L3cop.con",
	"Pursuit\\L4cop.con",
	"Pursuit\\L5cop.con",
	"Pursuit\\L6cop.con",
	"Pursuit\\L7cop.con",
}

HitAndRunCarCON = HitAndRunCarCONs[Settings.HitAndRunCarCON]

HitAndRunCarModels =
{
	"cHears",
	"hjackpol",
	"cPolice",
}

HitAndRunCarModel = HitAndRunCarModels[Settings.HitAndRunCarModel]