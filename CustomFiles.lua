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
	"miniufo",
	"cPolice",
}

HitAndRunCarModel = HitAndRunCarModels[Settings.HitAndRunCarModel]