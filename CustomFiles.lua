--
-- Imports
--

dofile(GetModPath() .. "/Resources/modules/Game.lua")
dofile(GetModPath() .. "/Resources/modules/P3D2.lua")

P3D.LoadChunks(GetModPath() .. "/Resources/modules/P3DChunks")

--
-- Get Settings
--

Settings = GetSettings()

--
-- Pick Hit & Run Car Model
--

local HitAndRunCarModels =
{
	"cHears",
	"hjackpol",
	"miniufo",
	"cPolice",
}

HitAndRunCarModel = HitAndRunCarModels[Settings.HitAndRunCarModel]

--
-- Load Alternate Sprites
--

local function LoadSprites(newName, p3dFilePath, sprites)
    local spritesP3DFile = P3D.P3DFile(p3dFilePath)

    for chunk in spritesP3DFile:GetChunks(P3D.Identifiers.Sprite) do
        local originalName = chunk.Name

        chunk.Name = newName

        sprites[originalName] = chunk
    end
end

ErrorSprites = {}
LoadSprites("error.png", GetModPath() .. "/Resources/art/frontend/sprites/error.p3d", ErrorSprites)

RadarSprites = {}
LoadSprites("radar.png", GetModPath() .. "/Resources/art/frontend/sprites/radar.p3d", RadarSprites)

RadarTopSprites = {}
LoadSprites("radartop.png", GetModPath() .. "/Resources/art/frontend/sprites/radartop.p3d",	RadarTopSprites)

--
-- P3D Replacements
--

P3DChunkReplacements =
{
	["art//frontend//scrooby//ingame.p3d"] =
	{
		["error.png"] = ErrorSprites["error_donut.png"],
	}
}

if Settings.RadarStyle == 2 then
	P3DChunkReplacements["art//frontend//scrooby//ingame.p3d"]["radar.png"] = RadarSprites["radar_blue.png"]
elseif Settings.RadarStyle == 3 then
	P3DChunkReplacements["art//frontend//scrooby//ingame.p3d"]["radar.png"] = RadarSprites["radar_red.png"]
end

if Settings.RadarTopStyle == 2 then
	P3DChunkReplacements["art//frontend//scrooby//ingame.p3d"]["radartop.png"] = RadarTopSprites["radartop_partially_obscured.png"]
elseif Settings.RadarTopStyle == 3 then
	P3DChunkReplacements["art//frontend//scrooby//ingame.p3d"]["radartop.png"] = RadarTopSprites["radartop_fully_obscured.png"]
end