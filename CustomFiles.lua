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

local HitAndRunCarModels =
{
	"cHears",
	"hjackpol",
	"miniufo",
	"cPolice",
}

HitAndRunCarModel = HitAndRunCarModels[Settings.HitAndRunCarModel]

RadarTopSprites = {}

local RadarTopSpritesP3DFile = P3D.P3DFile(GetModPath() .. "/Resources/art/frontend/sprites/radartop.p3d")

for chunk in RadarTopSpritesP3DFile:GetChunks(P3D.Identifiers.Sprite) do
	local originalName = chunk.Name

	chunk.Name = "radartop.png"

    RadarTopSprites[originalName] = chunk
end