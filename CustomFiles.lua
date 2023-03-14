--
-- Imports
--

dofile(GetModPath() .. "/Resources/modules/Game.lua")

--
-- Globals
--

Settings = GetSettings()

HitAndRunCarModels =
{
	"cHears",
	"hjackpol",
	"cPolice",
}

HitAndRunCarModel = HitAndRunCarModels[Settings.HitAndRunCarModel]