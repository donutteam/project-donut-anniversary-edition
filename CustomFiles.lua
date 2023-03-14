--
-- Imports
--

dofile(GetModPath() .. "/Resources/modules/Game.lua")
dofile(GetModPath() .. "/Resources/modules/P3D2.lua")

P3D.LoadChunks(GetModPath() .. "/Resources/modules/P3DChunks")

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