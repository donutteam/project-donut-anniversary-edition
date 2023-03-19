--
-- Local Functions
--

local function GetNamedChunksFromP3D(p3dFilePath, table, chunkIdentifier, newName)
    local p3dFile = P3D.P3DFile(p3dFilePath)

    for chunk in p3dFile:GetChunks(chunkIdentifier) do
        local originalName = chunk.Name

		if (newName ~= nil) then
			chunk.Name = newName
		end

        table[originalName] = chunk
    end
end

--
-- P3D Replacements
--

local P3DModifications =
	{
		Frontend_Bootup =
			{
				ReplacedChunks = 
					{
						[P3D.Identifiers.Sprite] = {}
					},
			},
		Frontend_Ingame =
			{
				ReplacedChunks = 
					{
						[P3D.Identifiers.Sprite] = {}
					},
			},

		Map_L1_TERRA =
			{
				ReplacedChunks =
					{
						[P3D.Identifiers.Texture] = {}
					},
			},

		Map_L1_R6 =
			{
				ReplacedChunks =
					{
						[P3D.Identifiers.Texture] = {}
					},
			},
	}

--
-- Error Icon Style Setting
--

local ErrorSprites = {}

GetNamedChunksFromP3D(GetModPath() .. "/Resources/art/frontend/sprites/error.p3d", ErrorSprites, P3D.Identifiers.Sprite, "error.png")

if Settings.ErrorIconStyle == 1 then
	P3DModifications["Frontend_Bootup"].ReplacedChunks[P3D.Identifiers.Sprite]["error.png"] = ErrorSprites["error_pink_donut.png"]
	P3DModifications["Frontend_Ingame"].ReplacedChunks[P3D.Identifiers.Sprite]["error.png"] = ErrorSprites["error_pink_donut.png"]
elseif Settings.ErrorIconStyle == 2 then
	-- TODO: Replace with Tyler's Icon
elseif Settings.ErrorIconStyle == 3 then
	-- Do Nothing
end

--
-- Level Theme Setting
--

if Settings.LevelTheme == 2 then
	local Textures = {}

	GetNamedChunksFromP3D(GetModPath() .. "/Resources/art/textures/level-themes/autumn.p3d", Textures, P3D.Identifiers.Texture)

	for textureName, texture in pairs(Textures) do
		P3DModifications.Map_L1_TERRA.ReplacedChunks[P3D.Identifiers.Texture][textureName] = texture
	end
end

--
-- Project Donut Billboard
--

local BillboardSignTextures = {}

GetNamedChunksFromP3D(GetModPath() .. "/Resources/art/textures/billboard-signs.p3d", BillboardSignTextures, P3D.Identifiers.Texture)

local DontEatBeefTexture = BillboardSignTextures["project_donut.png"]:Clone()

DontEatBeefTexture.Name = "Don't eat beef.bmp"

P3DModifications["Map_L1_R6"].ReplacedChunks[P3D.Identifiers.Texture]["Don't eat beef.bmp"] = DontEatBeefTexture

local EatDeerTexture = BillboardSignTextures["project_donut.png"]:Clone()

EatDeerTexture.Name = "Eat deer.bmp"

P3DModifications["Map_L1_R6"].ReplacedChunks[P3D.Identifiers.Texture]["Eat deer.bmp"] = EatDeerTexture

--
-- Radar Style Setting
--

local RadarSprites = {}

GetNamedChunksFromP3D(GetModPath() .. "/Resources/art/frontend/sprites/radar.p3d", RadarSprites, P3D.Identifiers.Sprite, "radar.png")

if Settings.RadarStyle == 1 then
	P3DModifications["Frontend_Ingame"].ReplacedChunks[P3D.Identifiers.Sprite]["radar.png"] = RadarSprites["radar_blue.png"]
elseif Settings.RadarStyle == 2 then
	-- Do Nothing
elseif Settings.RadarStyle == 3 then
	P3DModifications["Frontend_Ingame"].ReplacedChunks[P3D.Identifiers.Sprite]["radar.png"] = RadarSprites["radar_red.png"]
end

--
-- Radar Top Style Setting
--

local RadarTopSprites = {}

GetNamedChunksFromP3D(GetModPath() .. "/Resources/art/frontend/sprites/radartop.p3d", RadarTopSprites, P3D.Identifiers.Sprite, "radartop.png")

if Settings.RadarTopStyle == 1 then
	-- Do Nothing
elseif Settings.RadarTopStyle == 2 then
	P3DModifications["Frontend_Ingame"].ReplacedChunks[P3D.Identifiers.Sprite]["radartop.png"] = RadarTopSprites["radartop_partially_obscured.png"]
elseif Settings.RadarTopStyle == 3 then
	P3DModifications["Frontend_Ingame"].ReplacedChunks[P3D.Identifiers.Sprite]["radartop.png"] = RadarTopSprites["radartop_fully_obscured.png"]
end

--
-- Global Functions
--

function InjectP3DModifications(filePath, modificationsKey)
	--
	-- Load P3D File
	--

	local P3DFile = P3D.P3DFile(filePath)

	--
	-- Get Modifications
	--

	local p3dModifications = P3DModifications[modificationsKey]

	if p3dModifications == nil then
		return
	end

	--
	-- Replace Chunks
	--

	for index, chunk in P3DFile:GetChunksIndexed() do
		local replacedChunks = p3dModifications.ReplacedChunks[chunk.Identifier]

		if replacedChunks ~= nil then
			local replacementChunk = replacedChunks[chunk.Name]

			if replacementChunk ~= nil then
				P3DFile.Chunks[index] = replacementChunk
			end
		end
	end

	--
	-- Output P3D Data
	--

	P3DFile:Output()
end